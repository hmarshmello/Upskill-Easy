SELECT tweet_bucket, count(tweet_bucket) users_num
FROM ( 
  SELECT  COUNT(user_id) as tweet_bucket, 
          user_id as users_num 
  FROM tweets 
  WHERE EXTRACT( YEAR FROM tweet_date) = '2022' 
  GROUP BY 2 
) as e
GROUP BY 1;