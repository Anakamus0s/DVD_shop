CREATE TABLE rental (
	rental_id INT PRIMARY KEY NOT NULL,
	rental_date DATE NOT NULL,
	inventory_id INT NOT NULL,
	customer_id INT NOT NULL,
	return_date DATE NOT NULL,
	staff_id INT NOT NULL,
	last_update DATE NOT NULL
);