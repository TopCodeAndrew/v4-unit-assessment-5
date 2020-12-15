SELECT 
p.id AS post_id, 
title, 
content, 
img, 
date_created, 
profile_pic, 
username AS author_username, 
-- UPVOTES MAY CAUSE ISSUES AS IS ARE UNDEFINED ---
upvotes, 
FROM helo_posts p
JOIN helo_users u ON u.id = p.author_id
WHERE lower(title) LIKE $1
-- NOT SURE ABOUT THIS SYNTAX --
AND u.id != $2
ORDER BY date_created ASC;