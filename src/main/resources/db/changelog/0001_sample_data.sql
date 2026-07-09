--liquibase formatted sql

--changeset recipe:0001_sample_data
INSERT INTO recipe (name, description, servings) VALUES ('Pancakes', 'Recipe for very nice Dutch pancakes', 1);
