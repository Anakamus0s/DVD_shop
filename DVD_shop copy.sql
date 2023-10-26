DROP TABLE IF EXISTS film CASCADE;
DROP TABLE IF EXISTS film_actor;
DROP TABLE IF EXISTS film_category;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS actor;
DROP TABLE IF EXISTS inventory;
DROP TABLE IF EXISTS payment;
DROP TABLE IF EXISTS rental;
DROP TABLE IF EXISTS staff;
DROP TABLE IF EXISTS "address";
DROP TABLE IF EXISTS city;
DROP TABLE IF EXISTS country;
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS store;
DROP TABLE IF EXISTS "language";



CREATE TABLE public.film (
	film_id INT NOT NULL PRIMARY KEY,
	title VARCHAR(255) NOT NULL,
	description VARCHAR(255),
	release_year DATE,
	language_id INT NOT NULL,
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

CREATE TABLE film_category(
	film_id INT NOT NULL,
	category_id INT NOT NULL PRIMARY KEY,
	last_update DATE,
	FOREIGN KEY (category_id) REFERENCES category(category_id)
);

CREATE TABLE film_actor (
	actor_id INT NOT NULL PRIMARY KEY,
	"film_id" INT NOT NULL,
	last_update DATE
);

CREATE TABLE category (
	category_id INT NOT NULL PRIMARY KEY,
	"name" TEXT,
	last_update DATE
);

CREATE TABLE actor  (
	actor_id INT NOT NULL PRIMARY KEY,
	first_name TEXT NOT NULL,
	last_name TEXT,
	last_update TEXT
);

CREATE TABLE inventory (
	inventory_id INT PRIMARY KEY NOT NULL,
	film_id INT NOT NULL,
	store_id INT NOT NULL,
	last_update DATE NOT NULL
);

CREATE TABLE payment (
	payment_id INT PRIMARY KEY NOT NULL,
	customer_id INT NOT NULL,
	staff_id INT NOT NULL,
	rental_id INT NOT NULL,
	amount NUMERIC(10, 2),
	payment_date DATE
);

CREATE TABLE rental (
	rental_id INT PRIMARY KEY NOT NULL,
	rental_date DATE NOT NULL,
	inventory_id INT NOT NULL,
	customer_id INT NOT NULL,
	return_date DATE NOT NULL,
	staff_id INT NOT NULL,
	last_update DATE NOT NULL
);

CREATE TABLE staff (
    staff_id INT NOT NULL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    address_id INT NOT NULL,
    email TEXT NOT NULL,
    store_id INT NOT NULL,
    active BOOLEAN NOT NULL,
    username TEXT,
    "password" TEXT,
    last_update TIMESTAMP,
    picture BYTEA
);

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

Create table city (
	address_id INT PRIMARY KEY NOT NULL,
	city text,
	country_id INT NOT NULL,
	last_update date
);

Create table country(
	country_id INT PRIMARY KEY NOT NULL,
	country text,
	last_update date
);

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

create table store(
	store_id int primary key not null,
	manager_staff_id int not null,
	address_id int not null,
	last_update date
);

