create table Customer (
	CustomerID VARCHAR(50) NOT NULL PRIMARY KEY,
	Name VARCHAR(50) NOT NULL,
	phone VARCHAR(50) NOT NULL,
	address VARCHAR(50) NOT NULL
);

insert into Customer (CustomerID, Name, phone, address) values ('Alice', 'Ailsun', '833-542-1347', '3641 Forest Junction');
insert into Customer (CustomerID, Name, phone, address) values ('Brian', 'Gustave', '760-263-8640', '387 Summer Ridge Avenue');
insert into Customer (CustomerID, Name, phone, address) values ('Corissa', 'Eugen', '402-113-0102', '5 Granby Junction');
insert into Customer (CustomerID, Name, phone, address) values ('Geoffrey', 'Haslett', '250-811-2428', '277 Springview Junction');
insert into Customer (CustomerID, Name, phone, address) values ('Idalina', 'Catlee', '171-416-1770', '7 Waubesa Alley');
