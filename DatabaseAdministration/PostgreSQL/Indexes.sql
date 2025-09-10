-- CREATE INDEX users_username_idx ON users (username) ;

DROP INDEX users_username_idx;

--Benchmarking queries, to get execution time

EXPLAIN ANALYZE SELECT *
FROM users
WHERE username = 'Emil30' ;

--Checking for automatically generated indexes
SELECT relname, relkind
FROM pg_class
WHERE relkind = 'i';--'i' means that it's an index