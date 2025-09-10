CREATE TABLE accounts (
	id SERIAL PRIMARY KEY,
	name VARCHAR (20) NOT NULL,
	balance INTEGER NOT NULL
);

INSERT INTO accounts (name, balance)
VALUES
('Gia', 100),
('Alyson', 100);

SELECT * FROM Accounts;

--Transaction
Begin;

UPDATE accounts
SET balance = balance - 50
WHERE name = 'Alyson';

UPDATE accounts
SET balance = balance + 50
WHERE name = 'Gia' ;

commit; --Or 'Rollback' if you want to reset the changes
