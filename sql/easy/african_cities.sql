/*
Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

*/
select 
c.NAME
from CITY c JOIN COUNTRY co ON c.COUNTRYCODE = co.CODE
where co.CONTINENT = 'Africa';