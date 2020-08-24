Create Database MonkeyUniv
go
Use MonkeyUniv
Go
Create Table Niveles(
    ID tinyint not null primary key identity (1, 1),
    Nombre varchar(50) not null
)
GO
Create Table Idiomas(
    ID smallint not null primary key identity (1, 1),
    Nombre varchar(50) not null
)
GO
Create Table TiposIdioma(
    ID tinyint not null primary key identity (1, 1),
    Nombre varchar(50) not null
)
Go
Create Table Categorias(
    ID smallint not null primary key identity (1, 1),
    Nombre varchar(100) not null
)
GO
Create Table TiposContenido(
    ID int not null primary key identity (1, 1),
    Nombre varchar(100) not null
)
Go
Create Table Cursos(
    ID bigint not null primary key identity (1, 1),
    IDNivel tinyint null foreign key references Niveles(ID),
    Nombre varchar(100) not null,
    CostoCurso money not null check (CostoCurso >= 0),
    CostoCertificacion money not null check (CostoCertificacion >= 0),
    Estreno date not null
)
Go
Create Table Clases(
    ID bigint not null primary key identity (1, 1),
    IDCurso bigint not null foreign key references Cursos(ID),
    Nombre varchar(100) not null,
    Numero smallint null check (Numero >= 0),
    Duracion int not null check (Duracion > 0)
)
Go
Create Table Contenidos(
    ID bigint not null primary key identity (1, 1),
    IDClase bigint foreign key references Clases(ID),
    IDTipo int not null foreign key references TiposContenido(ID),
    Tamaño int not null check (Tamaño > 0)
)
Go
Create Table Idiomas_x_Curso(
    IDCurso bigint not null foreign key references Cursos(ID),
    IDIdioma smallint not null foreign key references Idiomas(ID),
    IDTipo tinyint not null foreign key references TiposIdioma(ID),
    Primary key (IDCurso, IDIdioma, IDTipo)
)
go
Create Table Categorias_x_Curso(
    IDCurso bigint not null foreign key references Cursos(ID),
    IDCategoria smallint not null foreign key references Categorias(ID),
    Primary Key (IDCurso, IDCategoria)
)