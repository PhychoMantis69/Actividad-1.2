Create database UnoaUno
Go
Use UnoaUno
Go

/*
Para esta relacion, lo que pensamos es que un anfitrion puede tener una
informacion de contacto y esa informacion solo le puede pertenecer a un solo
anfitrion 
*/

Create Table Anfitriones(
	Legajo bigint not null Primary key,
	Apellido varchar(30) not null,
	Nombre varchar(30) not null,
	FechaNacimiento date not null
)
Go
Alter Table Anfitriones
Add Constraint CHK_Anfitriones Check(FechaNacimiento < GETDATE())
Go

Create Table InformacionDeContacto(
	Legajo bigint not null Primary key,
	Localidad varchar(30) not null,
	Telefono varchar(15) not null,
	Email varchar(30) not null unique
)
Go
Alter Table InformacionDeContacto
Add Constraint FK_InformacionDeContacto Foreign key(Legajo) references Anfitriones(Legajo)
Go

