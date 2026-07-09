--liquibase formatted sql

--changeset recipe:0001_sample_data
INSERT INTO recipe (id, name, description, servings) VALUES (1, 'Pancakes', 'Recipe for very nice Dutch pancakes', 1);

INSERT INTO product (id, name, vegetarian) VALUES (1, 'Flour', TRUE);
INSERT INTO product (id, name, vegetarian) VALUES (2, 'Milk', FALSE);
INSERT INTO product (id, name, vegetarian) VALUES (3, 'Egg', FALSE);

INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (1, 1, 1, '250gr');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (2, 1, 2, '1L');
INSERT INTO ingredient (id, recipe_id, product_id, amount) VALUES (3, 1, 3, '3');

INSERT INTO app_user (id, name, email) VALUES (1, 'Paul', 'mock@recipe-assignment.nl');
INSERT INTO app_user (id, name, email) VALUES (2, 'Alex', 'contributor@recipe-assignment.nl');

INSERT INTO role (id, user_id, recipe_id, role) VALUES (1, 1, 1, 'AUTHOR');
INSERT INTO role (id, user_id, recipe_id, role) VALUES (2, 2, 1, 'CONTRIBUTOR');

-- Update the counters for primary key id generation (keep at bottom).
ALTER TABLE recipe ALTER COLUMN id RESTART WITH 2;
ALTER TABLE product ALTER COLUMN id RESTART WITH 4;
ALTER TABLE ingredient ALTER COLUMN id RESTART WITH 4;
ALTER TABLE app_user ALTER COLUMN id RESTART WITH 3;
ALTER TABLE role ALTER COLUMN id RESTART WITH 3;
