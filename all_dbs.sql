CREATE TABLE country(
    country_code VARCHAR(15) PRIMARY KEY,
    country_name VARCHAR(80)
    
);
CREATE TABLE median_age (
    country_code varchar(15),   
    year integer,
    median_age float,
    PRIMARY KEY (country_code,year),
    CONSTRAINT fk_country
      FOREIGN KEY(country_code) 
	    REFERENCES country(country_code)
);
CREATE TABLE alcohol(
    id serial PRIMARY KEY,
    country_code varchar(15),
    year integer,
    alc_type VARCHAR (255),
    alc_num DEC,
    CONSTRAINT fk_country
      FOREIGN KEY(country_code) 
	    REFERENCES country(country_code)
);
CREATE TABLE income(
    country_code VARCHAR(15),
    gdp_per_capita DEC,
    year INT,
    PRIMARY KEY (country_code,year),
    CONSTRAINT fk_country
      FOREIGN KEY(country_code) 
	    REFERENCES country(country_code)
);
CREATE TABLE traffic_deaths(
    country_code VARCHAR(15),
    deaths_per_100k INT,
    year INT,
    PRIMARY KEY (country_code, year),
    CONSTRAINT fk_country
      FOREIGN KEY(country_code) 
	    REFERENCES country(country_code)
);

-- SELECT * from median_age;
-- select * from alcohol;
-- select * from income;