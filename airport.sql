create database Airport 

create table Raice(

	id int identity(1,1) primary key not null,
	airport_departure nvarchar(max) not null,
	departure smalldatetime,
	arrival smalldatetime,
	airport_arrival nvarchar(MAX)

	
	);

create table BiletEco(
	id int identity(1,1),
	bilet_departure_city nvarchar(max) not null,
	bilet_departure_airport smalldatetime,
	bilet_arrival_airport smalldatetime,
	bilet_arrival_city nvarchar(MAX),
	number int,
	place int

);


create table BiletBiss(
	id int identity(1,1) primary key not null,
	bilet_departure_city nvarchar(max) not null,
	bilet_departure_airport smalldatetime,
	bilet_arrival_airport smalldatetime,
	bilet_arrival_city nvarchar(MAX),
	number int,
	place int



);


create table airplane(

	id int identity(1,1) primary key not null,
	count_buisness int not null,
	count_econom int not null,
	model nvarchar(max),
);

create table passangers(
	id int identity (1, 1) primary key not null,
	[name] nvarchar(max) not null,
	surname nvarchar(max) not null,
	patronymic nvarchar(max)


);

create table city(
	id int identity(1, 1) primary key not null,
	[name] nvarchar(max)

);


