--Weather Observation Station 9
select distinct city
from station
where not (city like 'A%' or city like 'E%' or city like 'I%' or city like 'O%' or city like 'U%');


--Weather Observation Station 10
sselect distinct city from station
where city not like '%a'
and city not like '%e'
and city not like '%i'
and city not like '%o'
and city not like '%u'

--Weather Observation Station 11
select distinct city
from station 
where not (city like 'A%' or city like 'E%' or city like 'I%' 
or city like 'O%' or  city like 'U%') or not (city like '%a' 
or city like '%e' or city like '%i' or city like '%o' or  city like '%u');


--Weather Observation Station 12

select distinct city
from station 
where not (city like 'A%' or city like 'E%' or city like 'I%' 
or city like 'O%' or  city like 'U%') and not (city like '%a' 
or city like '%e' or city like '%i' or city like '%o' or  city like '%u');



