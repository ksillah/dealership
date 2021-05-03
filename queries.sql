/*CREATE OR REPLACE FUNCTION add_car(
	_car_id INTEGER,
	_customer_id INTEGER,
	_salesperson_id INTEGER,
	_make VARCHAR(100),
	_model VARCHAR(100),
	__year INTEGER,
	_price NUMERIC
)
RETURNS void
AS $MAIN$
BEGIN
	INSERT INTO car(car_id, customer_id, salesperson_id, make, model, _year,price)
	VALUES(_car_id, _customer_id, _salesperson_id, _make, _model, __year,_price);
END;
$MAIN$
LANGUAGE  plpgsql;

INSERT INTO customer(
	customer_id,
	first_name,
	last_name
) VALUES(
	1,
	'Kutah',
	'Sillah'
);
INSERT INTO customer(
	customer_id,
	first_name,
	last_name
) VALUES(
	2,
	'Grant',
	'Sillah'
); 
INSERT INTO customer(
	customer_id,
	first_name,
	last_name
) VALUES(
	3,
	'Najeo',
	'Sillah'
);

SELECT *
FROM customer;

INSERT INTO salesperson(
	salesperson_id,
	first_name,
	last_name
) VALUES(
	1,
	'Toby',
	'Myers'
);
INSERT INTO salesperson(
	salesperson_id,
	first_name,
	last_name
) VALUES(
	2,
	'Amanda',
	'Smith'
);

SELECT * FROM salesperson;

SELECT add_car(1,1,2,'Honda','CR-V',2018,20000);
SELECT add_car(2,2,1,'Toyota','Camry',2004,500);
SELECT add_car(3,3,2,'Acura','MDX',2017,30000);

CREATE OR REPLACE FUNCTION add_invoice(
	_invoice_id INTEGER,
	_customer_id INTEGER,
	_salesperson_id INTEGER,
	_car_id INTEGER
)
RETURNS void
AS $MAIN$
BEGIN
	INSERT INTO invoice(invoice_id, customer_id, salesperson_id, car_id)
	VALUES(_invoice_id, _customer_id, _salesperson_id, _car_id);
END;
$MAIN$
LANGUAGE  plpgsql;*/

SELECT add_invoice(1,1,2,1);
/*SELECT add_invoice(2,2,1,2);
SELECT add_invoice(3,3,2,3);

SELECT * FROM invoice

SELECT customer.customer_id, customer.first_name,salesperson.salesperson_id, salesperson.first_name, make, model, _year
FROM customer
JOIN car
ON customer.customer_id=car.customer_id
JOIN salesperson
ON car.salesperson_id=salesperson.salesperson_id;*/

	