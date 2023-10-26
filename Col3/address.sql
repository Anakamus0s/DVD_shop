CREATE TABLE address (
	address_id INT PRIMARY KEY NOT NULL,
	address TEXT NOT NULL,
	address2 TEXT NOT NULL,
	district TEXT NOT NULL,
	city_id INT NOT NULL,
	postal_code TEXT NOT NULL,
	phone NUMERIC,
	last_update TEXT NOT NULL
);