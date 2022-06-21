create table Employee (
	EmployeeID VARCHAR(50) NOT NULL PRIMARY KEY,
	EmployeeName VARCHAR(50) NOT NULL,
	CityID VARCHAR(50) NOT NULL,
	Phone VARCHAR(50) NOT NULL
);
insert into Employee (EmployeeID, EmployeeName, CityID, Phone) values ('Udell', 'Udell', 'Taipei', '585-854-4706');
insert into Employee (EmployeeID, EmployeeName, CityID, Phone) values ('Tani', 'Tani', 'Taichung', '251-671-7834');
insert into Employee (EmployeeID, EmployeeName, CityID, Phone) values ('Marice', 'Marice', 'Kaoshiung', '219-403-0747');
