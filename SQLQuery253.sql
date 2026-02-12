create database barbershop  

create table Name_barber
(
	BarberId int primary key identity(1, 1),
	Barber_Name nvarchar(50) not null,
	BarberSurname nvarchar(50) not null,
	Birthday datetime,
	Gender bit,
	Telephone nvarchar(50),
	Email nvarchar(50),
	PositionId int,
);

create table Positions(
	PositionId int primary key identity(1, 1),
	Name nvarchar(50)
);

insert into Positions values ('chif-barber'), ('senior'), ('junior')
select * from Positions
select Barber_Name
from Name_barber