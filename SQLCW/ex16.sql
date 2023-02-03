--16
select countriesAndTerritories AS country, Cases.dateRep AS date,
       Cases.cases, Cases.deaths
from Cases
natural join Country
natural join Date
GROUP BY country,dateRep
ORDER BY countriesAndTerritories ASC ,year,month,day ASC
