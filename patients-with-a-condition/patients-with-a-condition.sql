/* Write your T-SQL query statement below */


SELECT patient_id, patient_name, conditions from patients
where conditions LIKE 'DIAB1%' or conditions LIKE '% DIAB1%' 