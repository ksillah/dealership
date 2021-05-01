CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);
CREATE TABLE salesperson(
	salesperson_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);
CREATE TABLE car(
	car_id SERIAL PRIMARY KEY,
	customer_id SERIAL,
	salesperson_id SERIAL,
	make VARCHAR(100),
	model VARCHAR(100),
	_year INTEGER,
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id)
);
CREATE TABLE invoice(
	invoice_id SERIAL PRIMARY KEY,
	customer_id SERIAL,
	salesperson_id SERIAL,
	car_id SERIAL,
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id),
	FOREIGN KEY(car_id) REFERENCES car(car_id)
);
CREATE TABLE mechanic(
	mechanic_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);
CREATE TABLE service(
	service_id SERIAL PRIMARY KEY,
	customer_id SERIAL,
	mechanic_id SERIAL,
	car_id SERIAL,
	parts BOOLEAN,
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id),
	FOREIGN KEY(car_id) REFERENCES car(car_id)
);

	