create table Date
(
    dateRep Text    not null
        primary key,
    day     INTEGER not null,
    month   INTEGER not null,
    year    INTEGER not null
);

create table Country
(
    geoId                   TEXT    not null
        constraint Country_pk
            primary key,
    countriesAndTerritories TEXT    not null,
    countryterritoryCode    TEXT    not null,
    popData2020             integer not null,
    continentExp            TEXT    not null
);

create table Cases
(
    dateRep TEXT not null,
    geoId   TEXT not null,
    deaths  integer,
    cases   integer,
    constraint Cases_pk
        primary key (dateRep, geoId)
);
