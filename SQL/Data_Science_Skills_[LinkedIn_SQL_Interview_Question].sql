SELECT candidate_id 
FROM ( SELECT * FROM candidates WHERE skill = 'Python' or skill = 'Tableau' or skill = 'PostgreSQL' ) as e
GROUP BY 1 HAVING COUNT(candidate_id) = 3;