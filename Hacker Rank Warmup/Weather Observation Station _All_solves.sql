--Weather Observation Station 1
select city, state
from STATION; 

--Weather Observation Station 3

select name 
from STATION
where MOD(ID,2)=0
; 
--Weather Observation Station 4
select count (city) intersect count (distinct city)
from STATION;

--Weather Observation Station 5
SELECT city, LENGTH(city) as length_char
FROM station
ORDER BY LENGTH(city) DESC
LIMIT 1;

--Weather Observation Station 6
SELECT DISTINCT city 
FROM station
 WHERE city LIKE "A%" OR city LIKE "E%" OR
 city LIKE "I%" OR city LIKE "O%" OR city LIKE "U%";

 --Weather Observation Station 7
 select distinct CITY
from STATION
WHERE CITY ="%a",CITY ="%e",CITY ="%i",CITY ="%o",CITY ="%u";

--Weather Observation Station 