create table City (
	CityID VARCHAR(50) NOT NULL PRIMARY KEY,
	CityName VARCHAR(50) NOT NULL,
	Zipcode VARCHAR(50) NOT NULL,
	State VARCHAR(50) NOT NULL,
	Country VARCHAR(50) NOT NULL
);
insert into City (CityID, CityName, Zipcode, State, Country) values ('Taipei', 'Taipei', '48109', 'NorthWest', 'Taiwan');
insert into City (CityID, CityName, Zipcode, State, Country) values ('Taichung', 'Taichung', '48110', 'MidWest', 'Taiwan');
insert into City (CityID, CityName, Zipcode, State, Country) values ('Kaoshiung', 'Kaoshiung', '48111', 'SouthWest', 'Taiwan');
