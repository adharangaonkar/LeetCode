/* Write your T-SQL query statement below */


-- SELECT extra as report_reason, count(distinct(post_id)) as report_count from Actions

-- where action_date = '2019-07-04' and action = 'report' and extra is not null
-- GROUP BY extra


SELECT EXTRA AS REPORT_REASON, COUNT(DISTINCT POST_ID) AS REPORT_COUNT
FROM ACTIONS
WHERE DATEDIFF(DAY,'2019-07-05', ACTION_DATE) = -1 AND EXTRA IS NOT NULL AND ACTION = 'REPORT'
GROUP BY EXTRA