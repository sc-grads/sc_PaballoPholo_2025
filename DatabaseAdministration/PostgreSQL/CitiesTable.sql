CREATE TABLE cities (
	name VARCHAR(50),
  country VARCHAR(50),
	population INTEGER,
	area INTEGER
);

-- Insert sample data into the cities table

INSERT INTO cities (name, country, population, area)
VALUES
	('Tokyo', 'Japan', 38505000, 8223),
  ('Delhi', 'India', 28125000, 2240),
  ('Shanghai', 'China', 22125000, 4015),
  ('Sao Paulo', 'Brazil', 20935000, 3043);

--retrieve all records from the cities table
SELECT * FROM cities;

-- specific columns
SELECT name, country FROM cities;

-- Working with calculated columns
SELECT name, population, area, (population / area) AS population_density FROM cities;

--Filtering records
SELECT * FROM cities WHERE area > 4000;