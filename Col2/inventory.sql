CREATE TABLE inventory (
	inventory_id INT PRIMARY KEY NOT NULL,
	film_id INT NOT NULL,
	store_id INT NOT NULL,
	last_update DATE NOT NULL
);