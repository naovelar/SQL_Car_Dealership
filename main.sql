-- models table layout --

CREATE TABLE models(
	model_id SERIAL PRIMARY KEY,
	vehicle_name VARCHAR(150),
  	car_serial_id INTEGER NOT NULL,
	brand_id INTEGER NOT NULL,
	FOREIGN KEY(car_serial_d) REFERENCES model(car_serial_id),
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
  	order_id SERIAL PRIMARY KEY
  	order_date DATE(current_date)
  	sub_total NUMERIC(8,2)
  	total_cost NUMERIC(10,2)
  	car_serial_id INTEGER NOT NULL,
  	FOREIGN KEY(car_serial_id) REFERENCES model(car_serial_id);
  
  -- salesperson table layout --
  
 CREATE TABLE salesperson(
    	salesperson_id SERIAL PRIMARY KEY
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
  
  
-- inventory table layout --

CREATE TABLE inventory(
  	car_part_id SERIAL PRIMARY KEY
  	amount NUMERIC(8,2)
