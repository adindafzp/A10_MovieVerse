// controllers/MovieVideoController.js
const { MovieVideo, Movie } = require("../models/index");

class MovieVideoController {
  // Create a new movie video
  static async create(req, res) {
    const { url, title, movieId } = req.body;

    if (!url || !title || !movieId) {
      return res.status(400).json({ message: "URL, title, and movieId are required" });
    }

    try {
      // Check if the movie exists
      const movie = await Movie.findByPk(movieId);
      if (!movie) {
        return res.status(404).json({ message: "Movie not found" });
      }

      // Check for duplicate URL for the same movie
      const existingVideo = await MovieVideo.findOne({ where: { url, movieId } });
      if (existingVideo) {
        return res.status(400).json({ message: "A video with this URL already exists for this movie" });
      }

      // Create new video
      const newVideo = await MovieVideo.create({ url, title, movieId });
      return res.status(201).json({ message: "Video created successfully", newVideo });
    } catch (error) {
      return res.status(500).json({ message: "Error creating video", error: error.message });
    }
  }

  // Get all videos for a specific movie
  static async getVideosByMovie(req, res) {
    const { movieId } = req.params;

    try {
      const movie = await Movie.findByPk(movieId, {
        include: [{ model: MovieVideo, as: "MovieVideos" }],
      });

      if (!movie) {
        return res.status(404).json({ message: "Movie not found" });
      }

      return res.status(200).json(movie.MovieVideos);
    } catch (error) {
      return res.status(500).json({ message: "Error fetching videos", error: error.message });
    }
  }

  // Get a single video by ID
  static async getById(req, res) {
    const { id } = req.params;

    try {
      const video = await MovieVideo.findByPk(id);
      if (!video) {
        return res.status(404).json({ message: "Video not found" });
      }

      return res.status(200).json(video);
    } catch (error) {
      return res.status(500).json({ message: "Error fetching video", error: error.message });
    }
  }

  // Update a movie video
  static async update(req, res) {
    const { id } = req.params;
    const { url, title, movieId } = req.body;

    if (!url || !title || !movieId) {
      return res.status(400).json({ message: "URL, title, and movieId are required" });
    }

    try {
      // Find the video to update
      const video = await MovieVideo.findByPk(id);
      if (!video) {
        return res.status(404).json({ message: "Video not found" });
      }

      // Check if the movie exists
      const movie = await Movie.findByPk(movieId);
      if (!movie) {
        return res.status(404).json({ message: "Movie not found" });
      }

      // Check for duplicate URL if changed
      if (url !== video.url) {
        const existingVideo = await MovieVideo.findOne({ where: { url, movieId } });
        if (existingVideo) {
          return res.status(400).json({ message: "A video with this URL already exists for this movie" });
        }
      }

      // Update video
      await video.update({ url, title, movieId });
      return res.status(200).json({ message: "Video updated successfully", video });
    } catch (error) {
      return res.status(500).json({ message: "Error updating video", error: error.message });
    }
  }

  // Delete a movie video
  static async delete(req, res) {
    const { id } = req.params;

    try {
      const video = await MovieVideo.findByPk(id);
      if (!video) {
        return res.status(404).json({ message: "Video not found" });
      }

      await video.destroy();
      return res.status(200).json({ message: "Video deleted successfully" });
    } catch (error) {
      return res.status(500).json({ message: "Error deleting video", error: error.message });
    }
  }
}

module.exports = MovieVideoController;
