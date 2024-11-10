import { useState, useEffect } from "react";
import axios from "axios";
import { Container, Row, Col, Form, Button } from "react-bootstrap";
import Swal from "sweetalert2";
import "../styles/AddMovie.css";
import { URL } from "../utils";

const AddMoviePage = () => {
  const [title, setTitle] = useState("");
  const [releaseDate, setReleaseDate] = useState("");
  const [country, setCountry] = useState("");
  const [countries, setCountries] = useState([]);
  const [synopsis, setSynopsis] = useState("");
  const [genres, setGenres] = useState([
    { id: 1, name: "Action" },
    { id: 2, name: "Drama" },
    { id: 3, name: "Comedy" },
    { id: 4, name: "Romance" },
    { id: 5, name: "Horror" },
  ]);
  const [selectedGenres, setSelectedGenres] = useState([]);
  const [posterLink, setPosterLink] = useState("");
  const [rating, setRating] = useState("");
  const [actors, setActors] = useState("");
  const [errors, setErrors] = useState({});

  useEffect(() => {
    fetch("https://restcountries.com/v3.1/all")
      .then((res) => res.json())
      .then((data) => {
        const sortedCountries = data
          .map((country) => ({ name: country.name.common }))
          .sort((a, b) => a.name.localeCompare(b.name));
        setCountries(sortedCountries);
      })
      .catch((error) => console.error("Fetch error:", error));
  }, []);

  const handleGenreChange = (genreId) => {
    setSelectedGenres((prevGenres) =>
      prevGenres.includes(genreId)
        ? prevGenres.filter((id) => id !== genreId)
        : [...prevGenres, genreId]
    );
  };

  const validateForm = () => {
    const newErrors = {};
    if (!title) newErrors.title = "Title is required";
    if (!releaseDate) newErrors.releaseDate = "Release date is required";
    if (!country) newErrors.country = "Country is required";
    if (!synopsis) newErrors.synopsis = "Synopsis is required";
    if (selectedGenres.length === 0) newErrors.genres = "Please select at least one genre";
    if (!actors) newErrors.actors = "Please add at least one actor";
    if (!/^https?:\/\/.+\..+$/.test(posterLink)) newErrors.posterLink = "Invalid poster URL";
    if (!rating || rating < 1 || rating > 10) newErrors.rating = "Rating must be between 1 and 10";
    setErrors(newErrors);
    return Object.keys(newErrors).length === 0;
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    if (validateForm()) {
      try {
        const formData = {
          title,
          year: releaseDate,
          country,
          synopsis,
          genres: selectedGenres,
          actors,
          poster: posterLink,
          rating: parseFloat(rating),
        };

        const response = await axios.post(`${URL}/movies/add`, formData, {
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${localStorage.getItem("token")}`,
          },
        });

        Swal.fire("Success", "Movie added successfully!", "success");
        setTitle("");
        setReleaseDate("");
        setCountry("");
        setSynopsis("");
        setSelectedGenres([]);
        setActors("");
        setPosterLink("");
        setRating("");
      } catch (error) {
        Swal.fire("Error", "Failed to add movie", "error");
        console.error("Error adding movie:", error);
      }
    }
  };

  return (
    <Container className="add-movie-page">
      <h2 className="add-movie-title text-center">Add New Movie</h2>
      <Form onSubmit={handleSubmit}>
        <Form.Group className="mb-4">
          <Form.Label>Title</Form.Label>
          <Form.Control
            type="text"
            placeholder="Enter title"
            value={title}
            onChange={(e) => setTitle(e.target.value)}
          />
          {errors.title && <small className="text-danger">{errors.title}</small>}
        </Form.Group>

        <Row className="mb-4">
          <Col md={6}>
            <Form.Group>
              <Form.Label>Release Date</Form.Label>
              <Form.Control
                type="date"
                value={releaseDate}
                onChange={(e) => setReleaseDate(e.target.value)}
              />
              {errors.releaseDate && <small className="text-danger">{errors.releaseDate}</small>}
            </Form.Group>
          </Col>
          <Col md={6}>
            <Form.Group>
              <Form.Label>Rating (1-10)</Form.Label>
              <Form.Control
                type="number"
                value={rating}
                onChange={(e) => setRating(e.target.value)}
                min="1"
                max="10"
              />
              {errors.rating && <small className="text-danger">{errors.rating}</small>}
            </Form.Group>
          </Col>
        </Row>

        <Form.Group className="mb-4">
          <Form.Label>Country</Form.Label>
          <Form.Control as="select" value={country} onChange={(e) => setCountry(e.target.value)}>
            <option value="">Select Country</option>
            {countries.map((country) => (
              <option key={country.name} value={country.name}>
                {country.name}
              </option>
            ))}
          </Form.Control>
        </Form.Group>

        <Form.Group className="mb-4">
          <Form.Label>Poster URL</Form.Label>
          <Form.Control
            type="text"
            placeholder="Enter poster link"
            value={posterLink}
            onChange={(e) => setPosterLink(e.target.value)}
          />
        </Form.Group>

        <Form.Group className="mb-4">
          <Form.Label>Actors</Form.Label>
          <Form.Control
            type="text"
            placeholder="Enter actor names separated by commas"
            value={actors}
            onChange={(e) => setActors(e.target.value)}
          />
        </Form.Group>

        <Form.Group className="mb-4">
          <Form.Label>Genres</Form.Label>
          <div className="d-flex flex-wrap">
            {genres.map((genre) => (
              <Form.Check
                key={genre.id}
                type="checkbox"
                label={genre.name}
                checked={selectedGenres.includes(genre.id)}
                onChange={() => handleGenreChange(genre.id)}
              />
            ))}
          </div>
        </Form.Group>

        <Form.Group className="mb-4">
          <Form.Label>Synopsis</Form.Label>
          <Form.Control
            as="textarea"
            rows={3}
            placeholder="Enter synopsis"
            value={synopsis}
            onChange={(e) => setSynopsis(e.target.value)}
          />
        </Form.Group>

        <Button variant="danger" type="submit" className="submit-button">
          Submit
        </Button>
      </Form>
    </Container>
  );
};

export default AddMoviePage;
