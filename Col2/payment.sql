CREATE TABLE payment (
	payment_id INT PRIMARY KEY NOT NULL,
	customer_id INT NOT NULL,
	staff_id INT NOT NULL,
	rental_id INT NOT NULL,
	amount NUMERIC(10, 2),
	payment_date DATE
);