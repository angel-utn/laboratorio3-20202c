Create Database Clase01

Use Clase01

Create Table Areas(
	ID      smallint not null primary key identity(1000, 1),
	Nombre varchar(50) not null,
	Presupuesto money not null check(Presupuesto > 0),
	Mail varchar(100) not null
)

Create Table Empleados(
	Legajo bigint not null primary key,
	IDArea smallint not null foreign key references Areas(ID),
	Apellidos varchar(100) not null,
	Nombres varchar(100) not null,
	FechaNac date not null,
	Mail varchar(100) not null unique,
	Telefono varchar(20) null,
	Sueldo money not null check (Sueldo > 0)
);