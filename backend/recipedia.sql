
-- CREATE TABLE FavoriteRecipes(
--     favorite_id INTEGER PRIMARY KEY,
--     userId INTEGER,
--     recipe_id INTEGER,
--     FOREIGN KEY(userId) REFERENCES Users(id),
--     FOREIGN KEY(recipe_id) REFERENCES recipes(id)
-- )
-- Create TABLE Users (
--     id INTEGER PRIMARY KEY,
--     name TEXT,
--     email TEXT NOT NULL,
--     password TEXT NOT NULL
-- )

-- INSERT INTO Users (name, email, password) VALUES ('testUser', 'testUser@gmail.com', 'test123');


-- CREATE TABLE recipes (
--   id INTEGER PRIMARY KEY,
--   name TEXT NOT NULL,
--   cuisine TEXT,
--   rating REAL,
--   cookTimeMinutes INTEGER,
--   prepTimeMinutes INTEGER,
--   servings INTEGER,
--      recipe_image TEXT UNIQUE
-- );

-- INSERT INTO recipes (name, cuisine, rating, cookTimeMinutes, prepTimeMinutes, servings, recipe_image) VALUES ('Classic Margherita Pizza', 'Italian', 4.6, 15, 20, 4, 'https://cdn.dummyjson.com/recipe-images/1.webp');

-- INSERT INTO recipes (name, cuisine, rating, cookTimeMinutes, prepTimeMinutes, servings, recipe_image) VALUES ('Vegetarian Stir-Fry', 'Asian', 4.7, 20, 15, 3, 'https://cdn.dummyjson.com/recipe-images/2.webp');

-- INSERT INTO recipes (name, cuisine, rating, cookTimeMinutes, prepTimeMinutes, servings, recipe_image) VALUES ('Chocolate Chip Cookies', 'American', 4.9, 10, 15, 24, 'https://cdn.dummyjson.com/recipe-images/3.webp');

-- INSERT INTO recipes (name, cuisine, rating, cookTimeMinutes, prepTimeMinutes, servings, recipe_image) VALUES ('Chicken Alfredo Pasta', 'Italian', 4.9, 20, 15, 4, 'https://cdn.dummyjson.com/recipe-images/4.webp');

-- INSERT INTO recipes (name, cuisine, rating, cookTimeMinutes, prepTimeMinutes, servings,recipe_image) VALUES ('Mango Salsa Chicken', 'Mexican', 4.9, 25, 15, 3, 'https://cdn.dummyjson.com/recipe-images/5.webp');

-- INSERT INTO recipes (name, cuisine, rating, cookTimeMinutes, prepTimeMinutes, servings,recipe_image) VALUES ('Quinoa Salad with Avocado', 'Medditerranean', 4.4, 15, 20, 4, 'https://cdn.dummyjson.com/recipe-images/6.webp');

-- INSERT INTO recipes (name, cuisine, rating, cookTimeMinutes, prepTimeMinutes, servings, recipe_image) VALUES ('Tomato Basil Bruschetta', 'Italian', 4.7, 10, 15, 6,'https://cdn.dummyjson.com/recipe-images/7.webp' );

-- INSERT INTO recipes (name, cuisine, rating, cookTimeMinutes, prepTimeMinutes, servings,recipe_image) VALUES ('Beef and Broccoli Stir-Fry', 'Asian', 4.7, 15, 20, 4,'https://cdn.dummyjson.com/recipe-images/8.webp');

-- INSERT INTO recipes (name, cuisine, rating, cookTimeMinutes, prepTimeMinutes, servings,recipe_image) VALUES ('Caprese Salad', 'Italian', 4.6, 5, 10, 2,'https://cdn.dummyjson.com/recipe-images/9.webp');

-- INSERT INTO recipes (name, cuisine, rating, cookTimeMinutes, prepTimeMinutes, servings,recipe_image) VALUES ('Shrimp Scampi Pasta', 'Italian', 4.3, 20, 15, 3, 'https://cdn.dummyjson.com/recipe-images/10.webp');

-- INSERT INTO recipes (name, cuisine, rating, cookTimeMinutes, prepTimeMinutes, servings,recipe_image) VALUES ('Chicken Biryani', 'Pakistani', 5, 45, 30, 6,'https://cdn.dummyjson.com/recipe-images/11.webp');

