const Actor = require("./Actor");
const Director = require("./Director");
const Movie = require("./Movie");
const MovieActor = require("./MovieActor");
const MovieVideo = require("./MovieVideo");
const Genre = require('./Genre');
const MovieGenre = require('./MovieGenre'); 
const Country = require('./Country');
const Review = require('./Review'); // Import Review
const User = require('./User'); // Import User jika belum ada

// Define associations in one place

// Relasi Director dengan Movie
Director.hasMany(Movie, { foreignKey: "directorId" });
Movie.belongsTo(Director, { foreignKey: "directorId" });

// Relasi Movie dengan MovieVideo (One-to-Many)
Movie.hasMany(MovieVideo, { foreignKey: "movieId" });
MovieVideo.belongsTo(Movie, { foreignKey: "movieId" });

// Relasi Many-to-Many antara Movie dan Genre
Movie.belongsToMany(Genre, { through: "MovieGenre", foreignKey: "movieId", as: "Genres" });
Genre.belongsToMany(Movie, { through: "MovieGenre", foreignKey: "genreId", as: "Movies" });

// Relasi Many-to-Many antara Movie dan Actor
Movie.belongsToMany(Actor, { through: "MovieActor", foreignKey: "movieId", as: "Actors" });
Actor.belongsToMany(Movie, { through: "MovieActor", foreignKey: "actorId", as: "Movies" });

// Relasi One-to-Many antara Movie dan Country
Country.hasMany(Movie, { foreignKey: "countryId" }); // Satu Country bisa memiliki banyak Movie
Movie.belongsTo(Country, { foreignKey: "countryId", as: "Country" }); // Satu Movie hanya memiliki satu Country

// Relasi Review dengan Movie (One-to-Many)
Movie.hasMany(Review, { foreignKey: "movieId" });
Review.belongsTo(Movie, { foreignKey: "movieId", as: "Movie" }); // Pastikan `as` sama dengan di frontend

// Relasi Review dengan User (One-to-Many)
User.hasMany(Review, { foreignKey: "userId" });
Review.belongsTo(User, { foreignKey: "userId" });

module.exports = { 
  Director, 
  Movie, 
  MovieVideo, 
  Actor, 
  MovieActor, 
  Genre, 
  MovieGenre, 
  Country, 
  User, 
  Review // Export Review model
};
