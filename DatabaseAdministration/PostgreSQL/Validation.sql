CREATE TABLE products (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	department VARCHAR(50),
	price INTEGER,
	weight INTEGER
);

INSERT INTO products (name, department, price, weight)
VALUES
	('Shirt', 'Clothes', 20, 1);

--Testing with no validation, Data with no Price -Success
INSERT INTO products (name, department, weight)
VALUES
	('Pants', 'Clothes', 3);

--Note: You can alter a table when it already has data that goes against you constraints
--We have to delete the data first or update the rows to data within the constraints

--Let's update and set to a constant number
UPDATE products
SET price = 9999
WHERE price IS NULL;

--Then we can apply the Null constraint
ALTER TABLE products
ALTER COLUMN price
SET NOT NULL;

--Default values for fields that are not defined

ALTER TABLE products
ALTER COLUMN price
SET DEFAULT 999;

--Testing with no price - It's gonna have a price default value of 999
INSERT INTO products (name, department, weight)
VALUES ('Gloves', 'Tools', 1) ;

--Adding products withbthe same name, Unique constraint is not yet implemented - Successful
INSERT INTO products (name, department, price, weight)
VALUES ('Shirt', 'Tools', 24, 1) ;

--Modify the name first to remove duplicates
--Apply the unque constraint
ALTER TABLE products
ADD UNIQUE (name);

--You can remove the constraint, must get the name of it under tales>>Constraints
ALTER TABLE products
DROP CONSTRAINT products_name_key;

--Multi-Column Uniqueness
ALTER TABLE products
ADD UNIQUE (name, department);

--Adding a validation check: >,<,>=,<=,=
ALTER TABLE products
ADD CHECK (price > 0);

--Checks over Multiple Column

CREATE TABLE orders (
	id SERIAL PRIMARY KEY,
	name VARCHAR (40) NOT NULL,
	created_at TIMESTAMP NOT NULL,
	est_delivery TIMESTAMP NOT NULL,
	CHECK (created_at < est_delivery)
);