-- INSERT INTO recipes (name, cuisine, rating, cookTimeMinutes, prepTimeMinutes, servings,recipe_image) VALUES ('Chicken Karahi', 'Pakistani', 4.8, 30, 20, 4,'https://cdn.dummyjson.com/recipe-images/12.webp');

-- INSERT INTO recipes (name, cuisine, rating, cookTimeMinutes, prepTimeMinutes, servings,recipe_image) VALUES ('Aloo Keema', 'Pakistani', 4.6, 35, 25, 5,'https://cdn.dummyjson.com/recipe-images/13.webp');

-- INSERT INTO recipes (name, cuisine, rating, cookTimeMinutes, prepTimeMinutes, servings,recipe_image) VALUES ('Chapli Kebabs', 'Pakistani', 4.7, 20, 20, 4,'https://cdn.dummyjson.com/recipe-images/14.webp');

-- INSERT INTO recipes (name, cuisine, rating, cookTimeMinutes, prepTimeMinutes, servings,recipe_image) VALUES ('Saag (Spinach) with Makki di Roti', 'Pakistani', 4.3, 30, 40, 3,'https://cdn.dummyjson.com/recipe-images/15.webp');

-- INSERT INTO recipes (name, cuisine, rating, cookTimeMinutes, prepTimeMinutes, servings,recipe_image) VALUES ('Japanese Ramen soup', 'Japanese', 4.9, 25, 20, 2,'https://cdn.dummyjson.com/recipe-images/16.webp');

-- INSERT INTO recipes (name, cuisine, rating, cookTimeMinutes, prepTimeMinutes, servings,recipe_image) VALUES ('Moroccan Chickpea Tagine', 'Moroccan', 4.5, 30, 15, 4,'https://cdn.dummyjson.com/recipe-images/17.webp');

-- INSERT INTO recipes (name, cuisine, rating, cookTimeMinutes, prepTimeMinutes, servings,recipe_image) VALUES ('Korean Bibimbap','Korean', 4.9, 20, 30, 2,'https://cdn.dummyjson.com/recipe-images/18.webp');

-- INSERT INTO recipes (name, cuisine, rating, cookTimeMinutes, prepTimeMinutes, servings,recipe_image) VALUES ('Greek Moussaka','Greek', 4.3, 45, 45, 6,'https://cdn.dummyjson.com/recipe-images/19.webp');

-- INSERT INTO recipes (name, cuisine, rating, cookTimeMinutes, prepTimeMinutes, servings,recipe_image) VALUES ('Butter Chicken (Murgh Makhani)','Pakistani/Indian', 4.5, 25, 30, 4,'https://cdn.dummyjson.com/recipe-images/20.webp');

-- INSERT INTO recipes (name, cuisine, rating, cookTimeMinutes, prepTimeMinutes, servings,recipe_image) VALUES ('Thai Green Curry', 'Thai', 4.2, 30, 20, 4,'https://cdn.dummyjson.com/recipe-images/21.webp');

-- INSERT INTO recipes (name, cuisine, rating, cookTimeMinutes, prepTimeMinutes, servings,recipe_image) VALUES ('Mango Lassi','Indian', 4.7, 5, 10, 2,'https://cdn.dummyjson.com/recipe-images/22.webp');

-- INSERT INTO recipes (name, cuisine, rating, cookTimeMinutes, prepTimeMinutes, servings,recipe_image) VALUES ('Italian Tiramisu','Italian', 4.6, 15, 30, 6,'https://cdn.dummyjson.com/recipe-images/23.webp');

-- INSERT INTO recipes (name, cuisine, rating, cookTimeMinutes, prepTimeMinutes, servings,recipe_image) VALUES ('Turkish Kebabs','Turkish', 4.6, 15, 25, 4,'https://cdn.dummyjson.com/recipe-images/24.webp');

-- INSERT INTO recipes (name, cuisine, rating, cookTimeMinutes, prepTimeMinutes, servings,recipe_image) VALUES ('Blueberry Banana Smoothie','American', 4.8, 5, 10, 1,'https://cdn.dummyjson.com/recipe-images/25.webp');

-- INSERT INTO recipes (name, cuisine, rating, cookTimeMinutes, prepTimeMinutes, servings,recipe_image) VALUES ('Mexican Street Corn (Elote)', 'Mexican', 4.6, 15, 15, 4,'https://cdn.dummyjson.com/recipe-images/26.webp');

