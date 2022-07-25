
select *
from CITY
where COUNTRYCODE='USA' AND POPULATION>100000;

--Weather Observation Station 13

select round(sum(LAT_N), 4) from station 
where LAT_N > 38.7880 and LAT_N < 137.2345;

--Weather Observation Station 14

select round(MAX(LAT_N), 4) from station 
where LAT_N < 137.2345;


--Weather Observation Station 15
select round(long_w, 4) from station 
where lat_n = (select max(lat_n) 
from station where lat_n < 137.2345);

--Weather Observation Station 16

select round(MIN(LAT_N), 4) from station 
where LAT_N > 38.7780;

--Weather Observation Station 17

select round(long_w, 4) from station 
where lat_n = (select min(lat_n) 
from station where lat_n > 38.7780); 



--Weather Observation Station 19

SELECT
    ROUND(ABS(MAX(LAT_N)  - MIN(LAT_N))
        + ABS(MAX(LONG_W) - MIN(LONG_W)), 4)
FROM 
    STATION;

--Weather Observation Station 20
SELECT ROUND(SQRT(POWER(MAX(LAT_N)-MIN(LAT_N),2)+
POWER(MAX(LONG_W)-MIN(LONG_W),2)),4)
FROM STATION;


--population cansus
select sum(city.population) from city,country 
where city.countrycode=country.code and 
 country.continent='Asia';

--African Cities
select city.name from city, country 
where city.countrycode = country.code 
and country.continent='Africa';

--Average Population of Each Continent

select country.continent, floor(avg(city.population))
from country
join city on city.countrycode = country.code
group by country.continent;





