/* Write your T-SQL query statement below */

-- WITH JuneTV as (
--     SELECT * from TVProgram
--     where MONTH(program_date) = '6' and YEAR(program_date) = '2020'
-- )

-- SELECT DISTINCT c.title from content c
-- inner join JuneTV j on
-- j.content_id = c.content_id
-- where c.Kids_content = 'Y'


SELECT DISTINCT c.title
FROM TVProgram tv JOIN content c on tv.content_id = c.content_id
WHERE month(tv.program_date) = 6 and year(tv.program_date) = 2020 and c.kids_content = 'Y' and c.content_type = 'Movies'
