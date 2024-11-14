// controllers/MovieController.js
const { Movie, Director, Country, Actor, Genre } = require("../models");

class MovieController {
// Create a new movie
static async create(req, res) {
  try {
    console.log("Data received in create movie:", req.body);

    // Tambahkan approval_status secara eksplisit
    const movieData = {
      ...req.body,
      approval_status: 1, // Langsung diset menjadi approved
    };

    // Membuat film dengan data yang sudah disiapkan
    const movie = await Movie.create(movieData);

    console.log("New Movie Created:", movie);
    return res.status(201).json(movie);
  } catch (error) {
    console.error("Error in create movie:", error);
    return res.status(500).json({ error: error.message });
  }
}

// Get all movies
static async getAll(req, res) {
  try {
    const movies = await Movie.findAll({
      include: [
        {
          model: Director,
          as: "Director", // Menggunakan alias yang sesuai
          attributes: ["id", "name"],
        },
        {
          model: Country,
          as: "Country", // Menggunakan alias yang sesuai
          attributes: ["countryId", "name"], // Gunakan 'countryId' bukan 'id'
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
    console.error("Error in fetching movies:", error);
    return res.status(500).json({ error: error.message });
  }
}

  // Get a movie by ID
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

      // Periksa apakah approval_status valid (0 atau 1)
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
