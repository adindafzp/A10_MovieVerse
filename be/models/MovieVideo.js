// models/MovieVideo.js
const { Model, DataTypes } = require("sequelize");
const sequelize = require("../library/database");
const Movie = require("./Movie"); 

class MovieVideo extends Model {}

MovieVideo.init(
  {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
    },
    url: {
      type: DataTypes.STRING(300),
      allowNull: false,
    },
    title: {
      type: DataTypes.STRING(200),
      allowNull: false,
    },
    movieId: {
      type: DataTypes.INTEGER,
      references: {
        model: Movie,
        key: "id",
      },
    },
  },
  {
    sequelize,
    modelName: "MovieVideo",
    tableName: "movie_videos",
    timestamps: false,
  }
);

module.exports = MovieVideo;
