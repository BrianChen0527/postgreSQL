create table cars (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	make VARCHAR(50) NOT NULL,
	model VARCHAR(50) NOT NULL,
	year VARCHAR(50) NOT NULL,
	price NUMERIC(19, 2) NOT NULL
);

insert into cars (id, make, model, year, price) values (1, 'Audi', 'V8', 1991, '448791.60');
insert into cars (id, make, model, year, price) values (2, 'Volvo', '960', 1992, '524135.89');
insert into cars (id, make, model, year, price) values (3, 'Mitsubishi', 'Diamante', 1996, '555070.47');
insert into cars (id, make, model, year, price) values (4, 'Mitsubishi', 'Galant', 1985, '433218.53');
insert into cars (id, make, model, year, price) values (5, 'Hyundai', 'Elantra', 1998, '635466.62');

create table people (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	gender VARCHAR(50) NOT NULL,
	email VARCHAR(50),
	car_id BIGINT REFERENCES cars (id),
    UNIQUE (car_id)
);

insert into people (id, first_name, last_name, gender, email, car_id) values (1, 'Ado', 'Tale', 'Male', 'atale0@squidoo.com', 4);
insert into people (id, first_name, last_name, gender, email, car_id) values (2, 'Anthony', 'Greener', 'Non-binary', 'agreener1@lulu.com', 5);
insert into people (id, first_name, last_name, gender, email, car_id) values (3, 'Gar', 'Larman', 'Male', 'glarman2@google.com.br', 1);
insert into people (id, first_name, last_name, gender, email, car_id) values (4, 'Heath', 'Murcott', 'Genderqueer', 'hmurcott3@trellian.com', 3);
insert into people (id, first_name, last_name, gender, email, car_id) values (5, 'Molli', 'Dunks', 'Female', null, 2);
