Create Database UnoaUno
go
Use UnoaUno
Go
Create Table Libros(
 ID bigint not null,
 Titulo varchar(150) not null,
 FechaPub date null
)
Go
Alter Table Libros
Add Paginas smallint null
Go
Alter Table Libros
Add Constraint PK_Libros Primary Key (ID)
Go
Alter Table Libros
Add Constraint CHK_PagPositivas Check (Paginas > 0)
go

Create Table Portadas(
	ID bigint not null,
	Portada varchar(250),
	Contratapa varchar(250)
)
go
Alter Table Portadas
Add Constraint PK_Portada Primary Key (ID)
go
Alter Table Portadas
Add Constraint FK_PortadasLibros Foreign Key (ID) References Libros(ID)
go
Alter Table Libros
Drop Column FechaPub
go
-- Carga de datos
Insert into Libros(ID, Titulo, Paginas) Values (100, 'Sherlock Holmes', 140)
Insert into Libros(ID, Titulo, Paginas) Values (110, 'Carrie', 230)
