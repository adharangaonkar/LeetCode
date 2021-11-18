/* Write your T-SQL query statement below */


SELECT p.lastName, p.firstName, a.city, a.state from person p 
left outer join address a
on a.personID = p.personID