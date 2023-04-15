/*
Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
*/
SELECT DISTINCT CITY FROM STATION
WHERE substring(CITY,-1,1) in ('a','e','i','u','o')
and substring(CITY,1,1) in ('a','e','i','u','o');