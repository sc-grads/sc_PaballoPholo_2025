
-- Creating users table with SERIAL primary key and inserting rows
Create table users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) 
);

INSERT INTO users (username)
VALUES
    ('monahan93'),
    ('pferrer'),
    ('si93onis'),
    ('99stroman')
;

-- creating photos table
CREATE TABLE photos (
    photo_id SERIAL PRIMARY KEY,
    url VARCHAR(200),
    user_id INT REFERENCES users(user_id)
);

-- Inserting rows into photos table and returning generated keys
INSERT INTO photos (url, user_id)
VALUES
    ('http://one.jpg',4),
    ('http://two.jpg', 1),
    ('http://25.jpg', 1),
    ('http://36.jpg', 1),
    ('http://754.jpg', 2),
    ('http://35.jpg', 3),
    ('http://256.jpg', 4);

    --Using join 
    SELECT url, username FROM photos
    JOIN users ON users.id = photos.user_id;