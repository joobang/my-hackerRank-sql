/*
A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to 4 decimal places.
*/
select 
    case
    when MOD((((select count(*) from station)+1)/2), 2) = 0 THEN (
        select round
        from (
            select 
                ROUND(LAT_N,4) as round,
                rank () over (order by LAT_N) as ranking
            from station
        ) a
        where a.ranking = (((select count(*) from station)+1)/2)
    )
    when MOD((((select count(*) from station)+1)/2), 2) = 1 THEN (
        select ROUND(AVG(LAT_N),4)
        from (
            select 
                LAT_N,
                rank () over (order by LAT_N) as ranking
                from station
            ) a
        where a.ranking = ((select count(*) from station)/2) or ((select count(*) from station)/2+1)
    )
    END
;