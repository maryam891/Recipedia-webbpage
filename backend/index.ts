import express from "express";
import pg from "pg";
const { Pool } = pg;
import connectPgSimple from "connect-pg-simple";
import dotenv from "dotenv";
dotenv.config();
import cors from "cors";
import session from "express-session";

const PgSession = connectPgSimple(session);

declare module "express-session" {
  interface SessionData {
    Users: {
      name: string;
      email: string;
      id: number;
    };
  }
}
const app = express();

app.use(
  cors({
    origin: [
      "http://localhost:5173",
      "http://localhost:5174",
      "https://recipedia-webpage.vercel.app",
    ],
    credentials: true,
    methods: ["GET", "POST", "PUT", "DELETE", "OPTIONS"],
    allowedHeaders: ["Content-Type", "Authorization"],
  }),
);
app.options("*", cors());

app.use(express.json());

app.set("trust proxy", 1);
console.log("DATABASE_URL exists:", !!process.env.DATABASE_URL);
console.log("DATABASE_URL host:", process.env.DATABASE_URL?.split("@")[1]);
const database = new Pool({
  connectionString: process.env.DATABASE_URL,
});

(async () => {
  try {
    console.log("Opening database...");

    console.log("Database opened successfully");

    await database.query("SELECT 1");
    console.log("Database connected successfully");

    const bcrypt = require("bcrypt");
    //Expire cookie time
    const twoHours = 1000 * 60 * 60 * 2;
    const IN_Prod = process.env.NODE_ENV === "production";

    app.use(
      session({
        store: new PgSession({
          pool: database,
          tableName: "session",
          createTableIfMissing: true,
        }),
        secret: process.env.SESSION_SECRET ?? "fallback-secret",
        resave: false,
        saveUninitialized: false,
        cookie: {
          httpOnly: true,
          secure: IN_Prod,
          maxAge: twoHours,
          sameSite: "lax",
        },
      }),
    );

    //Get user that is logged in
    app.get("/api/user", async (req, res) => {
      if (req.session.Users) {
        res.status(200).send(req.session.Users);
      } else {
        res.status(401).send({ message: "User does not exist" });
      }
    });

    //Remove user account
    app.delete("/api/removeAccount", async (request, response) => {
      try {
        await database.query("DELETE FROM FavoriteRecipes WHERE userId=$1", [
          request.body.id,
        ]);
        await database.query("DELETE FROM users WHERE id=$1", [
          request.body.id,
        ]);

        response.status(200).send({ message: "Account removed!" });
      } catch (error) {
        console.log(error);
        response.status(400).send({ message: "Failed to remove account" });
      }
    });

    //Signup
    app.post("/api/signup", async (req, res) => {
      try {
        //Hash password using bcrypt function to get unique string data
        const hashedPassword = await bcrypt.hash(req.body.password, 10);
        let alreadyExist = await database.query(
          "SELECT Email FROM Users WHERE Email=$1",
          [req.body.email],
        );
        if (alreadyExist.rows.length > 0) {
          res
            .status(409)
            .send({ message: "User already exist with the same email adress" });
          return;
        }
        let signedUpUser = await database.query(
          "INSERT INTO Users(email, password, name) VALUES($1,$2, $3) RETURNING id",
          [req.body.email, hashedPassword, req.body.name],
        );

        const cookieUserInfo = (req.session.Users = {
          name: req.body.name,
          email: req.body.email,
          id: signedUpUser.rows[0].id,
        });

        if (cookieUserInfo) {
          res.status(200).send(cookieUserInfo);
        } else {
          res.status(400).send({ message: "Could not create user" });
        }
      } catch (error) {
        console.log(error);
      }
    });

    //logout the user
    app.post("/api/logout", async (req: any, res: any) => {
      req.session.destroy((error: any) => {
        if (error) {
          res.status(400).send({ message: "Could not logout" });
        }
      });
      res.clearCookie();
      res.status(200).send({ message: "Logged out" });
    });

    app.post("/api/Login", async (req, res) => {
      try {
        let loggedInUsers = await database.query(
          "SELECT * FROM Users WHERE email = $1",
          [req.body.email],
        );
        console.log(loggedInUsers.rows);
        //Get first user data
        let user = loggedInUsers.rows[0];
        let cookieUserInfo;
        //If there is a user with a matching email and password that matches the stored password, then save the session.
        // This also handles both bcrypt-hashed passwords and older plain-text values.

        if (loggedInUsers.rows.length > 0 && user) {
          const passwordMatches =
            (await bcrypt.compare(req.body.password, user.password)) ||
            req.body.password === user.password;

          if (passwordMatches) {
            cookieUserInfo = req.session.Users = {
              name: user.name,
              email: user.email,
              id: user.id,
            };
          }
        }
        if (cookieUserInfo) {
          res.status(200).send(cookieUserInfo);
        } else {
          res.status(401).send({ message: "Invalid email or password" });
        }
      } catch (error) {
        console.log(error);
      }
    });

    //Get favorite recipes
    app.get("/api/getFavoriteRecipes", async (req, res) => {
      try {
        const userId = req.session.Users?.id;
        let favs = await database.query(
          `SELECT recipes.id, name, cookTimeMinutes, servings, prepTimeMinutes, recipe_image, cuisine, rating FROM recipes INNER JOIN FavoriteRecipes ON recipes.id = FavoriteRecipes.recipe_id WHERE FavoriteRecipes.userId = $1`,
          [userId],
        );
        res.status(200).send(favs.rows);
      } catch (error) {
        console.log(error);
        res.status(400).send({ message: "Not logged in" });
      }
    });

    //Remove favorite recipe
    app.delete("/api/removeFavoriteRecipe", async (req, res) => {
      try {
        const userId = req.session.Users?.id;
        let delFavRecipe = await database.query(
          "DELETE FROM FavoriteRecipes WHERE userId=$1 AND recipe_id=$2",
          [userId, req.body.recipe_id],
        );
        res.status(200).send(delFavRecipe);
      } catch (error) {
        console.log(error);
        res.status(400).send({ message: "Could not remove recipe" });
      }
    });

    //Add favorite recipe
    app.post("/api/addFavoriteRecipe", async (req, res) => {
      try {
        const userId = req.session.Users?.id;
        const recipeId = req.body.recipe_id;
        let addFav = await database.query(
          "INSERT INTO FavoriteRecipes(userId, recipe_id) VALUES($1,$2)",
          [userId, recipeId],
        );
        res.status(200).send(addFav.rows[0]);
      } catch (error) {
        console.log(error);
        res.status(400).send({ message: "could not add to favorites" });
      }
    });

    //Get recipes
    app.get("/api/recipes", async (req, res) => {
      try {
        let recipes = await database.query(
          "SELECT name, cuisine, recipe_image, cookTimeMinutes, servings, prepTimeMinutes, rating, id FROM recipes",
        );
        res.status(200).send(recipes.rows);
      } catch (error) {
        console.log(error);
        res.status(400).send({ message: "Could not get recipes" });
      }
    });

    //Get popular recipes
    app.get("/api/popular", async (req, res) => {
      try {
        let popularRecipes = await database.query(
          "SELECT name, cuisine, recipe_image, rating, id FROM recipes WHERE rating > 4.6 ",
        );
        res.status(200).send(popularRecipes.rows);
      } catch {
        res.status(400).send({ message: "Could not get favorite recipes" });
      }
    });
    //Get selected recipe for recipe modal
    app.get("/api/recipes/:id", async (req, res) => {
      try {
        let instructionsDetail = await database.query(
          `SELECT recipes.id,instruction,name,cookTimeMinutes, servings,prepTimeMinutes
         FROM recipes INNER JOIN instructions
         ON recipes.id=instructions.recipe_id
         WHERE recipes.id= $1`,
          [req.params.id],
        );

        let ingredientsDetail = await database.query(
          `SELECT recipes.id,ingredient,name,cookTimeMinutes, servings,prepTimeMinutes
         FROM recipes INNER JOIN ingredients
         ON recipes.id=ingredients.recipe_id
         WHERE recipes.id= $1`,
          [req.params.id],
        );

        res.status(200).send({
          ingredientsSection: ingredientsDetail.rows,
          instructionsSection: instructionsDetail.rows,
        });
      } catch (error) {
        console.log(error);
        res.status(400).send({ message: "Could not get recipe" });
      }
    });

    app.listen(8080, () => {
      console.log("Server running on http://localhost:8080");
    });
  } catch (err) {
    console.error("Failed to start server:", err);
  }
})();
