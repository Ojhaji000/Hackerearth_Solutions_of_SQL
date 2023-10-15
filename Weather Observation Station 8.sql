/*
there are two ways: brute force and using SUBSTR and IN
*/

--BRUTE FORCE METHOD
/*
select city
from station
where city like 'a%a'
or city like 'a%e'
or city like 'a%i'
or city like 'a%o'
or city like 'a%u'
or city like 'e%a'
or city like 'e%e'
or city like 'e%i'
or city like 'e%o'
or city like 'e%u'
or city like 'i%a'
or city like '%'
or city like 'i%i'
or city like 'o%o'
or city like 'u%u'
AND IT GOES ON
*/

-- SECOND WAY
SELECT DISTINCT CITY
FROM STATION
WHERE (SUBSTR(CITY, 1, 1)) IN ('a', 'e', 'i', 'o', 'u')
  AND (SUBSTR(CITY, -1, 1)) IN ('a', 'e', 'i', 'o', 'u');
