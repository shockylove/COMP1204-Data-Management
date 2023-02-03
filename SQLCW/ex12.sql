INSERT INTO Date (dateRep, day, month, year)
SELECT DISTINCT dateRep, day, month, year
FROM dataset;

INSERT INTO Country (geoId, countryterritoryCode, continentExp, countriesAndTerritories, popData2020)
SELECT DISTINCT geoId, countryterritoryCode, continentExp, countriesAndTerritories, popData2020
FROM dataset;

INSERT INTO Cases (dateRep, geoId, cases, deaths)
SELECT DISTINCT dateRep, geoId, cases, deaths
FROM dataset;
