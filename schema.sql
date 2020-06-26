-- CREATE DATABASE todos;

-- \c todos

DROP TABLE IF EXISTS lists CASCADE;

CREATE TABLE lists (
  id serial PRIMARY KEY, 
  name text NOT NULL UNIQUE
);

DROP TABLE IF EXISTS todos;

CREATE TABLE todos (
  id serial PRIMARY KEY,
  name text NOT NULL,
  completed boolean NOT NULL DEFAULT false,
  list_id integer NOT NULL REFERENCES lists(id) ON DELETE CASCADE
);
