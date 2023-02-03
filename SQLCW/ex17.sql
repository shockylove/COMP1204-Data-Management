--17
SELECT Country.countriesAndTerritories ,
       round((sum(cases) * 1.0 / popData2020) * 100, 2) AS "cases %",
       round((sum(deaths) * 1.0 / popData2020) * 100, 2) AS "deaths %"
FROM Cases
NATURAL JOIN Country
GROUP BY  countriesAndTerritories,popData2020;
