
CREATE TABLE "movies" (
  "id" SERIAL PRIMARY KEY,
  "title" VARCHAR(120) NOT NULL,
  "poster"  VARCHAR(120) NOT NULL,
  "release_date" DATE NOT NULL,
  "genres_id" INT REFERENCES "genres",
  "run_time" TIME
);

-- movies can have multiple genres
CREATE TABLE "genres" (
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR(80) NOT NULL
);



--------[ DATA! ]---------

-- starter movies
INSERT INTO "movies" ("title", "poster", "release_date", "genres_id", "run_time")
VALUES 
('Avatar', 'images/avatar.jpeg', '2009-12-18', '1', '02:42:00'),
('Beauty and the Beast', 'images/beauty-and-the-beast.jpg', '1991-11-22','2', '01:32:00'),
('Captain Marvel', 'images/captain-marvel.jpg', '2019-3-8','13', '02:03:00'),
('Finding Nemo', 'images/finding-nemo.jpg', '2003-05-30','2', '01:44:00');

-- starter genres
INSERT INTO "genres" ("name")
VALUES 
('Adventure'),
('Animated'),
('Biographical'),
('Comedy'),
('Disaster'),
('Drama'),
('Epic'),
('Fantasy'),
('Musical'),
('Romantic'),
('Science Fiction'),
('Space-Opera'),
('Superhero'); 