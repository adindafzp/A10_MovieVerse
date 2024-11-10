// models/Director.js
const { Model, DataTypes } = require("sequelize");
const sequelize = require("../library/database");
const Country = require("./Country"); // Import model Country untuk asosiasi

class Director extends Model {}

Director.init(
  {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
      allowNull: false,
    },
    name: {
      type: DataTypes.TEXT,
      allowNull: false,
    },
    birthdate: {
      type: DataTypes.DATE,
      allowNull: false,
    },
    countryId: {
      type: DataTypes.INTEGER, // Ubah menjadi INTEGER untuk foreign key
      allowNull: false,
      references: {
        model: Country, // Referensi ke tabel Country
        key: "countryId",
      },
      onDelete: "CASCADE", // Mengatur agar penghapusan pada tabel Country mempengaruhi tabel Director
      onUpdate: "CASCADE",
    },
    biography: {
      type: DataTypes.TEXT,
      allowNull: true,
    },
    image: {
      type: DataTypes.STRING,
      allowNull: true,
    },
  },
  {
    sequelize,
    modelName: "Director",
    tableName: "director",
    timestamps: false,
  }
);

module.exports = Director;
