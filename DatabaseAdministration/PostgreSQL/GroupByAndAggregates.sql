SELECT user_id, MAX(id)
FROM comments
GROUP BY user_id;

SELECT user_id, COUNT(*) 
FROM comments;

SELECT photo_id, COUNT(*)
FROM comments
GROUP BY photo_id;

--Exercise from the course
Select name,count(*)
From authors as a
left Join books as b 
on a.id = b.author_id
group by a.name; --Remeber you need to group by a non-aggregated column you called in the select