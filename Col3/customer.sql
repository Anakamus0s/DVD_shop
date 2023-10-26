CREATE TABLE customer (
	customer_id INT PRIMARY KEY NOT NULL,
	store_id INT NOT NULL,
	first_name TEXT NOT NULL,
	last_name TEXT,
	email TEXT,
	address_id INT NOT NULL,
	activebool BOOLEAN,
	create_date DATE,
	last_update TIMESTAMP,
	active BOOLEAN
);