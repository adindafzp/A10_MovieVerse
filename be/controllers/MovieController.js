// controllers/MovieController.js
const { Movie, Director, Country, Actor, Genre } = require("../models");

class MovieController {
// Create a new movie
static async create(req, res) {
  try {
    console.log("Data received in create movie:", req.body);
    const movie = await Movie.create(req.body);
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
        approval_status: 1, // Hanya mengambil data yang sudah di-approve
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

}

module.exports = MovieController;
