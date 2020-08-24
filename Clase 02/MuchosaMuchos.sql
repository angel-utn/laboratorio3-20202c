Create Database MuchosaMuchos
go
Use MuchosaMuchos
go
Create Table Empleados(
	Mail varchar(60) not null primary key,
	Apellidos varchar(100) not null,
	Nombres varchar(100) not null,
	Fnac date null
)
Go
Create Table Lenguajes(
	ID int not null primary key identity (1, 1),
	Nombre varchar(50) not null
)
go
Create Table Lenguajes_x_Empleado(
	Mail varchar(60) not null,
	IDLenguaje int not null,
	Nivel tinyint not null check (Nivel >= 1 and Nivel <=10)
)
go
Alter Table Lenguajes_x_Empleado
Add Constraint PK_LxE Primary Key (Mail, IDLenguaje)
go
Alter Table Lenguajes_x_Empleado
Add Constraint FK_MailEmpleados Foreign Key(Mail) References Empleados(Mail)
go
Alter Table Lenguajes_x_Empleado
Add Constraint FK_Lenguajes Foreign Key (IDLenguaje) References Lenguajes(ID)

-- Carga de datos
-- Empleados
Set Dateformat 'DMY'
Insert into Empleados (Mail, Apellidos, Nombres, Fnac) Values('angel', 'Simon', 'Angel', '1/1/2000')
Insert into Empleados (Mail, Apellidos, Nombres, Fnac) Values('alejandro', 'Olivera', 'Alejandro', '22/10/1984')
Insert into Empleados (Mail, Apellidos, Nombres, Fnac) Values('silvana', 'Ferrari', 'Silvana', '1/1/2000')

-- Lenguajes
Insert into Lenguajes values('C')
Insert into Lenguajes values('Java')
Insert into Lenguajes values('Javascript')

-- Lenguajes x empleado
Insert into Lenguajes_x_Empleado (Mail, IDLenguaje, Nivel) Values('angel', 3, 6), ('silvana', 1, 10)

Insert into Lenguajes_x_Empleado (Mail, IDLenguaje, Nivel) Values('angel', 1, 4), ('alejandro', 1, 10)

-- Insert into Lenguajes_x_Empleado (Mail, IDLenguaje, Nivel) Values('angel', 1, 10)



