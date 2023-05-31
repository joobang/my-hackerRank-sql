/*
Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/
select 
    co.CONTINENT,
    FLOOR(AVG(c.POPULATION))
from city c JOIN COUNTRY co on c.COUNTRYCODE = co.CODE
group by co.CONTINENT;