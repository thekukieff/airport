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


insert into Raice (airport_departure,departure,arrival,airport_arrival) 
values ('Ыспарта', '25-09-2024 20:07:00','26-09-2024 12:00:00', 'Ыб'), 
('Ыб', '27-09-2025 21:07:00','29-09-2024 12:00:00', 'Ыгдыр'),
('Ыгдыр', '30-09-2024 12:11:00','01-10-2024 12:00:00', 'Ыргалар'),
('Ыргалар', '02-10-2024 21:07:00','02-10-2024 23:57:11', 'Ыйсон'),
('Ыйсон', '05-10-2024 21:22:00','06-10-2024 23:00:00', 'Ыйджонбу'),
('Ыйджонбу', '13-10-2024 08:07:00','13-10-2024 21:23:00', 'Ыспарта');

select *from Raice


create view schedule 
AS (

	select *from Raice


)

select *from schedule


create view passanger AS (
	SELECT *from passangers

)




select *from passanger


create view maxpassanger AS (
	 select MAX(id) as 'qwerty' from passangers
	 
)

select *from maxpassanger


create view cucucle AS (
	
	select airport_arrival from Raice group by airport_arrival

)

select *from cucucle


