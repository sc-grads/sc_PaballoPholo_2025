CREATE TABLE photos (
    id SERIAL PRIMARY KEY,
    url VARCHAR(200),
    user_id INTEGER REFERENCES users(id)
);

INSERT INTO photos (url, user_id)
VALUES
    ('http:/one.jpg', 4),
    ('http:/two.jpg', 1),
    ('http:/25.jpg', 1),
    ('http:/36.jpg', 1),
    ('http:/754.jpg', 2),
    ('http:/35.jpg', 3),
    ('http:/256.jpg', 4);

-- Dropping the table
DROP TABLE photos; --This deletes the table and all its data

--We can set the delete constraints
-- On delete cascade
CREATE TABLE photos (
    id SERIAL PRIMARY KEY,
    url VARCHAR(200),
    user_id INTEGER REFERENCES users(id) ON DELETE CASCADE
);

-- On delete set null
CREATE TABLE photos (
    id SERIAL PRIMARY KEY,
    url VARCHAR(200),
    user_id INTEGER REFERENCES users(id) ON DELETE SET NULL
);

-- On delete set default
CREATE TABLE photos (
    id SERIAL PRIMARY KEY,
    url VARCHAR(200),
    user_id INTEGER REFERENCES users(id) ON DELETE SET DEFAULT
);