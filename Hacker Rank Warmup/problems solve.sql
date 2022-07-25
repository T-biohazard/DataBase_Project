
--The PADS
SELECT concat(NAME,concat("(",concat(substr(OCCUPATION,1,1),")"))) FROM OCCUPATIONS ORDER BY NAME ASC;
SELECT "There are a total of ", count(OCCUPATION), concat(lower(occupation),"s.") FROM OCCUPATIONS GROUP BY OCCUPATION 
ORDER BY count(OCCUPATION), OCCUPATION ASC;


--Revising Aggregations - The Count Function
--Exit Full Screen View

select count(*) from CITY where POPULATION>'100000';


--Revising Aggregations - The Sum Function

SELECT SUM(POPULATION)
FROM CITY
WHERE DISTRICT = 'California';

--Revising Aggregations - The avg Function

SELECT avg(POPULATION)
FROM CITY
WHERE DISTRICT = 'California';


--The Blunder

SELECT CEIL(AVG(Salary)
-AVG(REPLACE(Salary,'0',''))) FROM EMPLOYEES;

--top earners
select max(months * salary), count(months * salary) 
from Employee where (months * salary) 
= (select max(months * salary) from Employee);

--weather ob 2
SELECT ROUND(SUM(LAT_N), 2), ROUND(SUM(LONG_W), 2) FROM STATION;


