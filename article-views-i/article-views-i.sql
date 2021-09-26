/* Write your T-SQL query statement below */

-- SELECT DISTINCT(v1.author_id) as id from Views v1
-- inner join views v2 on v1.author_id = v2.viewer_id
-- ORDER BY v1.author_id

select distinct author_id as id
from Views
where author_id = viewer_id
order by author_id