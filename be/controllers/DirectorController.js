// controllers/DirectorController.js
const Director = require('../models/Director');
const Country = require('../models/Country'); // Import Country model for relation

class DirectorController {
    // Create a new director
    static async create(req, res) {
        const { name, birthdate, countryId, biography, image } = req.body;

        if (!name || !birthdate || !countryId) {
            return res.status(400).json({ message: "Name, birthdate, and countryId are required" });
        }

        try {
            const director = await Director.create({ name, birthdate, countryId, biography, image });
            return res.status(201).json(director);
        } catch (error) {
            return res.status(500).json({ error: error.message });
        }
    }

    // Get all directors, including country data
    static async getAll(req, res) {
        try {
            const directors = await Director.findAll({
                include: [{ model: Country, as: 'Country' }], // Include country data
            });
            return res.status(200).json(directors);
        } catch (error) {
            return res.status(500).json({ error: error.message });
        }
    }

    // Get a director by ID, including country data
    static async getById(req, res) {
        try {
            const director = await Director.findByPk(req.params.id, {
                include: [{ model: Country, as: 'Country' }], // Include country data
            });
            if (!director) {
                return res.status(404).json({ message: 'Director not found' });
            }
            return res.status(200).json(director);
        } catch (error) {
            return res.status(500).json({ error: error.message });
        }
    }

    // Update a director
    static async update(req, res) {
        const { name, birthdate, countryId, biography, image } = req.body;

        try {
            const director = await Director.findByPk(req.params.id);
            if (!director) {
                return res.status(404).json({ message: 'Director not found' });
            }

            director.name = name || director.name;
            director.birthdate = birthdate || director.birthdate;
            director.countryId = countryId || director.countryId;
            director.biography = biography || director.biography;
            director.image = image || director.image;

            await director.save();

            return res.status(200).json({ message: "Director updated successfully", director });
        } catch (error) {
            return res.status(500).json({ error: error.message });
        }
    }

    // Delete a director
    static async delete(req, res) {
        try {
            const deleted = await Director.destroy({
                where: { id: req.params.id }
            });
            if (!deleted) {
                return res.status(404).json({ message: 'Director not found' });
            }
            return res.status(204).send();
        } catch (error) {
            return res.status(500).json({ error: error.message });
        }
    }
}

module.exports = DirectorController;
