--15
SELECT Cases.dateRep,cases
FROM Cases
INNER JOIN Date ON Date.dateRep = Cases.dateRep
WHERE Cases.geoId = 'UK'
ORDER BY year,month,day ASC;
