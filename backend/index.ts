import express from "express";
import cors from "cors";
import * as sqlite from "sqlite";
import { Database } from "sqlite";
import sqlite3 from "sqlite3";

let database: Database;

(async () => {
  try {
    console.log("Opening database...");
    database = await sqlite.open({
      driver: sqlite3.Database,
      filename: "./recipedia.sqlite",
    });
    console.log("Database opened successfully");

    await database.run("PRAGMA foreign_keys = ON");
    console.log("Redo att göra databasanrop");

    const app = express();
    app.use(cors());

    app.get("/api/recipes", async (req, res) => {
      let recipes = await database.all(
        "SELECT name, cuisine, recipe_image, cookTimeMinutes, servings, prepTimeMinutes, rating, id FROM recipes",
      );
      res.send(recipes);
    });

    app.get("/api/popular", async (req, res) => {
      let popularRecipes = await database.all(
        "SELECT name, cuisine, recipe_image, rating, id FROM recipes WHERE rating > 4.6 ",
      );
      res.send(popularRecipes);
    });

    app.get("/recipes/:id", async (req, res) => {
      let instructionsDetail = await database.all(
        `SELECT recipes.id,instruction,name,cookTimeMinutes, servings,prepTimeMinutes
         FROM recipes INNER JOIN instructions
         ON recipes.id=instructions.recipe_id
         WHERE recipes.id=${req.params.id};`,
      );

      let ingredientsDetail = await database.all(
        `SELECT recipes.id,ingredient,name,cookTimeMinutes, servings,prepTimeMinutes
         FROM recipes INNER JOIN ingredients
         ON recipes.id=ingredients.recipe_id
         WHERE recipes.id=${req.params.id};`,
      );

      res.send({
        ingredientsSection: ingredientsDetail,
        instructionsSection: instructionsDetail,
      });
    });

    app.listen(8080, () => {
      console.log("Server running on http://localhost:8080");
    });
  } catch (err) {
    console.error("Failed to start server:", err);
  }
})();
