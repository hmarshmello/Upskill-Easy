SELECT  
  t.user_id AS user_id, 
  EXTRACT(DAY FROM MAX(post_date)-MIN(post_date)) AS DateDifference
FROM (
    SELECT user_id, count(user_id) AS logins FROM posts
    WHERE EXTRACT(YEAR FROM post_date) = 2021
    GROUP BY 1
    ) AS t 
    LEFT JOIN posts p ON t.user_id = p.user_id
WHERE EXTRACT(YEAR FROM post_date) = 2021 AND logins > 1
GROUP BY 1
ORDER BY 1;