--18
SELECT countriesAndTerritories AS "country",
       ((CAST(sum(deaths) AS REAL) * 100) / sum(cases)) AS "deaths % cases"
FROM Cases
INNER JOIN Country ON Cases.geoId = Country.geoId
GROUP BY country
ORDER BY "deaths % cases" DESC
LIMIT 10;
