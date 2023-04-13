/*
Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
*/
SELECT DISTINCT CITY FROM STATION
WHERE substring(CITY,-1,1) in ('a','e','i','u','o');