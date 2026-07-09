--liquibase formatted sql

--changeset recipe:0001_sample_data
INSERT INTO recipe (id, name, description, servings, vegetarian) VALUES (1, 'Pancakes', 'Recipe for very nice Dutch pancakes', 1, FALSE);
INSERT INTO recipe (id, name, description, servings, vegetarian) VALUES (2, 'Margherita Pizza', 'Classic Italian pizza with tomato, mozzarella and basil', 2, TRUE);
INSERT INTO recipe (id, name, description, servings, vegetarian) VALUES (3, 'Tomato Soup', 'Creamy tomato soup', 4, TRUE);
INSERT INTO recipe (id, name, description, servings, vegetarian) VALUES (4, 'Vegetable Stir Fry', 'Quick stir fried vegetables with soy sauce', 2, TRUE);
INSERT INTO recipe (id, name, description, servings, vegetarian) VALUES (5, 'Caprese Salad', 'Fresh tomato, mozzarella and basil salad', 2, TRUE);
INSERT INTO recipe (id, name, description, servings, vegetarian) VALUES (6, 'Guacamole', 'Avocado dip with lime and cilantro', 4, TRUE);
INSERT INTO recipe (id, name, description, servings, vegetarian) VALUES (7, 'Hummus', 'Chickpea dip with tahini and garlic', 4, TRUE);
INSERT INTO recipe (id, name, description, servings, vegetarian) VALUES (8, 'Mushroom Risotto', 'Creamy risotto with mushrooms and parmesan', 3, TRUE);
INSERT INTO recipe (id, name, description, servings, vegetarian) VALUES (9, 'Greek Salad', 'Cucumber, tomato and feta salad', 2, TRUE);
INSERT INTO recipe (id, name, description, servings, vegetarian) VALUES (10, 'Peanut Butter Sandwich', 'Simple peanut butter and jam sandwich', 1, TRUE);
INSERT INTO recipe (id, name, description, servings, vegetarian) VALUES (11, 'Apple Pie', 'Traditional apple pie with cinnamon', 6, TRUE);
INSERT INTO recipe (id, name, description, servings, vegetarian) VALUES (12, 'Cheese Omelette', 'Fluffy omelette with cheddar cheese', 1, FALSE);
INSERT INTO recipe (id, name, description, servings, vegetarian) VALUES (13, 'Spaghetti Bolognese', 'Pasta with rich beef and tomato sauce', 4, FALSE);
INSERT INTO recipe (id, name, description, servings, vegetarian) VALUES (14, 'Chicken Curry', 'Spiced chicken curry with coconut milk', 4, FALSE);
INSERT INTO recipe (id, name, description, servings, vegetarian) VALUES (15, 'Beef Burger', 'Juicy beef burger with cheddar and lettuce', 1, FALSE);
INSERT INTO recipe (id, name, description, servings, vegetarian) VALUES (16, 'Caesar Salad', 'Chicken caesar salad with parmesan', 2, FALSE);
INSERT INTO recipe (id, name, description, servings, vegetarian) VALUES (17, 'Pad Thai', 'Thai noodles with shrimp and peanut', 2, FALSE);
INSERT INTO recipe (id, name, description, servings, vegetarian) VALUES (18, 'BLT Sandwich', 'Bacon, lettuce and tomato sandwich', 1, FALSE);
INSERT INTO recipe (id, name, description, servings, vegetarian) VALUES (19, 'Fish and Chips', 'Battered salmon with fried potatoes', 2, FALSE);
INSERT INTO recipe (id, name, description, servings, vegetarian) VALUES (20, 'Ham Sandwich', 'Ham and cheddar sandwich', 1, FALSE);
INSERT INTO recipe (id, name, description, servings, vegetarian) VALUES (21, 'Shrimp Fried Rice', 'Fried rice with shrimp and egg', 3, FALSE);
INSERT INTO recipe (id, name, description, servings, vegetarian) VALUES (22, 'Chocolate Cake', 'Rich chocolate cake', 8, FALSE);
INSERT INTO recipe (id, name, description, servings, vegetarian) VALUES (23, 'Grilled Chicken', 'Simple grilled chicken with garlic', 2, FALSE);
INSERT INTO recipe (id, name, description, servings, vegetarian) VALUES (24, 'Beef Tacos', 'Beef tacos with corn and cheddar', 3, FALSE);
INSERT INTO recipe (id, name, description, servings, vegetarian) VALUES (25, 'Tuna Salad', 'Light tuna salad with cucumber', 2, FALSE);
INSERT INTO recipe (id, name, description, servings, vegetarian) VALUES (26, 'Sausage Pasta', 'Pasta with sausage and tomato', 4, FALSE);
INSERT INTO recipe (id, name, description, servings, vegetarian) VALUES (27, 'Bacon and Eggs', 'Classic bacon and eggs', 1, FALSE);
INSERT INTO recipe (id, name, description, servings, vegetarian) VALUES (28, 'Chicken Soup', 'Comforting chicken soup with vegetables', 4, FALSE);
INSERT INTO recipe (id, name, description, servings, vegetarian) VALUES (29, 'Salmon Teriyaki', 'Teriyaki glazed salmon with rice', 2, FALSE);
INSERT INTO recipe (id, name, description, servings, vegetarian) VALUES (30, 'Pork Stir Fry', 'Pork stir fry with bell pepper', 2, FALSE);

