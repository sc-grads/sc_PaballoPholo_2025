
SELECT contents, username --Username is not part of comments table but we can get it using join
FROM comments
JOIN users ON users.id = comments.user_id;

-- Left Join
SELECT contents, username
FROM comments
LEFT JOIN users ON users.id = comments.user_id;

-- Right Join
SELECT url, username
FROM photos
RIGHT JOIN users ON users.id = photos.user_id;