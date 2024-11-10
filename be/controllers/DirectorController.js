const Director = require("../models/Director");
const Country = require("../models/Country"); // Import model Country

class DirectorController {
  // Create a new director
  static async create(req, res) {
    try {
      const director = await Director.create(req.body);
      return res.status(201).json(director);
    } catch (error) {
      return res.status(500).json({ error: error.message });
    }
  }

  // Get all directors, including related country data
  static async getAll(req, res) {
    try {
      const directors = await Director.findAll({
        include: { model: Country, as: "Country" }, // Menyertakan data negara
      });
      return res.status(200).json(directors);
    } catch (error) {
      return res.status(500).json({ error: error.message });
    }
  }

  // Get a director by ID, including related country data
  static async getById(req, res) {
    try {
      const director = await Director.findByPk(req.params.id, {
        include: { model: Country, as: "Country" }, // Menyertakan data negara
      });
      if (!director) {
        return res.status(404).json({ message: "Director not found" });
      }
      return res.status(200).json(director);
    } catch (error) {
      return res.status(500).json({ error: error.message });
    }
  }

  // Update a director
  static async update(req, res) {
    try {
      const [updated] = await Director.update(req.body, {
        where: { id: req.params.id },
      });
      if (!updated) {
        return res.status(404).json({ message: "Director not found" });
      }
      const updatedDirector = await Director.findByPk(req.params.id, {
        include: { model: Country, as: "Country" }, // Menyertakan data negara setelah update
      });
      return res.status(200).json(updatedDirector);
    } catch (error) {
      return res.status(500).json({ error: error.message });
    }
  }

  // Delete a director
  static async delete(req, res) {
    try {
      const deleted = await Director.destroy({
        where: { id: req.params.id },
      });
      if (!deleted) {
        return res.status(404).json({ message: "Director not found" });
      }
      return res.status(204).send();
    } catch (error) {
      return res.status(500).json({ error: error.message });
    }
  }
}

module.exports = DirectorController;