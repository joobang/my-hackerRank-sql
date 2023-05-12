/*
We define an employee's total earnings to be their monthly salary x months worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these 2 values as  space-separated integers.
*/
select a.earnings, count(*)
from (
    select name, months, salary, months*salary as earnings
    from employee
) a join (
    select max(earnings) as max_earnings
        from (
            select name, months, salary, months*salary as earnings
            from employee
        ) t
    ) b on a.earnings = b.max_earnings
group by a.earnings
;