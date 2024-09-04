SELECT sender_id, count(sender_id) as message_count 
FROM messages
WHERE EXTRACT(YEAR FROM sent_date) = 2022 and EXTRACT(MONTH FROM sent_date) = 08
GROUP BY 1
ORDER BY 2 DESC
LIMIT 2;