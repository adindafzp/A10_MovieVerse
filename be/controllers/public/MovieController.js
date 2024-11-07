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
  // Create a new movie
  static async getPopular(req, res) {
    try {
      const movies = await Movie.findAll({
        where: {
          is_popular: true,
        },
        include: [
          {
            model: Genre,
            as: "Genres",
          },
        ],
      });
      return res.status(200).json(movies);
    } catch (error) {
      return res.status(500).json({ error: error.message });
    }
  }
  // Get all movies
  static async getAll(req, res) {
    console.log("all movies");
    try {
      const movies = await Movie.findAll({
        include: [
          {
            model: Genre,
            as: "Genres", 
          },
          {
            model: Actor,
            as: "Actors", // Menggunakan alias "Actors"
          },
        ],
      });
      return res.status(200).json(movies);
    } catch (error) {
      return res.status(500).json({ error: error.message });
    }
  }

  static async getTopRated(req, res) {
    try {
      const movies = await Movie.findAll({
        where: {
          rating: {
            [Op.gt]: 4.4, // Menampilkan movie dengan rating > 4.4
          },
        },
        include: [
          {
            model: Genre,
            as: "Genres", // Menggunakan alias yang sesuai
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

  static async getMovieDetail(req, res) {
    try {
      const movie = await Movie.findOne({
        where: {
          id: req.params.id,
        },
        include: [
          {
            model: MovieVideo,
          },
          {
            model: Director,
          },
          {
            model: Actor,
            as: "Actors", // Gunakan alias sesuai asosiasi yang didefinisikan
          },
          {
            model: Genre,
            as: "Genres", // Menggunakan alias "Genres" sesuai dengan asosiasi
          },
        ],
      });

      if (!movie) {
        return res.status(404).json({ error: "Movie not found" });
      }

      // Fetching 5 recommended movies based on a criterion (for example, release date)
      const recommendations = await Movie.findAll({
        where: {
          id: {
            [Op.ne]: movie.id, // Exclude the current movie from recommendations
          },
        },
        order: [["release_date", "DESC"]], // Order by release date or any other criteria
        limit: 5, // Limit to 5 recommendations
      });

      return res.status(200).json({
        movie,
        recommendations,
      });
    } catch (error) {
      return res.status(500).json({ error: error.message });
    }
  }
  // Menambahkan film baru
  static async addMovie(req, res) {
    const { title, year, country, synopsis, genres, actors, trailer, poster } =
      req.body;
    const userId = req.userId; // Mendapatkan userId dari middleware

    try {
      // Menambahkan film baru dengan data dari req.body
      const newMovie = await Movie.create({
        title,
        release_date: year, // Sesuaikan dengan kolom `release_date`
        countryId: country, // Sesuaikan dengan kolom `countryId`
        synopsis,
        poster_url: poster, // Sesuaikan dengan kolom `poster_url`
        trailer_url: trailer, // Sesuaikan dengan kolom `trailer_url`
        addedBy: userId, // Simpan ID pengguna yang menambahkan film
        approval_status: 0, // Default ke 0 (belum disetujui)
      });

      // Tambahkan genre dan aktor jika diperlukan
      if (genres) {
        await newMovie.setGenres(genres); // Asosiasikan dengan genre
      }
      if (actors) {
        await newMovie.setActors(actors); // Asosiasikan dengan aktor
      }

      res.status(201).json({
        message: "Movie added successfully and is pending approval",
        newMovie,
      });
    } catch (error) {
      res
        .status(500)
        .json({ message: "Failed to add movie", error: error.message });
    }
  }

  //   static async searchMovies(req, res) {
  //     try {
  //         const { query, genre, releaseYear, rating } = req.query;

  //         console.log("Query Parameters:", req.query); // Logging parameter yang diterima

  //         const whereClause = {};
  //         if (query) {
  //             whereClause.title = { [Op.like]: `%${query}%` };
  //             console.log("Title Filter:", whereClause.title);
  //         }
  //         if (releaseYear) {
  //             whereClause.release_date = releaseYear; // Perhatikan bahwa harus sesuai dengan nama kolom di database
  //             console.log("Release Year Filter:", whereClause.release_date);
  //         }
  //         if (rating) {
  //             whereClause.rating = { [Op.gte]: rating };
  //             console.log("Rating Filter:", whereClause.rating);
  //         }

  //         const genreInclude = genre
  //             ? {
  //                 model: Genre,
  //                 as: "Genres",
  //                 where: { name: genre },
  //             }
  //             : {
  //                 model: Genre,
  //                 as: "Genres",
  //             };

  //         const movies = await Movie.findAll({
  //             where: whereClause,
  //             include: [
  //                 genreInclude,
  //                 {
  //                     model: Actor,
  //                     as: "Actors",
  //                 },
  //             ],
  //             limit: 100,
  //         });

  //         console.log("Movies found:", movies);

  //         if (!movies || movies.length === 0) {
  //             return res.status(404).json({ error: "Movie not found" });
  //         }

  //         return res.status(200).json(movies);
  //     } catch (error) {
  //         console.error("Error in searchMovies:", error.message);
  //         return res.status(500).json({ message: "Error retrieving movies", error: error.message });
  //     }
  // }
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

      const whereClause = {};
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
            where: { name: { [Op.like]: `%${query}%` } }, // Filter by actor's name
            required: true, // Ensure that only movies with matching actors are returned
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
          where: { countryId: countryId }, // Ensure ID matches schema
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
          required: false, // Allow movies without actors to be included
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
