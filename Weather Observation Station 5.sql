/*
Enter your query here.
*/

select city , LENGTH(CITY)
from station
ORDER BY LENGTH(CITY), CITY
LIMIT 1;

select city, LENGTH(CITY)
from station
ORDER BY LENGTH(CITY) DESC
LIMIT 1;
