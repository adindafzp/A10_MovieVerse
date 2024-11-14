const { Op } = require("sequelize");
const {
  Movie,
  MovieVideo,
  Director,
  Actor,
  Genre,
  Country,
} = require("../../models/index");

class PublicMovieController {
  static async getPopular(req, res) {
    try {
      const movies = await Movie.findAll({
        where: {
          is_popular: true, // Mengambil film yang ditandai sebagai populer
          approval_status: true, // Hanya mengambil film yang telah disetujui
        },
        include: [
          {
            model: Director,
            as: "Director", // Menggunakan alias "Director"
            attributes: ["id", "name"],
          },
          {
            model: Country,
            as: "Country", // Menggunakan alias "Country"
            attributes: ["countryId", "name"],
          },
          {
            model: Actor,
            as: "Actors", // Menggunakan alias "Actors"
            through: { attributes: [] }, // Menyembunyikan kolom tambahan pada tabel penghubung
            attributes: ["id", "name"],
          },
          {
            model: Genre,
            as: "Genres", // Menggunakan alias "Genres"
            through: { attributes: [] },
            attributes: ["id", "name"],
          },
        ],
      });

      return res.status(200).json(movies);
    } catch (error) {
      console.error("Error fetching popular movies:", error);
      return res.status(500).json({ error: error.message });
    }
  }

  static async getAll(req, res) {
    console.log("Fetching all approved movies");
    try {
      const movies = await Movie.findAll({
        where: {
          approval_status: true, // Only approved movies
        },
        include: [
          {
            model: Genre,
            as: "Genres",
            through: { attributes: [] },
            attributes: ["id", "name"],
          },
          {
            model: Actor,
            as: "Actors", // Using alias "Actors"
            through: { attributes: [] },
            attributes: ["id", "name"],
          },
        ],
      });
      return res.status(200).json(movies);
    } catch (error) {
      return res.status(500).json({ error: error.message });
    }
  }

  // Get top-rated movies with approval status true
  static async getTopRated(req, res) {
    try {
      const movies = await Movie.findAll({
        where: {
          rating: {
            [Op.gt]: 4.4, // Movies with rating > 4.4
          },
          approval_status: true, // Only approved movies
        },
        include: [
          {
            model: Genre,
            as: "Genres", // Using alias "Genres"
            through: { attributes: [] },
            attributes: ["id", "name"],
          },
        ],
      });
      return res.status(200).json(movies);
    } catch (error) {
      return res
        .status(500)
        .json({ message: "Something went wrong!", error: error.message });
    }
  }

  // Get movie details, including related data, only if approved
  static async getMovieDetail(req, res) {
    try {
      const movie = await Movie.findOne({
        where: {
          id: req.params.id,
          approval_status: true, // Only fetch movie if it's approved
        },
        include: [
          {
            model: MovieVideo,
            as: "MovieVideos",
          },
          {
            model: Director,
            as: "Director",
            attributes: ["id", "name"],
          },
          {
            model: Actor,
            as: "Actors", // Using alias "Actors"
          },
          {
            model: Genre,
            as: "Genres", // Using alias "Genres"
            through: { attributes: [] },
            attributes: ["id", "name"],
          },
        ],
      });

      if (!movie) {
        return res.status(404).json({ error: "Movie not found" });
      }

      // Fetching 5 recommended movies based on release date
      const recommendations = await Movie.findAll({
        where: {
          id: {
            [Op.ne]: movie.id, // Exclude the current movie
          },
          approval_status: true, // Only approved movies for recommendations
        },
        order: [["release_date", "DESC"]],
        limit: 5,
      });

      return res.status(200).json({
        movie,
        recommendations,
      });
    } catch (error) {
      console.error("Error fetching movie details:", error);
      return res.status(500).json({ error: error.message });
    }
  }
  // Menambahkan film baru
  static async addMovie(req, res) {
    const {
      title,
      year,
      country,
      synopsis,
      genres,
      actors,
      trailer,
      poster,
      directorId,
      rating,
    } = req.body;
    const userId = req.userId; // Mendapatkan userId dari middleware

    try {
      // Menambahkan film baru dengan data dari req.body
      const newMovie = await Movie.create({
        title,
        release_date: year,
        countryId: country,
        synopsis,
        poster_url: poster,
        trailer_url: trailer,
        directorId: directorId,
        addedBy: userId,
        approval_status: 0,
        rating,
      });

      // Cek apakah movie berhasil dibuat
      console.log("New Movie:", newMovie);

      // Validasi apakah newMovie memiliki ID
      if (!newMovie || !newMovie.id) {
        return res.status(500).json({ message: "Failed to retrieve movie ID" });
      }

      // Tambahkan genre dan aktor jika ada
      if (genres && genres.length > 0) {
        console.log("Associating genres:", genres);
        await newMovie.setGenres(genres);
      }
      if (actors && actors.length > 0) {
        console.log("Associating actors:", actors);
        await newMovie.setActors(actors);
      }

      res.status(201).json({
        message: "Movie added successfully and is pending approval",
        newMovie,
      });
    } catch (error) {
      console.error("Error during movie creation:", error);
      res
        .status(500)
        .json({ message: "Failed to add movie", error: error.message });
    }
  }

