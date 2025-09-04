--Find the number of comments for each photo
--where the photo_id is less than 3
--and the photo has more than 2 comments

SELECT photo_id, COUNT(*)
FROM comments
WHERE photo_id < 3
GROUP BY photo_id
HAVING COUNT(*) > 2;

--Find the users (user_ids)
--where the user has commented on the first 2 photos
--and the user added more than 2 comments on those photos

SELECT user_id, COUNT(*)
FROM comments 
WHERE photo_id IN (1, 2)
GROUP BY user_id
HAVING COUNT(*) > 2;

--Exercise from the course: Given a table of phones, 
--print the names of manufacturers and total revenue (price * units_sold) for all phones.  
--Only print the manufacturers who have revenue greater than 2,000,000 for all the phones they sold.

select manufacturer, SUM(price * units_sold) 
from phones
group by manufacturer
having Sum(price * units_sold) > 2000000;