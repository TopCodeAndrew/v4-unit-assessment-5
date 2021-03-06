SELECT 
p.id AS post_id, 
title, 
content, 
img, 
date_created, 
profile_pic, 
username AS author_username 
FROM helo_posts p
JOIN helo_users u ON u.id = p.author_id
WHERE u.id != $2
ORDER BY date_created DESC;