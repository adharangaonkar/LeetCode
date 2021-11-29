/* Write your T-SQL query statement below */

SELECT user_id, count(follower_id) as followers_count from followers
group by user_id