CREATE TABLE public.film (
	film_id INT NOT NULL PRIMARY KEY,
	title VARCHAR(255) NOT NULL,
	description VARCHAR(255),
	release_year DATE,
	language_id NUMERIC NOT NULL,
	rental_duration INTERVAL NOT NULL,
	rental_rate DECIMAL(100, 2) NOT NULL,
	"length" NUMERIC,  
	replacement_cost DECIMAL(100, 2),
	rating NUMERIC,
	last_update DATE,
	special_features VARCHAR(255),
	fulltext VARCHAR(255)
); 

CREATE TABLE "language"(
	language_id INT NOT NULL PRIMARY KEY,
	"name" TEXT,
	last_update DATE
);