/*
Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

Equilateral: It's a triangle with 3 sides of equal length.
Isosceles: It's a triangle with 2 sides of equal length.
Scalene: It's a triangle with 3 sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle.
*/
select 
    CASE 
        WHEN a = b and b = c THEN 'Equilateral'
        WHEN a >= b+c or b >= a+c or c >= a+b THEN 'Not A Triangle'
        WHEN (a = b and b != c) or (a = c and c != b) or (b = c and c != a) THEN 'Isosceles'
        ELSE 'Scalene'
    END
from triangles;