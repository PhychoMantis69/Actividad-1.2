Create Database MuchosaMuchos
Go
Use MuchosaMuchos
Go

/* Para esta relacion lo que pensamos fue que un anfitrion puede saber manejar muchos juegos o atracciones y muchos juegos pueden ser manejados por muchos anfitriones. */

Create Table Anfitriones(
	Legajo bigint not null Primary key,
	Apellido varchar(30) not null,
	Nombre varchar(30) not null,
	FechaNacimiento date not null
)
Go

Create Table JuegosPorAnfitrion(
	Legajo bigint not null,
	IdJuego int not null,
	Estado varchar(20) not null
)
Go
Alter Table JuegosPorAnfitrion
Add Constraint PK_JuegosPorAnfitrion Primary key(Legajo, IdJuego)
Go
Alter Table JuegosPorAnfitrion
Add Constraint FK_JuegosPorAnfitrion Foreign key(Legajo) references Anfitriones(Legajo)
Go
Alter Table JuegosPorAnfitrion
Add Constraint FK2_JuegosPorAnfitrion Foreign key(IdJuego) references Juegos(Id)
Go

Create Table Juegos(
	Id int not null Primary key,
	Nombre varchar(30)
)
Go