-- INSERT INTO recipes (name, cuisine, rating, cookTimeMinutes, prepTimeMinutes, servings,recipe_image) VALUES ('Russian Borscht','Russian', 4.3, 40, 30, 6,'https://cdn.dummyjson.com/recipe-images/27.webp');

-- INSERT INTO recipes (name, cuisine, rating, cookTimeMinutes, prepTimeMinutes, servings,recipe_image) VALUES ('South Indian Masala Dosa','Indian', 4.4, 20, 40, 4,'https://cdn.dummyjson.com/recipe-images/28.webp');

-- INSERT INTO recipes (name, cuisine, rating, cookTimeMinutes, prepTimeMinutes, servings,recipe_image) VALUES ('Lebanese Falafel Wrap','Lebanese', 4.4, 10, 15, 2,'https://cdn.dummyjson.com/recipe-images/29.webp');

-- INSERT INTO recipes (name, cuisine, rating, cookTimeMinutes, prepTimeMinutes, servings,recipe_image) VALUES ('Brazilian Caipirinha','Brazilian', 4.4, 5, 5, 1,'https://cdn.dummyjson.com/recipe-images/30.webp');


-- CREATE TABLE ingredients (
--   id INTEGER PRIMARY KEY,
--   recipe_id INTEGER,
--   ingredient TEXT NOT NULL,
--   FOREIGN KEY (recipe_id) REFERENCES recipes(id)
-- );

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (1, 'Store bought or home made Pizza dough');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (1, 'Tomato sauce');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (1, 'Fresh mozzarella cheese');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (1, 'Fresh basil leaves');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (1, 'Olive oil');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (1, 'Salt and pepper to taste');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (2, 'Tofu, cubed');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (2, 'Broccoli florets');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (2, 'Carrots, sliced');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (2, 'Soy sauce');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (2, 'Ginger minced');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (2, 'Garlic minced');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (2, 'Sesame oil');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (2, 'Cooked rice for serving');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (3, 'All-purpose flour');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (3, 'Butter softened');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (3, 'Brown sugar');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (3, 'White sugar');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (3, 'Eggs');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (3, 'Vanilla extract');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (3, 'Baking soda');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (3, 'Salt');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (3, 'Chocolate chips');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (4, 'Fettuccine pasta');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (4, 'Chicken breast, sliced');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (4, 'Heavy cream');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (4, 'Parmesan cheese, grated');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (4, 'Garlic minced');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (4, 'Butter');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (4, 'Salt and pepper to taste');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (4, 'Fresh parsley for garnish');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (5, 'Chicken thighs');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (5, 'Mango diced');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (5, 'Red onion, finely chopped');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (5, 'Cilantro chopped');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (5, 'Lime juice');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (5, 'Jalapeño, minced');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (5, 'Salt and pepper to taste');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (5, 'Cooked rice for serving');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (6, 'Quinoa, cooked');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (6, 'Avocado diced');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (6, 'Cherry tomatoes, halved');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (6, 'Cucumber diced');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (6, 'Red bell pepper, diced');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (6, 'Feta cheese, crumbled');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (6, 'Lemon vinaigrette dressing');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (6, 'Salt and pepper to taste');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (7, 'Baguette, sliced');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (7, 'Tomatoes, diced');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (7, 'Fresh basil, chopped');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (7, 'Garlic cloves, minced');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (7, 'Balsamic glaze');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (7, 'Olive oil');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (7, 'Salt and pepper to taste');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (8, 'Beef sirloin, thinly sliced');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (8, 'Broccoli florets');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (8, 'Soy sauce');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (8, 'Oyster sauce');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (8, 'Sesame oil');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (8, 'Garlic minced');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (8, 'Ginger minced');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (8, 'Cornstarch');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (8, 'Cooked with rice for serving');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (9, 'Tomatoes sliced');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (9, 'Fresh mozzarella cheese, sliced');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (9, 'Fresh basil leaves');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (9, 'Balsamic glaze');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (9, 'Extra virgin olive oil');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (9, 'Salt and pepper to taste');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (10, 'Linguine pasta');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (10, 'Shrimp, peeled and deveined');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (10, 'Garlic minced');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (10, 'White wine');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (10, 'Lemon juice');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (10, 'Red pepper flakes');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (10, 'Fresh parsley, chopped');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (10, 'Salt and pepper to taste');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (11, 'Basmati rice');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (11, 'Chicken, cut into pieces');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (11, 'Onions, thinly sliced');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (11, 'Tomatoes chopped');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (11, 'Yogurt');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (11, 'Ginger-garlic paste');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (11, 'Biryani masala');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (11, 'Green chilies, sliced');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (11, 'Fresh coriander leaves');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (11, 'Mint leaves');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (11, 'Ghee');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (11, 'Salt to taste');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (12, 'Chicken, cut into pieces');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (12, 'Tomatoes chopped');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (12, 'Green chilies sliced');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (12, 'Ginger julienned');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (12, 'Garlic minced');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (12, 'Coriander powder');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (12, 'Cumin powder');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (12, 'Red chili powder');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (12, 'Garam masala');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (12, 'Cooking oil');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (12, 'Fresh coriander leaves');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (12, 'Salt to taste');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (13, 'Ground beef');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (13, 'Potatoes, peeled and diced');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (13, 'Onions finley chopped');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (13, 'Tomatoes chopped');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (13, 'Ginger-garlic paste');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (13, 'Cumin powder');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (13, 'Coriander powder');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (13, 'Tumeric powder');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (13, 'Red chili powder');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (13, 'Cooking oil');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (13, 'Fresh coriander leaves');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (13, 'Salt to taste');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (14, 'Ground beef');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (14, 'Onions finely chopped');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (14, 'Green chilies chopped');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (14, 'Coriander leaves chopped');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (14, 'Pomegrante seeds');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (14, 'Ginger-garlic paste');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (14, 'Cumin powder');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (14, 'Coriander powder');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (14, 'Red chili powder');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (14, 'one egg');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (14, 'cooking oil');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (15, 'Mustard greens, washed and chopped');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (15, 'Spinach, washed and chopped');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (15, 'Cornmeal (makki ka atta)');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (15, 'Onions finely chopped');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (15, 'Green chilies chopped');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (15, 'Ginger grated');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (15, 'Ghee');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (15, 'Salt to taste');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (16, 'Ramen noodles');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (16, 'Chicken broth');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (16, 'Soy sauce');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (16, 'Mirin');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (16, 'Sesame oil');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (16, 'Shiitake mushrooms, sliced');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (16, 'Bok choy chopped');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (16, 'Green onions, sliced');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (16, 'Soft boiled eggs');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (16, 'Grilled chicken slices');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (16, 'Seaweed (Nori)');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (17, 'Chickpeas cooked');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (17, 'Tomatoes chopped');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (17, 'Carrots diced');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (17, 'Onions finely chopped');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (17, 'Garlic minced');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (17, 'Cumin');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (17, 'Coriander');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (17, 'Chinnamon');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (17, 'Paprika');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (17, 'Vegetable broth');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (17, 'Olives');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (17, 'Fresh cilantro chopped');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (18, 'Cooked white rice');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (18, 'Beef bulgogi (marinated and grilled beef slices)');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (18, 'Carrots, julienned and sautéed');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (18, 'Spinach, blanched and seasoned');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (18, 'Zucchini, sliced and grilled');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (18, 'Bean sprouts blanched');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (18, 'Fried egg');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (18, 'Gochujang (Korean red pepper paste)');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (18, 'Sesame oil');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (18, 'Toasted Sesame seeds');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (19, 'Eggplants, sliced');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (19, 'Ground lamb or beef');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (19, 'Onions finely chopped');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (19, 'Garlic minced');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (19, 'Tomatoes crushed');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (19, 'Red wine');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (19, 'Cinnamon');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (19, 'Allspice');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (19, 'Nutmeg');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (19, 'Olive oil');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (19, 'Milk');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (19, 'Flour');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (19, 'Parmesan cheese');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (19, 'Egg yolks');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (20, 'Chicken thighs, boneless and skinless');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (20, 'Yogurt');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (20, 'Ginger-garlic paste');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (20, 'Garam masala');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (20, 'Kashmiri red chili powder');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (20, 'Tomato puree');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (20, 'Butter');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (20, 'Heavy cream');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (20, 'Kasuri methi (dried fenugreek leaves)');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (20, 'Sugar');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (20, 'Salt to taste');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (21, 'Chicken thighs, boneless and skinless');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (21, 'Green curry paste');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (21, 'Coconut milk');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (21, 'Fish sauce');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (21, 'Sugar');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (21, 'Eggplant sliced');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (21, 'Bell peppers sliced');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (21, 'Basil leaves');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (21, 'Jasmine rice for serving');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (22, 'Ripe mango, peeled and diced');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (22, 'Yogurt');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (22, 'Milk');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (22, 'Honey');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (22, 'Cardamom powder');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (22, 'Ice cubes');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (23, 'Espresso, brewed and cooled');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (23, 'Ladyfinger cookies');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (23, 'Mascarpone cheese');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (23, 'Heavy cream');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (23, 'Sugar');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (23, 'Cocoa powder');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (24, 'Ground lamb or beef');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (24, 'Onions grated');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (24, 'Garlic minced');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (24, 'Parsley finely chopped');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (24, 'Cumin');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (24, 'Coriander');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (24, 'Red pepper flakes');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (24, 'Salt and pepper to taste');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (24, 'Flatbread for serving');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (24, 'Tahini sauce');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (25, 'Blueberries, fresh or frozen');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (25, 'Banana, peeled and sliced');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (25, 'Greek yogurt');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (25, 'Almond milk');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (25, 'Honey');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (25, 'Chia seeds(optional)');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (26, 'Corn on the cob');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (26, 'Mayonnaise');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (26, 'Cotija cheese, crumbled');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (26, 'Chili powder');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (26, 'Lime wedges');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (27, 'Beets, peeled and shredded');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (27, 'Cabbage shredded');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (27, 'Potatoes diced');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (27, 'Onions finely chopped');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (27, 'Carrots grated');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (27, 'Tomato paste');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (27, 'Beef or vegetable broth');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (27, 'Garlic minced');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (27, 'Bay leaves');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (27, 'Sour cream for serving');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (28, 'Dosa batter (fermented rice and urad dal batter)');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (28, 'Potatoes boiled and mashed');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (28, 'Onions finely chopped');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (28, 'Mustard seeds');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (28, 'Cumin seeds');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (28, 'Curry leaves');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (28, 'Tumeric powder');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (28, 'Green chilies chopped');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (28, 'Ghee');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (28, 'Coconut chutney for serving');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (29, 'Falafel balls');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (29, 'Whole wheat or regular wraps');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (29, 'Tomatoes diced');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (29, 'Cucumbers sliced');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (29, 'Red onions thinly sliced');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (29, 'Whole wheat or regular wraps');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (29, 'Lettuce shredded');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (29, 'Tahini sauce');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (29, 'Fresh parsley chopped');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (30, 'Cachaça (Brazilian sugarcane spirit)');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (30, 'Lime cut into wedges');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (30, 'Granulated sugar');

