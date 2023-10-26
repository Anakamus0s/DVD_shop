create table store(
	store_id int primary key not null,
	manager_staff_id int not null,
	address_id int not null,
	last_update date
);