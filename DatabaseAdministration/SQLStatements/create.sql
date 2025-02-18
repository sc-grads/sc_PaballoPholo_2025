-- Create a new database
CREATE DATABASE UserManagement;
GO

-- Use the newly created database
USE UserManagement;
GO

-- Create a table
CREATE TABLE Users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert new users
INSERT INTO Users (name, email) VALUES 
('Paballo Pholo', 'paballo.pholo@sambeconsulting.com');


