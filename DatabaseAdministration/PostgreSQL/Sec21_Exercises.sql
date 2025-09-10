--Exercises

--So our goal here is to select the users with the highest three IDs.
Select *
from users
order by id desc
limit 3;

-- Join the users and posts table. Show the username of user ID
-- 200 and the captions of all posts they have created

Select username, caption
from users as u
join posts as p on u.id = p.user_id
where u.id = 200;

-- Show each username and the number of likes' that they have created

Select username, count(*) AS No_Of_Likes
from users as u
join likes as l 
on u.id = l.user_id
group by username;