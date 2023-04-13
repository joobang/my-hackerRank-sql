/*
Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
where LAT_N is the northern latitude and LONG_W is the western longitude.
*/
SELECT DISTINCT CITY FROM STATION
WHERE substring(CITY, 1,1) in ('a','i','e','o','u');
