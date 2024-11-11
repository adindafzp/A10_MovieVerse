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
  const [trailerLinks, setTrailerLinks] = useState([""]);
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

        setCountries(countriesResponse.data.countries || []);
        setGenres(genresResponse.data.genres || []);
        setSuggestedActors(actorsResponse.data.actors || []);
      } catch (error) {
        console.error("Error fetching data:", error);
        Swal.fire("Error", "Failed to fetch data from backend", "error");
      }
    };

    fetchData();
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
        const formattedDirectors = directors.map((director) => ({
          value: director.id,
          label: director.name,
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
      form.setFieldsValue({ directorId: selected.value });
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
    setPosterLink(url);
    if (url.match(/(https?:\/\/.*\.(?:png|jpg|jpeg|gif))/i)) {
      setPreviewPoster(url);
    } else {
      setPreviewPoster("");
    }
  };

  const handleTrailerLinkChange = (index, value) => {
    const updatedLinks = [...trailerLinks];
    updatedLinks[index] = value;
    setTrailerLinks(updatedLinks);
  };

  const addTrailerLinkField = () => {
    setTrailerLinks([...trailerLinks, ""]);
  };

  const removeTrailerLinkField = (index) => {
    const updatedLinks = trailerLinks.filter((_, i) => i !== index);
    setTrailerLinks(updatedLinks);
  };

  const handleSave = async (values) => {
    const formData = {
      title: values.title,
      release_date: values.releaseDate?.format("YYYY-MM-DD"),
      countryId: values.countryId,
      synopsis: values.synopsis,
      genres: selectedGenres,
      directorId: selectedDirector?.value,
      actors: selectedActors.map((actor) => actor.id),
      poster_url: posterLink,
      trailer_urls: trailerLinks, // Mengirim sebagai array sesuai kebutuhan controller
      rating: parseFloat(values.rating),
      approval_status: 1,
    };

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
              <DatePicker format="YYYY-MM-DD" />
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
              label: country.name,
              value: country.countryId,
            }))}
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
            onChange={(value) => setActorInput(value)}
            placeholder="Type actor's name"
          />
        </Form.Item>

        <div className="selected-actors-list">
          {selectedActors.map((actor) => (
            <div key={actor.id} className="selected-actor-item">
              <span>{actor.name}</span>
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

        <Form.Item label="Trailer URLs">
          {trailerLinks.map((link, index) => (
            <div key={index} style={{ display: "flex", alignItems: "center" }}>
              <Input
                placeholder="Enter trailer URL"
                value={link}
                onChange={(e) => handleTrailerLinkChange(index, e.target.value)}
                style={{ flex: 1, marginRight: 8 }}
              />
              {index > 0 && (
                <Button
                  onClick={() => removeTrailerLinkField(index)}
                  danger
                  type="text"
                >
                  Remove
                </Button>
              )}
            </div>
          ))}
          <Button onClick={addTrailerLinkField} type="dashed" style={{ marginTop: 8 }}>
            Add Trailer Link
          </Button>
        </Form.Item>

        <Form.Item
          label="Poster URL"
          name="poster"
          rules={[{ required: true, message: "'Poster URL' is required" }]}
        >
          <Input
            onChange={(e) => {
              const url = e.target.value;
              setPosterLink(url);
              form.setFieldsValue({ poster: url });
              handlePosterPreview(e);
            }}
            placeholder="Enter poster URL"
          />
          {previewPoster && (
            <img
              src={previewPoster}
              alt="Poster Preview"
              style={{ maxWidth: "100%", marginTop: "10px" }}
            />
          )}
        </Form.Item>

        <Button type="primary" htmlType="submit">
          Submit
        </Button>
      </Form>
    </div>
  );
};

export default CMSInputNewMovies;
