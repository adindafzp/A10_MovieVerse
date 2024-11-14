const express = require("express");
const sequelize = require("./library/database");
const User = require("./models/User");
const Review = require("./models/Review");
const bodyParser = require("body-parser");
const cors = require("cors");
const session = require("express-session");
const passport = require("./library/passportConfig");
const dotenv = require("dotenv");
dotenv.config();

// Import Routes
const userRoutes = require("./routes/userRoutes");
const countryRoutes = require("./routes/countryRoutes");
const genreRoutes = require("./routes/genreRoutes");
const movieRoutes = require("./routes/movieRoutes");
const awardRoutes = require("./routes/awardRoutes");
const directorRoutes = require("./routes/directorRoutes");
const movieVideosRoutes = require("./routes/movieVideosRoutes");
const actorRoutes = require("./routes/actorRoutes");
const movieActorRoutes = require("./routes/movieActors");
const reviewRoutes = require("./routes/reviewRoutes");

// Public Routes
const movieRoutesPublic = require("./routes/public/movieRoutes"); 
const directorRoutesPublic = require("./routes/public/directorRoutes");
const actorRoutesPublic = require("./routes/public/actorRoutes");
const genreRoutesPublic = require("./routes/public/genreRoutes");
const countryRoutesPublic = require("./routes/public/countryRoutes");

const app = express();
const port = 3000;

// CORS Configuration
app.use(
  cors({
    origin: "http://localhost:5173",
    methods: ["GET", "POST", "PUT", "DELETE", "OPTIONS"],
    credentials: true,
    allowedHeaders: ["Content-Type", "Authorization"],
  })
);

app.options('*', cors()); // Handle preflight requests for all routes

// Test Database Connection and Sync Models
sequelize
  .authenticate()
  .then(() => {
    console.log("Connection has been established successfully.");
    return sequelize.sync(); // Removing { alter: true } for production
  })
  .then(() => {
    console.log("Database synced successfully.");
  })
  .catch((err) => {
    console.error("Unable to connect to the database:", err);
  });

// Parsing JSON and URL-encoded Requests
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// Session Management
app.use(
  session({
    secret: process.env.JWT_SECRET,
    resave: false,
    saveUninitialized: false,
  })
);

app.use(passport.initialize());
app.use(passport.session());

// Admin Routes
app.use("/api/admin/user", userRoutes);
app.use("/api/admin/genre", genreRoutes);
app.use("/api/admin/country", countryRoutes);
app.use("/api/admin/award", awardRoutes);
app.use("/api/admin/directors", directorRoutes);
app.use("/api/admin/movie", movieRoutes);
app.use("/api/admin/movie-videos", movieVideosRoutes);
app.use("/api/admin/actors", actorRoutes);
app.use("/api/admin/movie-actors", movieActorRoutes);
app.use("/api/reviews", reviewRoutes);

// Public Routes
app.use("/api/movies", movieRoutesPublic);
app.use("/api/directors", directorRoutesPublic);
app.use("/api/actors", actorRoutesPublic);
app.use("/api/genres", genreRoutesPublic);
app.use("/api/countries", countryRoutesPublic);

// 404 Handler for Undefined Routes
app.use((req, res, next) => {
  res.status(404).json({ message: "Route not found" });
});

// Error Handling Middleware
app.use((err, req, res, next) => {
  console.error("Error Details:", err.message);
  console.error("Stack Trace:", err.stack);
  res.status(500).json({ message: "Something went wrong!", error: err.message });
});

// Start the server
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
