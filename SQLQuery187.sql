create table Customers(
	Id int primary key identity(1, 1),
	FirstName nvarchar(30) not null 
);

create table Products(
	Id int primary key identity(1, 1),
	Name nvarchar(30) not null 
);

create table Orders(
	Id int primary key identity(1, 1),
	ProductId int not null,
	CustomerId int not null,
	CreatedAt Date not null,
	ProductCount int default 1,
	Price int,
	foreign key (ProductId) references Products(Id),
	foreign key (CustomerId) references Customers(Id),


);

select Customers.FirstName, Products.Name ,Orders.CreatedAt
from Orders, Customers, Products
where Orders.CustomerId=Customers.Id
and Orders.ProductId = Products.Id