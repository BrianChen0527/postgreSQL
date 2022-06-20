CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

create table cars (
	car_uid UUID NOT NULL PRIMARY KEY,
	make VARCHAR(50) NOT NULL,
	model VARCHAR(50) NOT NULL,
	year VARCHAR(50) NOT NULL,
	price NUMERIC(19, 2) NOT NULL
);

insert into cars (car_uid, make, model, year, price) values (uuid_generate_v4(), 'Audi', 'V8', 1991, '448791.60');
insert into cars (car_uid, make, model, year, price) values (uuid_generate_v4(), 'Volvo', '960', 1992, '524135.89');
insert into cars (car_uid, make, model, year, price) values (uuid_generate_v4(), 'Mitsubishi', 'Diamante', 1996, '555070.47');
insert into cars (car_uid, make, model, year, price) values (uuid_generate_v4(), 'Mitsubishi', 'Galant', 1985, '433218.53');
insert into cars (car_uid, make, model, year, price) values (uuid_generate_v4(), 'Hyundai', 'Elantra', 1998, '635466.62');
insert into cars (car_uid, make, model, year, price) values (uuid_generate_v4(), 'Hyundai', 'Santa Fe', 2010, '204791.12');
insert into cars (car_uid, make, model, year, price) values (uuid_generate_v4(), 'Subaru', 'Tribeca', 2007, '242698.01');

create table people (
	people_uid UUID NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	gender VARCHAR(50) NOT NULL,
	email VARCHAR(50),
	car_uid UUID REFERENCES cars (car_uid),
    UNIQUE (car_uid)
);

insert into people (people_uid, first_name, last_name, gender, email) values (uuid_generate_v4(), 'Ado', 'Tale', 'Male', 'atale0@squidoo.com');
insert into people (people_uid, first_name, last_name, gender, email) values (uuid_generate_v4(), 'Anthony', 'Greener', 'Non-binary', 'agreener1@lulu.com');
insert into people (people_uid, first_name, last_name, gender, email) values (uuid_generate_v4(), 'Gar', 'Larman', 'Male', 'glarman2@google.com.br');
insert into people (people_uid, first_name, last_name, gender, email) values (uuid_generate_v4(), 'Heath', 'Murcott', 'Genderqueer', 'hmurcott3@trellian.com');
insert into people (people_uid, first_name, last_name, gender, email) values (uuid_generate_v4(), 'Molli', 'Dunks', 'Female', null);
insert into people (people_uid, first_name, last_name, gender, email) values (uuid_generate_v4(), 'Bernhard', 'Wollard', 'Male', null);
insert into people (people_uid, first_name, last_name, gender, email) values (uuid_generate_v4(), 'Ki', 'Suermeier', 'Female', 'ksuermeiera@ftc.gov');