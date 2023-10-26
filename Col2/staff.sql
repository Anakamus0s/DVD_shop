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