-- INSERT INTO ingredients (recipe_id, ingredient) VALUES (30, 'Ice cubes');


-- CREATE TABLE instructions(id INTEGER PRIMARY KEY, recipe_id INTEGER, instruction TEXT NOT NULL, FOREIGN KEY (recipe_id) REFERENCES recipes(id));

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 1, 'Preheat the oven to 475°F (245°C).');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 1, 'Roll out the pizza dough and spread tomato sauce evenly.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 1, 'Top with slices of fresh mozzarella and fresh basil leaves.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 1, 'Drizzle with olive oil and season with salt and pepper.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES (1, 'Slice and serve hot.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 2, 'In a wok, heat sesame oil over medium-high heat.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 2, 'Add minced ginger and garlic, sauté until fragrant.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 2, 'Add cubed tofu and stir-fry until golden brown.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 2, 'Add broccoli, carrots, and bell peppers. Cook until vegetables are tender-crisp.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 2, 'Pour soy sauce over the stir-fry and toss to combine.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 2, 'Serve over cooked rice.');

-- INSERT INTO  instructions(recipe_id, instruction) VALUES ( 3, 'Preheat the oven to 350°F (175°C).');

-- INSERT INTO  instructions(recipe_id, instruction) VALUES ( 3, 'In a bowl, cream together softened butter, brown sugar, and white sugar.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 3, 'Beat in eggs one at a time, then stir in vanilla extract.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 3, 'Combine flour, baking soda, and salt. Gradually add to the wet ingredients.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 3, 'Fold in chocolate chips.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 3, 'Drop rounded tablespoons of dough onto ungreased baking sheets.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 3, 'Bake for 10-12 minutes or until edges are golden brown.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 3, 'Allow cookies to cool on the baking sheet for a few minutes before transferring to a wire rack.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 4, 'Cook fettuccine pasta according to package instructions.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 4, 'In a pan, sauté sliced chicken in butter until fully cooked.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 4, 'Add minced garlic and cook until fragrant.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 4, 'Pour in heavy cream and grated Parmesan cheese. Stir until the cheese is melted.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 4, 'Season with salt and pepper to taste.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 4, 'Combine the Alfredo sauce with cooked pasta.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 4, 'Garnish with fresh parsley before serving.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 5, 'Season chicken thighs with salt and pepper.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 5, 'Grill or bake chicken until fully cooked.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 5, 'In a bowl, combine diced mango, chopped red onion, cilantro, minced jalapeño, and lime juice.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 5, 'Dice the cooked chicken and mix it with the mango salsa.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 5, 'Serve over cooked rice.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 6, 'In a large bowl, combine cooked quinoa, diced avocado, halved cherry tomatoes, diced cucumber, diced red bell pepper, and crumbled feta cheese.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 6, 'Drizzle with lemon vinaigrette dressing and toss to combine.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 6, 'Season with salt and pepper to taste.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 6, 'Chill in the refrigerator before serving.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 7, 'Preheat the oven to 375°F (190°C).');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 7, 'Place baguette slices on a baking sheet and toast in the oven until golden brown.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 7, 'In a bowl, combine diced tomatoes, chopped fresh basil, minced garlic, and a drizzle of olive oil.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 7, 'Season with salt and pepper to taste.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 7, 'Top each toasted baguette slice with the tomato-basil mixture.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 7, 'Drizzle with balsamic glaze before serving.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 8, 'In a bowl, mix soy sauce, oyster sauce, sesame oil, and cornstarch to create the sauce.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 8, 'In a wok, stir-fry thinly sliced beef until browned. Remove from the wok.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 8, 'Stir-fry broccoli florets, minced garlic, and minced ginger in the same wok.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 8, 'Stir until everything is coated and heated through.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 8, 'Serve over cooked white rice.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 9, 'Arrange alternating slices of tomatoes and fresh mozzarella on a serving platter.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 9, 'Tuck fresh basil leaves between the slices.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 9, 'Drizzle with balsamic glaze and extra virgin olive oil.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 9, 'Season with salt and pepper to taste.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 9, 'Drizzle with balsamic glaze and extra virgin olive oil.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 9, 'Season with salt and pepper to taste.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 9, 'Serve immediately as a refreshing salad.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 10, 'Cook linguine pasta according to package instructions.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 10, 'In a skillet, sauté minced garlic in olive oil until fragrant.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 10, 'Add shrimp and cook until pink and opaque.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 10, 'Pour in white wine and lemon juice. Simmer until the sauce slightly thickens.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 10, 'Season with red pepper flakes, salt, and pepper.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 10, 'Toss cooked linguine in the shrimp scampi sauce.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 10, 'Garnish with chopped fresh parsley before serving.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 11, 'Marinate chicken with yogurt, ginger-garlic paste, biryani masala, and salt.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 11, 'In a pot, sauté sliced onions until golden brown. Remove half for later use.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 11, 'Layer marinated chicken, chopped tomatoes, half of the fried onions, and rice in the pot.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 11, 'Top with ghee, green chilies, fresh coriander leaves, mint leaves, and the remaining fried onions.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 11, 'Cover and cook on low heat until the rice is fully cooked and aromatic.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 11, 'Serve hot, garnished with additional coriander and mint leaves.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 12, 'In a wok (karahi), heat cooking oil and sauté minced garlic until golden brown.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 12, 'Add chicken pieces and cook until browned on all sides.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 12, 'Add chopped tomatoes, green chilies, ginger, and spices. Cook until tomatoes are soft.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 12, 'Cover and simmer until the chicken is tender and the oil separates from the masala.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 12, 'Garnish with fresh coriander leaves and serve hot with naan or rice.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 13, 'In a pan, heat cooking oil and sauté chopped onions until golden brown.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 13, 'Add ginger-garlic paste and sauté until fragrant.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 13, 'Add ground beef and cook until browned. Drain excess oil if needed.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 13, 'Add diced potatoes, chopped tomatoes, and spices. Mix well.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 13, 'Cover and simmer until the potatoes are tender and the masala is well-cooked.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 13, 'Garnish with fresh coriander leaves and serve hot with naan or rice.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 14, 'In a large bowl, mix ground beef, chopped onions, tomatoes, green chilies, coriander leaves, and pomegranate seeds.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 14, 'Add ginger-garlic paste, cumin powder, coriander powder, red chili powder, and salt. Mix well.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 14, 'Add an egg to bind the mixture and form into round flat kebabs.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 14, 'Heat cooking oil in a pan and shallow fry the kebabs until browned on both sides.');

-- INSERT INTO  instructions(recipe_id, instruction) VALUES ( 14, 'Serve hot with naan or mint chutney.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 15, 'Boil mustard greens and spinach until tender. Drain and blend into a coarse paste.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 15, 'In a pan, sauté chopped onions, green chilies, and grated ginger in ghee until golden brown.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 15, 'Add the greens paste and cook until it thickens.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 15, 'Meanwhile, knead cornmeal with water to make a dough. Roll into rotis (flatbreads).');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 15, 'Cook the rotis on a griddle until golden brown.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 15, 'Serve hot saag with makki di roti and a dollop of ghee.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 16, 'Cook ramen noodles according to package instructions and set aside.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 16, 'In a pot, combine chicken broth, soy sauce, mirin, and sesame oil. Bring to a simmer.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 16, 'Add sliced shiitake mushrooms and chopped bok choy. Cook until vegetables are tender.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 16, 'Divide the cooked noodles into serving bowls and ladle the hot broth over them.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 16, 'Top with green onions, soft-boiled eggs, grilled chicken slices, and nori.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 16, 'Serve hot and enjoy the authentic Japanese ramen!');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 17, 'In a tagine or large pot, sauté chopped onions and minced garlic until softened.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 17, 'Add diced carrots, chopped tomatoes, and cooked chickpeas.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 17, 'Season with cumin, coriander, cinnamon, and paprika. Stir to coat.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 17, 'Pour in vegetable broth and bring to a simmer. Cook until carrots are tender.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 17, 'Stir in olives and garnish with fresh cilantro before serving.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 17, 'Serve this flavorful Moroccan dish with couscous or crusty bread.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 18, 'Arrange cooked white rice in a bowl.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 18, 'Top with beef bulgogi, sautéed carrots, seasoned spinach, grilled zucchini, and blanched bean sprouts.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 18, 'Place a fried egg on top and drizzle with gochujang and sesame oil.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 18, 'Sprinkle with toasted sesame seeds before serving.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 18, 'Mix everything together before enjoying this delicious Korean bibimbap!');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 18, 'Feel free to customize with additional vegetables or protein.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 19, 'Preheat oven to 375°F (190°C).');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 19, 'Sauté sliced eggplants in olive oil until browned. Set aside.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 19, 'In the same pan, cook chopped onions and minced garlic until softened.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 19, 'Add ground lamb or beef and brown. Stir in crushed tomatoes, red wine, and spices.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 19, 'In a separate saucepan, make béchamel sauce: melt butter, whisk in flour, add milk, and cook until thickened.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 19, 'Remove from heat and stir in Parmesan cheese and egg yolks.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 19, 'In a baking dish, layer eggplants and meat mixture. Top with béchamel sauce.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 19, 'Bake for 40-45 minutes until golden brown. Let it cool before slicing.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 19, 'Serve slices of moussaka warm and enjoy this Greek classic!');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 20, 'Marinate chicken thighs in a mixture of yogurt, ginger-garlic paste, garam masala, and Kashmiri red chili powder.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 20, 'In a pan, melt butter and sauté the marinated chicken until browned.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 20, 'Add tomato puree and cook until the oil separates. Stir in heavy cream.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 20, 'Sprinkle kasuri methi, sugar, and salt. Simmer until the chicken is fully cooked.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 20, 'Serve this creamy butter chicken over rice or with naan for an authentic Pakistani/Indian experience.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 21, 'In a pot, simmer green curry paste in coconut milk.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 21, 'Add chicken, fish sauce, and sugar. Cook until chicken is tender.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 21, 'Stir in sliced eggplant and bell peppers. Simmer until vegetables are cooked.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 21, 'Garnish with fresh basil leaves.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 21, 'Serve hot over jasmine rice and enjoy this Thai classic!');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 22, 'In a blender, combine diced mango, yogurt, milk, honey, and cardamom powder.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 22, 'Blend until smooth and creamy.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 22, 'Add ice cubes and blend again until the lassi is chilled.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 22, 'Pour into glasses and garnish with a sprinkle of cardamom.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 22, 'Enjoy this refreshing Mango Lassi!');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 23, 'In a bowl, whip heavy cream until stiff peaks form.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 23, 'In another bowl, mix mascarpone cheese and sugar until smooth.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 23, 'Gently fold the whipped cream into the mascarpone mixture.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 23, 'Dip ladyfinger cookies into brewed espresso and layer them in a serving dish.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 23, 'Spread a layer of the mascarpone mixture over the cookies.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 23, 'Repeat layers and finish with a dusting of cocoa powder.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 23, 'Chill in the refrigerator for a few hours before serving.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 23, 'Indulge in the decadence of this classic Italian Tiramisu!');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 24, 'In a bowl, mix ground meat, grated onions, minced garlic, chopped parsley, and spices.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 24, 'Form the mixture into kebab shapes and grill until fully cooked.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 24, 'Serve the kebabs on flatbread with a drizzle of tahini sauce.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 24, 'Enjoy these flavorful Turkish Kebabs with your favorite sides.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 25, 'In a blender, combine blueberries, banana, Greek yogurt, almond milk, and honey.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 25, 'Blend until smooth and creamy.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 25, 'Add chia seeds for extra nutrition and blend briefly.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 25, 'Pour into a glass and enjoy this nutritious Blueberry Banana Smoothie!');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 26, 'Grill or roast corn on the cob until kernels are charred.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 26, 'Brush each cob with mayonnaise, then sprinkle with crumbled Cotija cheese and chili powder.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 26, 'Serve with lime wedges for squeezing over the top.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 26, 'Enjoy this delicious and flavorful Mexican Street Corn!');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 27, 'In a pot, sauté chopped onions and garlic until softened.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 27, 'Add shredded beets, cabbage, diced potatoes, grated carrots, and tomato paste.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 27, 'Pour in broth and add bay leaves. Simmer until vegetables are tender.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 27, 'Serve hot with a dollop of sour cream on top.');

