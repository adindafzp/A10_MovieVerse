// controllers/MovieController.js
const Movie = require("../models/Movie");
const Director = require("../models/Director");
const Country = require("../models/Country");
const Actor = require("../models/Actor");
const Genre = require("../models/Genre");
const MovieVideo = require("../models/MovieVideo");

class MovieController {
  // Create a new movie
<<<<<<< HEAD
  static async create(req, res) {
    try {
      // Create the main movie entry
      const movie = await Movie.create(req.body);

      // Add related actors if provided in request body
      if (req.body.actors) {
        await movie.addActors(req.body.actors); // Assuming req.body.actors is an array of actor IDs
      }

      // Add related genres if provided in request body
      if (req.body.genres) {
        await movie.addGenres(req.body.genres); // Assuming req.body.genres is an array of genre IDs
      }

      // Add related videos if provided in request body
      if (req.body.videos) {
        for (const video of req.body.videos) {
          await MovieVideo.create({ ...video, movieId: movie.id });
        }
      }

      return res.status(201).json(movie);
    } catch (error) {
      return res.status(500).json({ error: error.message });
    }
=======
// controllers/MovieController.js
static async create(req, res) {
  try {
    console.log("Data received in create movie:", req.body);
    const movie = await Movie.create(req.body);
    return res.status(201).json(movie);
  } catch (error) {
    console.error("Error in create movie:", error);
    return res.status(500).json({ error: error.message });
>>>>>>> c472b94 (input new movies/add movies by admin)
  }
}

  // Get all movies with related data
  static async getAll(req, res) {
    try {
      const movies = await Movie.findAll({
        include: [
          { model: Director, as: "Director" },
          { model: Country, as: "Country" },
          { model: Actor, as: "Actors" },
          { model: Genre, as: "Genres" },
          { model: MovieVideo, as: "MovieVideos" }
        ],
      });
      return res.status(200).json(movies);
    } catch (error) {
      return res.status(500).json({ error: error.message });
    }
  }

  // Get a movie by ID with related data
  static async getById(req, res) {
    try {
      const movie = await Movie.findByPk(req.params.id, {
        include: [
          { model: Director, as: "Director" },
          { model: Country, as: "Country" },
          { model: Actor, as: "Actors" },
          { model: Genre, as: "Genres" },
          { model: MovieVideo, as: "MovieVideos" }
        ],
      });
      if (!movie) {
        return res.status(404).json({ message: "Movie not found" });
      }
      return res.status(200).json(movie);
    } catch (error) {
      return res.status(500).json({ error: error.message });
    }
  }

  // Update a movie
  static async update(req, res) {
    try {
      const [updated] = await Movie.update(req.body, {
        where: { id: req.params.id },
      });
      if (!updated) {
        return res.status(404).json({ message: "Movie not found" });
      }

      const updatedMovie = await Movie.findByPk(req.params.id);

      // Update related actors if provided
      if (req.body.actors) {
        await updatedMovie.setActors(req.body.actors);
      }

      // Update related genres if provided
      if (req.body.genres) {
        await updatedMovie.setGenres(req.body.genres);
      }

      return res.status(200).json(updatedMovie);
    } catch (error) {
      return res.status(500).json({ error: error.message });
    }
  }

  // Delete a movie
  static async delete(req, res) {
    try {
      const deleted = await Movie.destroy({
        where: { id: req.params.id },
      });
      if (!deleted) {
        return res.status(404).json({ message: "Movie not found" });
      }
      return res.status(204).send();
    } catch (error) {
      return res.status(500).json({ error: error.message });
    }
  }
}

module.exports = MovieController;
