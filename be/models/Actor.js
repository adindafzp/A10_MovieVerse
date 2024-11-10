// models/Actor.js
const { Model, DataTypes } = require("sequelize");
const sequelize = require("../library/database");

class Actor extends Model {}

Actor.init({
  id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true,
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
    type: DataTypes.INTEGER,  // Sesuaikan tipe data dengan Country
    allowNull: false,
    references: {
      model: 'country',       // Nama tabel `country`
      key: 'countryId',        // Nama kolom referensi
    },
    onDelete: 'CASCADE',
    onUpdate: 'CASCADE',
  },
  biography: {
    type: DataTypes.TEXT,
  },
  image: {
    type: DataTypes.STRING,
  },
}, {
  sequelize,
  modelName: "Actor",
  tableName: "actor",
  timestamps: false,
});

module.exports = Actor;
