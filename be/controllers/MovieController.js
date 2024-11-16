const { Movie, Director, Country, Actor, Genre, MovieVideo } = require("../models");

class MovieController {
  // Create a new movie
  static async create(req, res) {
    try {
      const {
        title, directorId, countryId, synopsis, genres, actors, trailer_urls, approval_status, rating
      } = req.body;

      // Validasi input
      if (!title || !directorId || !countryId) {
        return res.status(400).json({
          status: "error",
          message: "Title, Director, and Country are required fields",
        });
      }

      const movieData = {
        title,
        directorId,
        countryId,
        synopsis,
        approval_status: approval_status ?? 1, // Default to approved
        rating,
      };

      // Membuat film
      const movie = await Movie.create(movieData);

      // Set relasi (actors, genres)
      if (actors && actors.length > 0) {
        await movie.setActors(actors.slice(0, 10)); // Batasi ke 10 aktor
      }
      if (genres && genres.length > 0) {
        await movie.setGenres(genres.slice(0, 10)); // Batasi ke 10 genre
      }
      // Tambahkan video trailer jika ada
      if (trailer_urls && trailer_urls.length > 0) {
        const videos = trailer_urls.map((url, index) => ({
          url,
          title: `Trailer ${index + 1}`,
          movieId: movie.id,
        }));
        await MovieVideo.bulkCreate(videos);
      }

      // Ambil data lengkap untuk respons
      const createdMovie = await Movie.findByPk(movie.id, {
        include: [
          { model: Director, as: "Director", attributes: ["id", "name"] },
          { model: Country, as: "Country", attributes: ["countryId", "name"] },
          { model: Actor, as: "Actors", through: { attributes: [] }, attributes: ["id", "name"] },
          { model: Genre, as: "Genres", through: { attributes: [] }, attributes: ["id", "name"] },
          { model: MovieVideo, as: "MovieVideos", attributes: ["id", "url", "title"] },
        ],
      });

      return res.status(201).json({
        status: "success",
        message: "Movie created successfully",
        data: createdMovie,
      });
    } catch (error) {
      console.error("Error in create movie:", error);
      return res.status(500).json({
        status: "error",
        message: "Failed to create movie",
        error: error.message,
      });
    }
  }

  // Get all movies (with pagination)
  static async getAll(req, res) {
    try {
      const { limit = 10, offset = 0 } = req.query;
      const movies = await Movie.findAndCountAll({
        include: [
          { model: Director, as: "Director", attributes: ["id", "name"] },
          { model: Country, as: "Country", attributes: ["countryId", "name"] },
          { model: Actor, as: "Actors", through: { attributes: [] }, attributes: ["id", "name"] },
          { model: Genre, as: "Genres", through: { attributes: [] }, attributes: ["id", "name"] },
        ],
        limit: parseInt(limit),
        offset: parseInt(offset),
      });

      return res.status(200).json({
        status: "success",
        count: movies.count,
        data: movies.rows,
      });
    } catch (error) {
      console.error("Error in fetching movies:", error);
      return res.status(500).json({ status: "error", message: "Failed to fetch movies", error: error.message });
    }
  }

  // Get a movie by ID
  static async getById(req, res) {
    try {
      const movie = await Movie.findByPk(req.params.id, {
        include: [
          {
            model: Director,
            as: "Director",
            attributes: ["id", "name"],
          },
          {
            model: Country,
            as: "Country",
            attributes: ["countryId", "name"],
          },
          {
            model: Actor,
            as: "Actors",
            through: { attributes: [] },
            attributes: ["id", "name"],
          },
          {
            model: Genre,
            as: "Genres",
            through: { attributes: [] },
            attributes: ["id", "name"],
          },
        ],
      });

      if (!movie) {
        return res.status(404).json({ message: "Movie not found" });
      }

      return res.status(200).json(movie);
    } catch (error) {
      console.error("Error in fetching movie by ID:", error);
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
      return res.status(200).json(updatedMovie);
    } catch (error) {
      return res.status(500).json({ error: error.message });
    }
  }

  // Update approval status
  static async updateApprovalStatus(req, res) {
    try {
      const { id } = req.params;
      const { approval_status } = req.body;

      if (
        typeof approval_status !== "boolean" &&
        approval_status !== 0 &&
        approval_status !== 1
      ) {
        return res
          .status(400)
          .json({ message: "Invalid approval status value" });
      }

      const [updated] = await Movie.update(
        { approval_status },
        { where: { id } }
      );

      if (!updated) {
        return res.status(404).json({ message: "Movie not found" });
      }

      const updatedMovie = await Movie.findByPk(id, {
        attributes: ["id", "title", "approval_status"],
      });

      return res.status(200).json({
        message: "Approval status updated successfully",
        movie: updatedMovie,
      });
    } catch (error) {
      console.error("Error updating approval status:", error);
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

  // Get all approved movies (hanya film yang sudah di-approve)
  static async getAllApproved(req, res) {
    try {
      const movies = await Movie.findAll({
        where: {
          approval_status: 1,
        },
        include: [
          {
            model: Director,
            as: "Director",
            attributes: ["id", "name"],
          },
          {
            model: Country,
            as: "Country",
            attributes: ["countryId", "name"],
          },
          {
            model: Actor,
            as: "Actors",
            through: { attributes: [] },
            attributes: ["id", "name"],
          },
          {
            model: Genre,
            as: "Genres",
            through: { attributes: [] },
            attributes: ["id", "name"],
          },
        ],
      });

      return res.status(200).json(movies);
    } catch (error) {
      console.error("Error in fetching approved movies:", error);
      return res.status(500).json({ error: error.message });
    }
  }

  static async approveMovie(req, res) {
    try {
      const movieId = req.params.id;

      // Update status persetujuan pada database
      const [updated] = await Movie.update(
        { approval_status: 1 }, // Set status ke approved (1)
        { where: { id: movieId } }
      );

      if (updated) {
        const updatedMovie = await Movie.findByPk(movieId);
        return res.status(200).json({
          message: "Movie approved successfully",
          movie: updatedMovie,
        });
      } else {
        return res.status(404).json({ message: "Movie not found" });
      }
    } catch (error) {
      console.error("Error approving movie:", error);
      return res.status(500).json({ error: error.message });
    }
  }
}

module.exports = MovieController;