INSERT INTO product (id, name, vegetarian) VALUES (1, 'Flour', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (2, 'Milk', FALSE);
INSERT INTO product (id, name, vegetarian) VALUES (3, 'Egg', FALSE);
INSERT INTO product (id, name, vegetarian) VALUES (4, 'Tomato', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (5, 'Mozzarella', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (6, 'Basil', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (7, 'Olive Oil', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (8, 'Onion', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (9, 'Garlic', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (10, 'Vegetable Stock', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (11, 'Cream', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (12, 'Bell Pepper', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (13, 'Broccoli', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (14, 'Carrot', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (15, 'Soy Sauce', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (16, 'Ginger', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (17, 'Avocado', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (18, 'Lime', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (19, 'Salt', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (20, 'Cilantro', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (21, 'Chickpeas', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (22, 'Tahini', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (23, 'Lemon', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (24, 'Rice', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (25, 'Mushroom', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (26, 'Parmesan', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (27, 'Butter', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (28, 'Cucumber', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (29, 'Feta', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (30, 'Bread', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (31, 'Peanut Butter', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (32, 'Jam', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (33, 'Apple', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (34, 'Sugar', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (35, 'Cinnamon', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (36, 'Cheddar', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (37, 'Lettuce', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (38, 'Potato', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (39, 'Pasta', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (40, 'Noodles', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (41, 'Cocoa', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (42, 'Peas', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (43, 'Corn', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (44, 'Ketchup', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (45, 'Bun', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (46, 'Coconut Milk', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (47, 'Curry Paste', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (48, 'Teriyaki Sauce', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (49, 'Chicken', FALSE);
INSERT INTO product (id, name, vegetarian) VALUES (50, 'Beef', FALSE);
INSERT INTO product (id, name, vegetarian) VALUES (51, 'Pork', FALSE);
INSERT INTO product (id, name, vegetarian) VALUES (52, 'Bacon', FALSE);
INSERT INTO product (id, name, vegetarian) VALUES (53, 'Ham', FALSE);
INSERT INTO product (id, name, vegetarian) VALUES (54, 'Salmon', FALSE);
INSERT INTO product (id, name, vegetarian) VALUES (55, 'Shrimp', FALSE);
INSERT INTO product (id, name, vegetarian) VALUES (56, 'Tuna', FALSE);
INSERT INTO product (id, name, vegetarian) VALUES (57, 'Sausage', FALSE);
INSERT INTO product (id, name, vegetarian) VALUES (58, 'Chicken Stock', FALSE);

-- Recipe 1: Pancakes
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (1, 1, 1, '250gr');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (2, 1, 2, '1L');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (3, 1, 3, '3');

-- Recipe 2: Margherita Pizza (vegetarian)
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (4, 2, 1, '300g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (5, 2, 4, '200g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (6, 2, 5, '150g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (7, 2, 6, '5 leaves');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (8, 2, 7, '2 tbsp');

-- Recipe 3: Tomato Soup (vegetarian)
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (9, 3, 4, '500g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (10, 3, 8, '1');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (11, 3, 9, '2 cloves');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (12, 3, 10, '500ml');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (13, 3, 11, '100ml');

-- Recipe 4: Vegetable Stir Fry (vegetarian)
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (14, 4, 12, '1');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (15, 4, 13, '200g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (16, 4, 14, '2');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (17, 4, 15, '3 tbsp');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (18, 4, 9, '2 cloves');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (19, 4, 16, '1 tbsp');

-- Recipe 5: Caprese Salad (vegetarian)
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (20, 5, 4, '3');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (21, 5, 5, '150g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (22, 5, 6, '6 leaves');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (23, 5, 7, '2 tbsp');

-- Recipe 6: Guacamole (vegetarian)
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (24, 6, 17, '2');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (25, 6, 8, '1');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (26, 6, 18, '1');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (27, 6, 19, '1 tsp');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (28, 6, 20, '2 tbsp');

-- Recipe 7: Hummus (vegetarian)
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (29, 7, 21, '400g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (30, 7, 22, '2 tbsp');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (31, 7, 9, '1 clove');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (32, 7, 23, '1');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (33, 7, 7, '3 tbsp');

-- Recipe 8: Mushroom Risotto (vegetarian)
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (34, 8, 24, '300g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (35, 8, 25, '250g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (36, 8, 8, '1');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (37, 8, 10, '750ml');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (38, 8, 26, '50g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (39, 8, 27, '30g');

-- Recipe 9: Greek Salad (vegetarian)
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (40, 9, 28, '1');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (41, 9, 4, '2');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (42, 9, 8, '1');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (43, 9, 29, '100g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (44, 9, 7, '2 tbsp');

-- Recipe 10: Peanut Butter Sandwich (vegetarian)
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (45, 10, 30, '2 slices');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (46, 10, 31, '2 tbsp');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (47, 10, 32, '1 tbsp');

-- Recipe 11: Apple Pie (vegetarian)
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (48, 11, 1, '250g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (49, 11, 33, '4');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (50, 11, 34, '100g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (51, 11, 27, '125g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (52, 11, 35, '1 tsp');

-- Recipe 12: Cheese Omelette
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (53, 12, 3, '3');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (54, 12, 36, '50g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (55, 12, 27, '20g');

-- Recipe 13: Spaghetti Bolognese
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (56, 13, 39, '400g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (57, 13, 50, '300g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (58, 13, 4, '400g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (59, 13, 8, '1');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (60, 13, 9, '2 cloves');

-- Recipe 14: Chicken Curry
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (61, 14, 49, '500g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (62, 14, 8, '1');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (63, 14, 9, '3 cloves');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (64, 14, 16, '1 tbsp');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (65, 14, 47, '3 tbsp');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (66, 14, 46, '400ml');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (67, 14, 4, '200g');

-- Recipe 15: Beef Burger
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (68, 15, 45, '1');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (69, 15, 50, '200g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (70, 15, 36, '1 slice');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (71, 15, 37, '2 leaves');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (72, 15, 4, '2 slices');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (73, 15, 44, '1 tbsp');

-- Recipe 16: Caesar Salad
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (74, 16, 37, '1');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (75, 16, 30, '2 slices');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (76, 16, 26, '30g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (77, 16, 49, '150g');

-- Recipe 17: Pad Thai
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (78, 17, 40, '200g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (79, 17, 55, '150g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (80, 17, 3, '2');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (81, 17, 31, '2 tbsp');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (82, 17, 15, '3 tbsp');

-- Recipe 18: BLT Sandwich
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (83, 18, 30, '2 slices');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (84, 18, 52, '3 strips');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (85, 18, 37, '2 leaves');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (86, 18, 4, '2 slices');

-- Recipe 19: Fish and Chips
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (87, 19, 38, '400g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (88, 19, 54, '300g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (89, 19, 1, '100g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (90, 19, 19, '1 tsp');

-- Recipe 20: Ham Sandwich
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (91, 20, 30, '2 slices');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (92, 20, 53, '2 slices');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (93, 20, 36, '1 slice');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (94, 20, 37, '2 leaves');

-- Recipe 21: Shrimp Fried Rice
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (95, 21, 24, '300g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (96, 21, 55, '150g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (97, 21, 3, '2');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (98, 21, 15, '3 tbsp');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (99, 21, 14, '1');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (100, 21, 42, '100g');

-- Recipe 22: Chocolate Cake
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (101, 22, 1, '200g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (102, 22, 34, '200g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (103, 22, 41, '50g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (104, 22, 27, '150g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (105, 22, 3, '3');

-- Recipe 23: Grilled Chicken
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (106, 23, 49, '400g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (107, 23, 7, '2 tbsp');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (108, 23, 9, '2 cloves');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (109, 23, 19, '1 tsp');

-- Recipe 24: Beef Tacos
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (110, 24, 50, '300g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (111, 24, 43, '100g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (112, 24, 4, '2');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (113, 24, 8, '1');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (114, 24, 36, '50g');

-- Recipe 25: Tuna Salad
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (115, 25, 56, '200g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (116, 25, 37, '1');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (117, 25, 28, '1');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (118, 25, 23, '1');

-- Recipe 26: Sausage Pasta
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (119, 26, 39, '400g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (120, 26, 57, '250g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (121, 26, 4, '300g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (122, 26, 9, '2 cloves');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (123, 26, 26, '40g');

-- Recipe 27: Bacon and Eggs
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (124, 27, 52, '4 strips');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (125, 27, 3, '2');

-- Recipe 28: Chicken Soup
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (126, 28, 49, '400g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (127, 28, 58, '1L');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (128, 28, 14, '2');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (129, 28, 8, '1');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (130, 28, 9, '2 cloves');

-- Recipe 29: Salmon Teriyaki
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (131, 29, 54, '300g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (132, 29, 48, '4 tbsp');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (133, 29, 24, '200g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (134, 29, 13, '150g');

-- Recipe 30: Pork Stir Fry
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (135, 30, 51, '300g');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (136, 30, 12, '1');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (137, 30, 15, '3 tbsp');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (138, 30, 9, '2 cloves');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (139, 30, 16, '1 tbsp');

INSERT INTO app_user (id, name, email) VALUES (1, 'Paul', 'paul@recipe-assignment.nl');
INSERT INTO app_user (id, name, email) VALUES (2, 'Alex', 'alex@recipe-assignment.nl');
INSERT INTO app_user (id, name, email) VALUES (3, 'Emma', 'emma@recipe-assignment.nl');
INSERT INTO app_user (id, name, email) VALUES (4, 'Liam', 'liam@recipe-assignment.nl');
INSERT INTO app_user (id, name, email) VALUES (5, 'Olivia', 'olivia@recipe-assignment.nl');
INSERT INTO app_user (id, name, email) VALUES (6, 'Noah', 'noah@recipe-assignment.nl');

INSERT INTO role (id, user_id, recipe_id, role) VALUES (1, 1, 1, 'AUTHOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (2, 2, 1, 'CONTRIBUTOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (3, 3, 2, 'AUTHOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (4, 4, 3, 'AUTHOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (5, 5, 4, 'AUTHOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (6, 6, 5, 'AUTHOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (7, 3, 6, 'AUTHOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (8, 4, 7, 'AUTHOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (9, 5, 8, 'AUTHOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (10, 6, 9, 'AUTHOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (11, 3, 10, 'AUTHOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (12, 4, 11, 'AUTHOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (13, 5, 12, 'AUTHOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (14, 6, 13, 'AUTHOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (15, 3, 14, 'AUTHOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (16, 4, 15, 'AUTHOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (17, 5, 16, 'AUTHOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (18, 6, 17, 'AUTHOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (19, 3, 18, 'AUTHOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (20, 4, 19, 'AUTHOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (21, 5, 20, 'AUTHOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (22, 6, 21, 'AUTHOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (23, 3, 22, 'AUTHOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (24, 4, 23, 'AUTHOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (25, 5, 24, 'AUTHOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (26, 6, 25, 'AUTHOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (27, 3, 26, 'AUTHOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (28, 4, 27, 'AUTHOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (29, 5, 28, 'AUTHOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (30, 6, 29, 'AUTHOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (31, 3, 30, 'AUTHOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (32, 1, 2, 'CONTRIBUTOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (33, 2, 3, 'CONTRIBUTOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (34, 3, 4, 'CONTRIBUTOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (35, 4, 5, 'CONTRIBUTOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (36, 5, 6, 'CONTRIBUTOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (37, 6, 7, 'CONTRIBUTOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (38, 1, 8, 'CONTRIBUTOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (39, 1, 9, 'CONTRIBUTOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (40, 2, 9, 'CONTRIBUTOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (41, 4, 10, 'CONTRIBUTOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (42, 5, 10, 'CONTRIBUTOR');

-- Update the counters for primary key id generation (keep at bottom).
ALTER TABLE recipe ALTER COLUMN id RESTART WITH 31;
ALTER TABLE product ALTER COLUMN id RESTART WITH 59;
ALTER TABLE ingredient ALTER COLUMN id RESTART WITH 140;
ALTER TABLE app_user ALTER COLUMN id RESTART WITH 7;
ALTER TABLE role ALTER COLUMN id RESTART WITH 43;