  static async searchMovies(req, res) {
    try {
      const { query, genre, releaseYear, rating, country, sortBy, category } =
        req.query;
      console.log("Query Parameters:", req.query);

      const includeOptions = [];

      // Validasi dan konversi genreId dan countryId
      const genreId = genre && !isNaN(genre) ? parseInt(genre, 10) : null;
      const countryId =
        country && !isNaN(country) ? parseInt(country, 10) : null;

      if (genre && genreId === null) {
        return res.status(400).json({ message: "Invalid genre ID" });
      }

      if (country && countryId === null) {
        return res.status(400).json({ message: "Invalid country ID" });
      }

      const whereClause = {
        approval_status: true, // Hanya mengambil film yang disetujui
      };
      const order = [];

      // Filter berdasarkan query untuk movies
      if (category === "movies") {
        if (query) {
          whereClause.title = { [Op.like]: `%${query}%` };
        }
      }

      // Filter berdasarkan query untuk celebs/actors
      if (category === "celebs") {
        if (query) {
          includeOptions.push({
            model: Actor,
            as: "Actors",
            where: { name: { [Op.like]: `%${query}%` } },
            required: true,
          });
        }
      }

      if (releaseYear) {
        whereClause.release_date = {
          [Op.between]: [`${releaseYear}-01-01`, `${releaseYear}-12-31`],
        };
      }

      if (rating) {
        whereClause.rating = { [Op.gte]: parseFloat(rating) };
      }

      // Filter genre berdasarkan genreId
      if (genreId !== null) {
        includeOptions.push({
          model: Genre,
          as: "Genres",
          where: { id: genreId },
          required: true,
        });
      } else {
        includeOptions.push({
          model: Genre,
          as: "Genres",
          required: false,
        });
      }

      // Filter country berdasarkan countryId
      if (countryId) {
        includeOptions.push({
          model: Country,
          as: "Country",
          where: { countryId: countryId },
          required: true,
        });
      } else {
        includeOptions.push({
          model: Country,
          as: "Country",
          required: false,
        });
      }

      // Include actors for general movies search
      if (category === "movies" || !category) {
        includeOptions.push({
          model: Actor,
          as: "Actors",
          required: false,
        });
      }

      // Sorting berdasarkan sortBy
      switch (sortBy) {
        case "newest":
          order.push(["release_date", "DESC"]);
          break;
        case "oldest":
          order.push(["release_date", "ASC"]);
          break;
        case "rating":
          order.push(["rating", "DESC"]);
          break;
        case "title_asc":
          order.push(["title", "ASC"]);
          break;
        case "title_desc":
          order.push(["title", "DESC"]);
          break;
        default:
          order.push(["release_date", "DESC"]);
      }

      const movies = await Movie.findAndCountAll({
        where: whereClause,
        include: includeOptions,
        order: order,
        distinct: true,
        limit: 100,
      });

      if (!movies.rows || movies.rows.length === 0) {
        return res.status(404).json({
          status: "error",
          message: "No movies found",
        });
      }

      return res.status(200).json({
        status: "success",
        count: movies.count,
        data: movies.rows,
      });
    } catch (error) {
      console.error("Error in searchMovies:", error);
      return res.status(500).json({
        status: "error",
        message: "An error occurred while retrieving movies",
        error: error.message,
      });
    }
  }
}

module.exports = PublicMovieController;
