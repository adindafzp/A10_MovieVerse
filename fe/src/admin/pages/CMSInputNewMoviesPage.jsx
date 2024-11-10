import {
  Form,
  Input,
  Button,
  DatePicker,
  Select,
  Checkbox,
  Row,
  Col,
  AutoComplete,
} from "antd";
import { useState, useEffect } from "react";
import axios from "axios";
import Swal from "sweetalert2";
import "../style/InputMoviesPage.css";
import { URL } from "../../utils";

const { Option } = Select;

const CMSInputNewMovies = () => {
  const [form] = Form.useForm();
  const [countries, setCountries] = useState([]);
  const [genres, setGenres] = useState([]);
  const [suggestedActors, setSuggestedActors] = useState([]);
  const [selectedActors, setSelectedActors] = useState([]);
  const [suggestedDirectors, setSuggestedDirectors] = useState([]);
  const [selectedDirector, setSelectedDirector] = useState(null);
  const [previewPoster, setPreviewPoster] = useState("");
  const [actorInput, setActorInput] = useState("");
  const [selectedGenres, setSelectedGenres] = useState([]);
  const [trailerLink, setTrailerLink] = useState("");
  const [posterLink, setPosterLink] = useState("");

  useEffect(() => {
    const fetchData = async () => {
      try {
        const [countriesResponse, genresResponse, actorsResponse] =
          await Promise.all([
            axios.get(`${URL}/countries`),
            axios.get(`${URL}/genres`),
            axios.get(`${URL}/actors`),
          ]);

        // Add console.log to debug the response
        console.log("Countries response:", countriesResponse.data);

        // Handle countries data more safely
        const countriesData =
          countriesResponse.data.countries || countriesResponse.data || [];
        setCountries(Array.isArray(countriesData) ? countriesData : []);

        setGenres(genresResponse.data.genres || []);
        setSuggestedActors(actorsResponse.data.actors || []);
      } catch (error) {
        console.error("Error fetching data:", error);
        Swal.fire("Error", "Failed to fetch data from backend", "error");
      }
    };

    fetchData();
  }, []);

  useEffect(() => {
    const fetchApprovedMovies = async () => {
      try {
        const response = await axios.get(`${URL}/movies/approved`);
        setMovies(response.data);
      } catch (error) {
        console.error("Error fetching approved movies:", error);
        message.error("Failed to fetch approved movies");
      }
    };
  
    fetchApprovedMovies();
  }, []);
  
  // Autocomplete for Actors
  const handleActorSearch = async (input) => {
    if (input.length > 0) {
      const response = await axios.get(`${URL}/actors`, {
        params: { search: input },
      });
      setSuggestedActors(response.data.actors || []);
    } else {
      setSuggestedActors([]);
    }
  };

  const handleActorSelect = (value, option) => {
    const selected = suggestedActors.find((actor) => actor.id === option.key);
    if (selected && !selectedActors.some((actor) => actor.id === selected.id)) {
      setSelectedActors([...selectedActors, selected]);
      setActorInput("");
      form.setFieldsValue({ actorInput: "" });
    }
  };

  // Autocomplete for Director
  const handleDirectorSearch = async (input) => {
    if (input.length > 0) {
      try {
        const response = await axios.get(`${URL}/directors`, {
          params: { search: input },
        });
        const directors = response.data || [];

        // Debug respons dari backend
        console.log("Director response:", directors);

        // Format data untuk AutoComplete
        const formattedDirectors = directors.map((director) => ({
          value: director.id, // Ini adalah ID yang akan dikirimkan
          label: director.name, // Ini adalah nama yang ditampilkan ke user
        }));
        setSuggestedDirectors(formattedDirectors);
      } catch (error) {
        console.error("Error fetching directors:", error);
        Swal.fire("Error", "Failed to fetch directors", "error");
      }
    } else {
      setSuggestedDirectors([]);
    }
  };

  const handleDirectorSelect = (value) => {
    const selected = suggestedDirectors.find(
      (director) => director.value === value
    );
    if (selected) {
      setSelectedDirector(selected);
      form.setFieldsValue({ directorId: selected.value }); // Mengirim ID
      console.log("Selected Director ID:", selected.value); // Debugging
    }
  };

  const handleGenreChange = (genreId, checked) => {
    setSelectedGenres((prevGenres) => {
      if (checked) {
        return [...prevGenres, genreId];
      } else {
        return prevGenres.filter((id) => id !== genreId);
      }
    });
  };

  const handlePosterPreview = (e) => {
    const url = e.target.value;
    if (url.match(/(https?:\/\/.*\.(?:png|jpg|jpeg|gif))/i)) {
      setPreviewPoster(url);
    } else {
      setPreviewPoster("");
    }
  };

  const handleSave = async (values) => {
    console.log("Form values:", values);

    // Ambil nilai `selectedDirector`, `posterLink`, dan `trailerLink`
    const formData = {
      title: values.title,
      release_date: values.releaseDate?.format("YYYY-MM-DD"),
      countryId: values.countryId, // Mengirim countryId
      synopsis: values.synopsis,
      genres: selectedGenres,
      directorId: selectedDirector?.value, // Mengirim directorId
      actors: selectedActors.map((actor) => actor.id),
      poster_url: posterLink,
      trailer_url: trailerLink,
      rating: parseFloat(values.rating),
      approval_status: 0,
    };

    // Validasi tambahan
    if (!formData.directorId) {
      Swal.fire("Error", "Please select a director", "error");
      return;
    }

    if (!trailerLink) {
      Swal.fire("Error", "'Trailer URL' is required", "error");
      return;
    }

    if (!formData.poster_url || !formData.trailer_url || !formData.countryId) {
      Swal.fire("Error", "Please fill in all required fields", "error");
      return;
    }

    console.log("FormData to submit:", formData);

    try {
      const token = localStorage.getItem("token");
      if (!token) {
        Swal.fire("Error", "No token found. Please login again.", "error");
        return;
      }

      await axios.post(`${URL}/admin/movie/add`, formData, {
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${token.trim()}`,
        },
      });

      Swal.fire("Success", "Movie added successfully!", "success");
      form.resetFields();
    } catch (error) {
      console.error("Error submitting form:", error.response?.data);
      Swal.fire(
        "Error",
        error.response?.data?.message || "Failed to add movie",
        "error"
      );
    }
  };

  return (
    <div className="input-movies-page">
      <h2>Input New Movie</h2>
      <Form form={form} layout="vertical" onFinish={handleSave}>
        <Form.Item label="Title" name="title" rules={[{ required: true }]}>
          <Input />
        </Form.Item>

        <Row gutter={16}>
          <Col span={12}>
            <Form.Item
              label="Release Date"
              name="releaseDate"
              rules={[{ required: true }]}
            >
              <DatePicker format="DD/MM/YYYY" />
            </Form.Item>
          </Col>
          <Col span={12}>
            <Form.Item
              label="Rating (1-10)"
              name="rating"
              rules={[{ required: true }]}
            >
              <Input type="number" min={1} max={10} />
            </Form.Item>
          </Col>
        </Row>

        <Form.Item
          label="Country"
          name="countryId"
          rules={[{ required: true }]}
        >
          <Select
            placeholder="Select Country"
            options={countries.map((country) => ({
              label: country.name, // Menampilkan nama ke user
              value: country.countryId, // Mengirim ID ke backend
            }))}
            onChange={(value) => {
              form.setFieldsValue({ countryId: value });
              console.log("Selected Country ID:", value); // Debugging
            }}
          />
        </Form.Item>

        <Form.Item label="Genres" name="genres" rules={[{ required: true }]}>
          <div className="genre-checkbox-container-cms">
            {genres.map((genre) => (
              <div key={genre.id} className="genre-checkbox-item-cms">
                <Checkbox
                  checked={selectedGenres.includes(genre.id)}
                  onChange={(e) =>
                    handleGenreChange(genre.id, e.target.checked)
                  }
                >
                  {genre.name}
                </Checkbox>
              </div>
            ))}
          </div>
        </Form.Item>

        <Form.Item
          label="Synopsis"
          name="synopsis"
          rules={[{ required: true }]}
        >
          <Input.TextArea rows={4} />
        </Form.Item>

        <Form.Item
          label="Director"
          name="directorId"
          rules={[{ required: true }]}
        >
          <AutoComplete
            options={suggestedDirectors}
            onSearch={handleDirectorSearch}
            onSelect={handleDirectorSelect}
            placeholder="Select a director"
            allowClear
          />
        </Form.Item>

        <Form.Item label="Actors">
          <AutoComplete
            value={actorInput}
            options={suggestedActors.map((actor) => ({
              value: actor.name,
              key: actor.id,
            }))}
            onSearch={handleActorSearch}
            onSelect={handleActorSelect}
            onChange={(value) => setActorInput(value)} // Mengatur state saat input berubah
            placeholder="Type actor's name"
          />
        </Form.Item>

        <div className="selected-actors-list">
          {selectedActors.map((actor) => (
            <div key={actor.id} className="selected-actor-item">
              <img src={actor.image} alt={actor.name} className="actor-photo" />
              <button
                className="remove-btn"
                onClick={() =>
                  setSelectedActors((prev) =>
                    prev.filter((a) => a.id !== actor.id)
                  )
                }
              >
                ×
              </button>
            </div>
          ))}
        </div>

        <Form.Item
          label="Trailer URL"
          name="trailerLink"
          rules={[{ required: true, message: "'Trailer URL' is required" }]}
        >
          <Input
            value={trailerLink}
            onChange={(e) => {
              setTrailerLink(e.target.value);
              form.setFieldsValue({ trailerLink: e.target.value });
            }}
          />
        </Form.Item>

        <Form.Item
          label="Poster URL"
          name="poster"
          rules={[{ required: true }]}
        >
          <Input
            value={posterLink}
            onChange={(e) => {
              setPosterLink(e.target.value);
              setPreviewPoster(e.target.value);
            }}
          />
        </Form.Item>

        <Button type="primary" htmlType="submit">
          Submit
        </Button>
      </Form>
    </div>
  );
};

export default CMSInputNewMovies;
