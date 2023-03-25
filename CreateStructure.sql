if object_id('dbo.SKU') is not null
	drop table dbo.SKU;
create table dbo.SKU
(
 ID int identity primary key,
 Code as ('s' + str(ID)) persisted,
 Name varchar(255)
);
if object_id('dbo.Family') is not null
	drop table dbo.Family;
create table dbo.Family
(
ID int identity primary key,
SurName varchar(25),
BudgetValue int
);
if object_id('dbo.Basket','u') is not null
	drop table dbo.Basket;
create table dbo.Basket
(
 ID int identity primary key,
 ID_SKU int not null references dbo.SKU,
 ID_Family int not null references dbo.Family,
 Quantity int not null,
 Value int not null,
 PurchaseDate datetime default current_timestamp,
 DiscountValue int
);
