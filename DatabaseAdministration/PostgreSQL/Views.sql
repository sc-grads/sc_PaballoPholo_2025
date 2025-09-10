--A query we want to solve: Show most popular users, who were tagged the most

SELECT username, COUNT (*)
FROM users
JOIN (
	SELECT user_id FROM photo_tags
	UNION ALL
	SELECT user_id FROM caption_tags
) AS tags ON tags.user_id = users.id
GROUP BY username
ORDER BY COUNT (*) DESC;

--Views - solves our problem and can be referred to anytime and anywhere

CREATE VIEW tags AS (
	SELECT id, created_at, user_id, post_id, 'photo_tag' AS type FROM photo_tags
	UNION ALL
	SELECT id, created_at, user_id, post_id, 'caption_tag' AS type FROM caption_tags
);

Select * from tags WHERE type = 'caption_tag' ;

--Refined query using a view now - No more need for union or long queries
SELECT username, COUNT (*)
FROM users
JOIN tags ON tags.user_id = users.id
GROUP BY username
ORDER BY COUNT (*) DESC;

--One more view

CREATE VIEW recent_posts AS (
	SELECT *
	FROM posts
	ORDER BY created_at DESC
	LIMIT 10
);

Select * from recent_posts;

-- Changing Views
CREATE OR REPLACE VIEW recent_posts AS (
  SELECT *
  FROM posts
  ORDER BY created_at DESC
  LIMIT 15
);

-- Deleting Views
DROP VIEW recent_posts;


--Materialized Views: 
SELECT
  date_trunc ('week' , COALESCE (posts. created_at, comments. created_at) ) AS week
  COUNT (posts. id) AS num_posts,
  COUNT (comments. id) AS num_comments
FROM likes
LEFT JOIN posts ON posts. id = likes.post_id
LEFT JOIN comments ON comments. id = likes. comment_id
GROUP BY week
ORDER BY week;

--Creating one

CREATE MATERIALIZED VIEW weekly_likes AS (
  SELECT
    date_trunc ('week' , COALESCE (posts. created_at, comments. created_at) ) AS week
    COUNT (posts. id) AS num_posts,
    COUNT (comments. id) AS num_comments
  FROM likes
  LEFT JOIN posts ON posts. id = likes.post_id
  LEFT JOIN comments ON comments. id = likes. comment_id
  GROUP BY week
  ORDER BY week
)
WITH DATA; -- To say we want a query to run one time and hold the results

