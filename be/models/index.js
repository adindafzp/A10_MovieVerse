const Actor = require("./Actor");
const Director = require("./Director");
const Movie = require("./Movie");
const MovieActor = require("./MovieActor");
const MovieVideo = require("./MovieVideo");
const Genre = require('./Genre');
const MovieGenre = require('./MovieGenre'); 
const Country = require('./Country');
const Review = require('./Review');
const User = require('./User');

// Define associations in one place

// Relasi Director dengan Movie
Director.hasMany(Movie, { foreignKey: "directorId" });
Movie.belongsTo(Director, { foreignKey: "directorId" });

Country.hasMany(Director, { foreignKey: "countryId", as: "Directors" });
Director.belongsTo(Country, { foreignKey: "countryId", as: "Country" });

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
Country.hasMany(Movie, { foreignKey: "countryId" });
Movie.belongsTo(Country, { foreignKey: "countryId", as: "Country" });

// Relasi antara Actor dan Country
Country.hasMany(Actor, { foreignKey: "countryId" }); // Satu Country bisa memiliki banyak Actor
Actor.belongsTo(Country, { foreignKey: "countryId", as: "Country" }); // Satu Actor hanya memiliki satu Country

// Relasi Review dengan Movie (One-to-Many)
Movie.hasMany(Review, { foreignKey: "movieId" });
Review.belongsTo(Movie, { foreignKey: "movieId", as: "Movie" });

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
  Review
};
