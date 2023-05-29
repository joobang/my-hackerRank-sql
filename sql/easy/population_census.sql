/*
Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

Input Format

The CITY and COUNTRY tables are described as follows:
*/
select SUM(c.POPULATION)
from CITY c JOIN COUNTRY co ON c.COUNTRYCODE = co.CODE
WHERE co.CONTINENT = 'Asia';