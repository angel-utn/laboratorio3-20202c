-- Requiere ejecutar actividad1_2.sql
Use MonkeyUniv
go
Create Table Paises(
    ID smallint not null primary key,
    Nombre varchar(50) not null
)
go
Create Table Usuarios(
    ID bigint not null primary key identity (1, 1),
    NombreUsuario varchar(50) not null unique,
)
go
Create Table Datos_Personales(
    ID bigint not null primary key foreign key references Usuarios(ID),
    Apellidos varchar(100) not null,
    Nombres varchar(100) not null,
    Nacimiento date not null,
    Genero char not null,
    Celular varchar(15) null,
    Email varchar(140) null,
    Domicilio varchar(200) not null,
    CP smallint not null,
    IDPais smallint not null foreign key references Paises(ID)
)
go
Create Table Inscripciones(
    ID bigint not null primary key identity (1, 1),
    IDUsuario bigint not null foreign key references Usuarios(ID),
    IDCurso bigint not null foreign key references Cursos(ID),
    Fecha date not null default(getdate()),
    Costo money not null check (Costo >= 0)
)
go
Create Table Pagos(
    ID bigint not null primary key identity (1, 1),
    IDInscripcion bigint not null foreign key references Inscripciones(ID),
    Fecha date not null default(getdate()),
    Importe money not null check(Importe > 0)
)
go
Create Table Certificaciones(
    IDInscripcion bigint not null primary key foreign key references Inscripciones(ID),
    Fecha date not null default(getdate()),
    Costo money not null check(Costo >= 0)
)
go
Create Table Reseñas(
    IDInscripcion bigint not null primary key foreign key references Inscripciones(ID),
    Fecha date not null default(getdate()),
    Observaciones varchar(MAX) not null,
    Puntaje decimal(3, 1) not null,
    Inapropiada bit not null default(0)
)
go
Create Table Instructores_x_Curso(
    IDUsuario bigint not null foreign key references Usuarios(ID),
    IDCurso bigint not null foreign key references Cursos(ID),
    Primary Key (IDUsuario, IDCurso)
)
