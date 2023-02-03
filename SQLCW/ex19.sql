--19
SELECT Cases.dateRep AS "date",
       sum(deaths) OVER win1 AS "cumulative UK deaths",
       sum(cases) OVER win1 AS "cumulative UK cases"
FROM Cases
NATURAL JOIN Date
WHERE geoid='UK'
WINDOW win1 AS (ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
ORDER BY year, month, day ASC ;