-- INSERT INTO  instructions(recipe_id, instruction) VALUES ( 27, 'Enjoy the hearty and comforting flavors of Russian Borscht!');

-- INSERT INTO  instructions(recipe_id, instruction) VALUES ( 28, 'In a pan, heat ghee and add mustard seeds, cumin seeds, and curry leaves.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 28, 'Add chopped onions, green chilies, and turmeric powder. Sauté until onions are golden brown.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 28, 'Mix in boiled and mashed potatoes. Cook until well combined and seasoned.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 28, 'Spread dosa batter on a hot griddle to make thin pancakes.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 28, 'Place a spoonful of the potato mixture in the center, fold, and serve hot.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 28, 'Pair with coconut chutney for a delicious South Indian meal.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 29, 'Heat up falafel balls according to package instructions.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 29, 'Place a generous serving of falafel in the center of each wrap.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 29, 'Top with diced tomatoes, sliced cucumbers, red onions, shredded lettuce, and fresh parsley.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 29, 'Drizzle with tahini sauce and wrap tightly.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 29, 'Enjoy this Lebanese Falafel Wrap filled with fresh and flavorful ingredients!');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 30, 'In a glass, muddle lime wedges with granulated sugar to release the juice.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 30, 'Fill the glass with ice cubes.');

-- INSERT INTO  instructions(recipe_id, instruction) VALUES ( 30, 'Pour cachaça over the ice and stir well.');

-- INSERT INTO instructions(recipe_id, instruction) VALUES ( 30, 'Adjust sugar and lime to suit your taste preferences');

-- INSERT INTO  instructions(recipe_id, instruction) VALUES ( 30, 'Sip and enjoy the refreshing taste of the Brazilian Caipirinha!');
