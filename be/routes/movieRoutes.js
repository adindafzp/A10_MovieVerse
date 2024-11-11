// routes/movieRoutes.js
const express = require("express");
const MovieController = require("../controllers/MovieController");
const router = express.Router();

router.put("/:id/approve", MovieController.approveMovie);

router.post("/add", MovieController.create);
router.get("/", MovieController.getAll);
router.get("/:id", MovieController.getById);
router.put("/:id", MovieController.update);
router.delete("/:id", MovieController.delete);
router.get("/approved", MovieController.getAllApproved);

module.exports = router;
