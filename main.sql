-- models table layout --

CREATE TABLE models(
	model_id SERIAL PRIMARY KEY,
	vehicle_name VARCHAR(150),
  	car_serial_id INTEGER NOT NULL,
	brand_id INTEGER NOT NULL,
	FOREIGN KEY(car_serial_id) REFERENCES model(car_serial_id),
	FOREIGN KEY(brand_id) REFERENCES brand(brand_id);

-- customer table layout -- 

CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
  	last_name VARCHAR(100),
  	address VARCHAR(150),
  	biling_info VARCHAR(150);
  
-- order table layout --

CREATE TABLE order_(
  	order_id SERIAL PRIMARY KEY,
  	order_date DATE(current_date),
  	sub_total NUMERIC(8,2),
  	total_cost NUMERIC(10,2),order_id INTEGER NOT NULL
	car_serial_id
  	car_serial_id INTEGER NOT NULL,
  	FOREIGN KEY(car_serial_id) REFERENCES model(car_serial_id);
  
  -- salesperson table layout --
  
 CREATE TABLE salesperson(
    	salesperson_id SERIAL PRIMARY KEY,
    	first_name VARCHAR(100),
    	last_name VARCHAR(100),
    	contact_info VARCHAR(250),
    	commission_rate NUMERIC(10,2);
    
 -- maintenance table layout --
 
 CREATE TABLE maintenance(
  	service_ticket_id SERIAL PRIMARY KEY
  	repairs_cost NUMERIC(8,2)
 	mechanic_name VARCHAR(100)
  	car_serial_id INTEGER NOT NULL,
  	FOREIGN KEY(car_serial_id) REFERENCES model(car_serial_id);
  
-- product table layout --

CREATE TABLE product(
  	item_id SERIAL PRIMARY KEY,
	amount NUMERIC(8,2)
	product_name VARCHAR(100)
	order_id INTEGER NOT NULL
	car_serial_id INTEGER NOT NULL
	FOREIGN KEY(order_id) REFERENCES item_id(order_id),
	FOREIGN KEY(car_serial_id) REFERENCES item_id(car_serial_id);
  
-- inventory table layout --

CREATE TABLE inventory(
  	car_part_id SERIAL PRIMARY KEY,
  	amount NUMERIC(8,2)
	
-- starte of values for above tables --
	
-- values for models table --
	
INSERT INTO models(
	model_id,
	vehicle_name,
) VALUES(
	1,
	'Honda',
)
(	2,
	'Toyota',
)
(	3,
 	'Chevrolet',
)
(	4,
	'Jeep',
);	

-- values for customer table --
	
INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	address,
	billing_info
) VALUES(
	1,
	'John',
	'Smith',
	'123 Way Street, City IL 12345',
	'1111-2222-3333-4444 123 01/23'
),
(	2,
	'Mary',
	'Sue',
 	'321 Main Rd, City IL 12345',
 	'4444-3333-2222-1111 321 03/21'
),
(	3,
 	'Jane',
 	'Smith',
 	'456 Circle Ct, City IL 12345'
 	'3333-2222-1111-4444 456 01/22'
);
 

-- values for orders_ table --
	
INSERT INTO order_(
  	order_id
  	order_date DATE(current_date)
  	sub_total NUMERIC(8,2)
  	total_cost NUMERIC(10,2)
) VALUES(
	1,
	'04/12/2014',
	'6000.00'
	'36000.00'
)
(	2,
	'08/24/2018',
	'7500.00'
	'40000.00'
)
(	3,
	'06/15/2020',
	'8000.00'
	'24000.00'
);
	
-- values for salesperson table --
	
INSERT INTO salesperson(
    	salesperson_id SERIAL PRIMARY KEY
    	first_name VARCHAR(100),
    	last_name VARCHAR(100),
    	contact_info VARCHAR(250),
    	commission_rate NUMERIC(10,2);
) VALUES(
	1,
	'Jake',
	'Jones',
	'johnsmith@gmail.com'
	'10.00'
)
(	2,
	'Jennifer',
	'Calloway',
	'jennifercallowway@gmail.com'
	'12.00'
 )
(	2,
	'Emily',
	'Lopez',
	'emilylopez@gmail.com'
	'08.00'
 );

-- values for maintenance table --
	
INSERT INTO maintenance(
  	service_ticket_id
  	repairs_cost NUMERIC(8,2)
 	mechanic_name VARCHAR(100)
) VALUES(
	1,
	'6000.00',
	'Jason',
	'9999-888-7777',
),
(	2,
	'4500.00',
	'Michael',
	'8888-777-6666',
),
(	3,
	'7500.00',
	'Megan',
	'7777-666-5555',
);

-- values for product table --
	
INSERT INTO product(
  	item_id
	amount NUMERIC(8,2)
	product_name VARCHAR(100)
) VALUES(
	1,
	'1000.00',
	'Engine',
),
(	2,
	'600.00',
	'Brakes',
)
(	3,
	'400.00',
	'Tires',
)
(	4,
	'200.00',
	'Carborator',
)
(	5,
	'500.00',
	'Windows',
);

-- Insert into Service Ticket table
INSERT INTO invoice(
	invoice_id,
	amount,
	invoice_date,
	salesperson_id,
	customer_id,
	service_id,
	vin
) VALUES(
	1,
	1000,
	'01/22/1993',
	1,
	1,
	100,
	1010101010
),
(	2,
	5000,
	'05/29/1987',
	2,
	2,
	200,
	0101010101
);
