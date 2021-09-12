/* Write your T-SQL query statement below */


SELECT A.Email from
(
    Select count(Email) as counts , Email from Person
    group by Email
) A where counts>1