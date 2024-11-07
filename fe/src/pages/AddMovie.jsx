import { useState } from "react";
import axios from "axios"; // Import Axios
import { Container, Row, Col, Form, Button } from "react-bootstrap";
import "../styles/AddMovie.css";
import { URL } from "../utils";

const AddMoviePage = () => {
  const [title, setTitle] = useState("");
  const [releaseDate, setReleaseDate] = useState("");
  const [country, setCountry] = useState("");
  const [synopsis, setSynopsis] = useState("");
  const [genres, setGenres] = useState([
    { id: 1, name: "Action" },
    { id: 2, name: "Drama" },
    { id: 3, name: "Comedy" },
    { id: 4, name: "Romance" },
    { id: 5, name: "Horror" },
  ]);
  const [selectedGenres, setSelectedGenres] = useState([]);
  const [director, setDirector] = useState("");
  const [trailer, setTrailer] = useState("");
  const [poster, setPoster] = useState(null);
  const [posterPreview, setPosterPreview] = useState(null);
  const [actors, setActors] = useState("");
  const [errors, setErrors] = useState({});

  const handleGenreChange = (genreId) => {
    setSelectedGenres((prevGenres) =>
      prevGenres.includes(genreId)
        ? prevGenres.filter((id) => id !== genreId)
        : [...prevGenres, genreId]
    );
  };

  const handlePosterChange = (e) => {
    const file = e.target.files[0];
    if (file && file.type.startsWith("image/")) {
      setPoster(file);
      setPosterPreview(URL.createObjectURL(file));
    } else {
      alert("Please select a valid image file");
    }
  };

  const validateForm = () => {
    const newErrors = {};
    if (!title) newErrors.title = "Title is required";
    if (!releaseDate) newErrors.releaseDate = "Release date is required";
    if (!country) newErrors.country = "Country is required";
    if (!synopsis) newErrors.synopsis = "Synopsis is required";
    setErrors(newErrors);
    return Object.keys(newErrors).length === 0;
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    if (validateForm()) {
      try {
        // Menyiapkan data untuk dikirim
        const formData = new FormData();
        formData.append("title", title);
        formData.append("year", releaseDate);
        formData.append("country", country);
        formData.append("synopsis", synopsis);
        formData.append(
          "genres",
          JSON.stringify(
            selectedGenres.map((id) => genres.find((g) => g.id === id).name)
          )
        );
        formData.append("actors", actors);
        formData.append("trailer", trailer);
        if (poster) formData.append("poster", poster); // Mengirim file poster

        // Mengirim request POST ke endpoint backend
        const response = await axios.post(`${URL}/movies/add`, formData, {
          headers: {
            "Content-Type": "multipart/form-data",
            Authorization: `Bearer ${localStorage.getItem("token")}`,
          },
        });

        console.log(response.data.message); // Tampilkan pesan sukses
        alert("Movie added successfully!");
        // Reset form atau lakukan tindakan lain jika perlu
      } catch (error) {
        console.error(
          "Error adding movie:",
          error.response ? error.response.data : error.message
        );
        alert("Failed to add movie");
      }
    }
  };

  return (
    <Container className="add-movie-page">
      <h2 className="add-movie-title text-center">Add New Movie</h2>
      <Form onSubmit={handleSubmit}>
        <Row className="mb-4">
          <Col md={6}>
            <Form.Group>
              <Form.Label>Title</Form.Label>
              <Form.Control
                type="text"
                placeholder="Enter title"
                value={title}
                onChange={(e) => setTitle(e.target.value)}
                className="form-input"
              />
              {errors.title && (
                <small className="text-danger">{errors.title}</small>
              )}
            </Form.Group>
          </Col>
          <Col md={6}>
            <Form.Group>
              <Form.Label>Release Date</Form.Label>
              <Form.Control
                type="date"
                value={releaseDate}
                onChange={(e) => setReleaseDate(e.target.value)}
                className="form-input"
              />
              {errors.releaseDate && (
                <small className="text-danger">{errors.releaseDate}</small>
              )}
            </Form.Group>
          </Col>
        </Row>

        <Row className="mb-4">
          <Col md={6}>
            <Form.Group>
              <Form.Label>Country</Form.Label>
              <Form.Control
                type="text"
                placeholder="Enter Country"
                value={country}
                onChange={(e) => setCountry(e.target.value)}
                className="form-input"
              />
              {errors.country && (
                <small className="text-danger">{errors.country}</small>
              )}
            </Form.Group>
          </Col>
          <Col md={6}>
            <Form.Group>
              <Form.Label>Director</Form.Label>
              <Form.Control
                type="text"
                placeholder="Enter director"
                value={director}
                onChange={(e) => setDirector(e.target.value)}
                className="form-input"
              />
            </Form.Group>
          </Col>
        </Row>

        <Form.Group className="mb-4">
          <Form.Label>Actors</Form.Label>
          <Form.Control
            type="text"
            placeholder="Enter actor names separated by commas"
            value={actors}
            onChange={(e) => setActors(e.target.value)}
            className="form-input"
          />
          <Form.Text className="text-muted">
            Example: Robert Downey Jr., Chris Evans, Scarlett Johansson
          </Form.Text>
        </Form.Group>

        <Form.Group className="mb-4">
          <Form.Label>Synopsis</Form.Label>
          <Form.Control
            as="textarea"
            rows={3}
            placeholder="Enter synopsis"
            value={synopsis}
            onChange={(e) => setSynopsis(e.target.value)}
            className="form-input"
          />
          {errors.synopsis && (
            <small className="text-danger">{errors.synopsis}</small>
          )}
        </Form.Group>

        <Form.Group className="mb-4">
          <Form.Label>Genres</Form.Label>
          <div className="d-flex flex-wrap">
            {Array.isArray(genres) &&
              genres.map((genre) => (
                <Form.Check
                  key={genre.id}
                  type="checkbox"
                  label={genre.name}
                  checked={selectedGenres.includes(genre.id)}
                  onChange={() => handleGenreChange(genre.id)}
                  className="mr-3 mb-2 form-checkbox"
                />
              ))}
          </div>
        </Form.Group>

        <Row className="mb-4">
          <Col md={6}>
            <Form.Group>
              <Form.Label>Trailer Link</Form.Label>
              <Form.Control
                type="text"
                placeholder="Enter trailer link"
                value={trailer}
                onChange={(e) => setTrailer(e.target.value)}
                className="form-input"
              />
            </Form.Group>
          </Col>
          <Col md={6}>
            <Form.Group>
              <Form.Label>Poster</Form.Label>
              <Form.Control
                type="file"
                onChange={handlePosterChange}
                className="form-input"
              />
              {posterPreview && (
                <img
                  src={posterPreview}
                  alt="Poster Preview"
                  className="poster-preview mt-3"
                />
              )}
            </Form.Group>
          </Col>
        </Row>

        <div className="text-end mt-4">
          <Button variant="danger" type="submit" className="submit-button">
            Submit
          </Button>
        </div>
      </Form>
    </Container>
  );
};

export default AddMoviePage;
