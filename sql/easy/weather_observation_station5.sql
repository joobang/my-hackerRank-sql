/*
Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

When ordered alphabetically, the CITY names are listed as ABC, DEF, PQRS, and WXY, with lengths  and . The longest name is PQRS, but there are  options for shortest named city. Choose ABC, because it comes first alphabetically.
*/
(SELECT city, CHAR_LENGTH(city)
FROM station
WHERE CHAR_LENGTH(city) = (SELECT MIN(CHAR_LENGTH(city)) FROM station)
ORDER BY city
LIMIT 1)
UNION ALL
(SELECT city, CHAR_LENGTH(city)
FROM station
WHERE CHAR_LENGTH(city) = (SELECT MAX(CHAR_LENGTH(city)) FROM station)
 LIMIT 1)


