SELECT 
p.id AS post_id, 
title, 
content, 
img, 
date_created, 
profile_pic, 
username AS author_username, 
-- UPVOTES MAY CAUSE ISSUES AS IT IS UNDEFINED ---
upvotes, 
FROM helo_posts p
JOIN helo_users u ON u.id = p.author_id
WHERE lower(title) LIKE $1
ORDER BY date_created ASC;
