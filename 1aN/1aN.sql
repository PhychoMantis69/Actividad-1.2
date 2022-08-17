Create database UnoaMuchos
Go
Use UnoaMuchos
Go

/* Para esta relacion definimos que un sector puede tener muchos anfitriones pero un anfitrion solo puede pertenercer a un sector. */

Create Table Sector(
	Id int not null Primary key,
	Nombre varchar(30) not null,
	Email varchar(30) not null unique
)
Go

Create Table Anfitriones(
	Legajo bigint not null Primary key,
	IdSector int not null,
	Apellido varchar(30) not null,
	Nombre varchar(30) not null,
	FechaNacimiento date not null
)
Go
Alter Table Anfitriones
Add Constraint FK_Anfitriones Foreign key(IdSector) references Sector(Id)
Go
