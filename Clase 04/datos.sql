USE [MonkeyUniv]
GO
SET DATEFORMAT 'YMD'
GO
SET IDENTITY_INSERT [dbo].[Niveles] ON 
GO
INSERT [dbo].[Niveles] ([ID], [Nombre]) VALUES (1, N'Introductivo')
GO
INSERT [dbo].[Niveles] ([ID], [Nombre]) VALUES (2, N'Aficionado')
GO
INSERT [dbo].[Niveles] ([ID], [Nombre]) VALUES (3, N'Avanzado')
GO
INSERT [dbo].[Niveles] ([ID], [Nombre]) VALUES (4, N'Medio')
GO
INSERT [dbo].[Niveles] ([ID], [Nombre]) VALUES (5, N'Principiante')
GO
INSERT [dbo].[Niveles] ([ID], [Nombre]) VALUES (6, N'Junior')
GO
INSERT [dbo].[Niveles] ([ID], [Nombre]) VALUES (7, N'Experto')
GO
SET IDENTITY_INSERT [dbo].[Niveles] OFF
GO
SET IDENTITY_INSERT [dbo].[Cursos] ON 
GO
INSERT [dbo].[Cursos] ([ID], [IDNivel], [Nombre], [CostoCurso], [CostoCertificacion], [Estreno]) VALUES (1, 5, N'Lenguaje C', 14000.0000, 7000.0000, CAST(N'2015-10-10' AS Date))
GO
INSERT [dbo].[Cursos] ([ID], [IDNivel], [Nombre], [CostoCurso], [CostoCertificacion], [Estreno]) VALUES (2, NULL, N'Cocina italiana', 20000.0000, 8500.0000, CAST(N'2019-09-09' AS Date))
GO
INSERT [dbo].[Cursos] ([ID], [IDNivel], [Nombre], [CostoCurso], [CostoCertificacion], [Estreno]) VALUES (3, 3, N'Bordado: Técnicas avanzadas', 5000.0000, 1000.0000, CAST(N'2018-07-03' AS Date))
GO
INSERT [dbo].[Cursos] ([ID], [IDNivel], [Nombre], [CostoCurso], [CostoCertificacion], [Estreno]) VALUES (4, 5, N'Python 101', 13000.0000, 4000.0000, CAST(N'2017-07-07' AS Date))
GO
INSERT [dbo].[Cursos] ([ID], [IDNivel], [Nombre], [CostoCurso], [CostoCertificacion], [Estreno]) VALUES (5, 5, N'Javascript 101', 10000.0000, 5000.0000, CAST(N'2017-07-07' AS Date))
GO
INSERT [dbo].[Cursos] ([ID], [IDNivel], [Nombre], [CostoCurso], [CostoCertificacion], [Estreno]) VALUES (6, 2, N'Introducción a la pesca con mosca', 17000.0000, 7000.0000, CAST(N'2020-09-21' AS Date))
GO
INSERT [dbo].[Cursos] ([ID], [IDNivel], [Nombre], [CostoCurso], [CostoCertificacion], [Estreno]) VALUES (7, 4, N'Preparación de mermeladas', 10000.0000, 1000.0000, CAST(N'2020-08-10' AS Date))
GO
INSERT [dbo].[Cursos] ([ID], [IDNivel], [Nombre], [CostoCurso], [CostoCertificacion], [Estreno]) VALUES (8, 5, N'Pixel art', 0.0000, 15000.0000, CAST(N'2019-10-11' AS Date))
GO
INSERT [dbo].[Cursos] ([ID], [IDNivel], [Nombre], [CostoCurso], [CostoCertificacion], [Estreno]) VALUES (9, 5, N'Guitarra', 0.0000, 1500.0000, CAST(N'2015-05-06' AS Date))
GO
INSERT [dbo].[Cursos] ([ID], [IDNivel], [Nombre], [CostoCurso], [CostoCertificacion], [Estreno]) VALUES (10, NULL, N'Edad Media: Armas y técnicas bélicas', 50000.0000, 35000.0000, CAST(N'2020-08-20' AS Date))
GO
INSERT [dbo].[Cursos] ([ID], [IDNivel], [Nombre], [CostoCurso], [CostoCertificacion], [Estreno]) VALUES (11, NULL, N'Historia del Rock Argentino', 20000.0000, 2000.0000, CAST(N'2020-08-20' AS Date))
GO
INSERT [dbo].[Cursos] ([ID], [IDNivel], [Nombre], [CostoCurso], [CostoCertificacion], [Estreno]) VALUES (12, 5, N'Ajedrez', 7000.0000, 700.0000, CAST(N'2008-04-11' AS Date))
GO
INSERT [dbo].[Cursos] ([ID], [IDNivel], [Nombre], [CostoCurso], [CostoCertificacion], [Estreno]) VALUES (13, 5, N'Go', 7000.0000, 700.0000, CAST(N'2008-04-11' AS Date))
GO
INSERT [dbo].[Cursos] ([ID], [IDNivel], [Nombre], [CostoCurso], [CostoCertificacion], [Estreno]) VALUES (14, 5, N'Damas', 7000.0000, 700.0000, CAST(N'2008-04-11' AS Date))
GO
INSERT [dbo].[Cursos] ([ID], [IDNivel], [Nombre], [CostoCurso], [CostoCertificacion], [Estreno]) VALUES (15, NULL, N'Internet para dummies', 5000.0000, 50.0000, CAST(N'2010-08-19' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Cursos] OFF
GO
SET IDENTITY_INSERT [dbo].[Idiomas] ON 
GO
INSERT [dbo].[Idiomas] ([ID], [Nombre]) VALUES (1, N'Castellano')
GO
INSERT [dbo].[Idiomas] ([ID], [Nombre]) VALUES (2, N'Inglés')
GO
INSERT [dbo].[Idiomas] ([ID], [Nombre]) VALUES (3, N'Italiano')
GO
INSERT [dbo].[Idiomas] ([ID], [Nombre]) VALUES (4, N'Francés')
GO
INSERT [dbo].[Idiomas] ([ID], [Nombre]) VALUES (5, N'Portugués')
GO
INSERT [dbo].[Idiomas] ([ID], [Nombre]) VALUES (6, N'Chino')
GO
SET IDENTITY_INSERT [dbo].[Idiomas] OFF
GO
SET IDENTITY_INSERT [dbo].[TiposIdioma] ON 
GO
INSERT [dbo].[TiposIdioma] ([ID], [Nombre]) VALUES (1, N'Subtítulo')
GO
INSERT [dbo].[TiposIdioma] ([ID], [Nombre]) VALUES (2, N'Audio')
GO
INSERT [dbo].[TiposIdioma] ([ID], [Nombre]) VALUES (3, N'Texto del video')
GO
SET IDENTITY_INSERT [dbo].[TiposIdioma] OFF
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (1, 1, 1)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (1, 1, 2)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (1, 2, 1)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (1, 2, 2)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (1, 3, 1)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (1, 4, 1)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (1, 5, 1)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (2, 1, 1)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (2, 2, 1)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (2, 2, 2)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (2, 3, 1)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (2, 3, 2)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (2, 4, 1)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (2, 5, 1)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (3, 1, 2)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (4, 1, 1)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (4, 2, 1)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (4, 2, 2)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (4, 3, 1)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (4, 4, 1)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (4, 5, 1)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (5, 1, 1)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (5, 2, 1)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (5, 2, 2)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (5, 3, 1)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (5, 4, 1)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (5, 5, 1)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (6, 1, 1)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (6, 2, 1)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (6, 2, 2)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (6, 3, 1)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (6, 4, 1)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (6, 5, 1)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (7, 1, 1)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (7, 1, 2)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (7, 2, 1)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (8, 1, 1)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (8, 1, 2)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (8, 2, 1)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (9, 1, 2)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (10, 1, 1)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (10, 2, 1)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (10, 2, 2)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (11, 1, 1)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (11, 1, 2)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (12, 1, 1)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (12, 1, 2)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (13, 1, 1)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (13, 1, 2)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (14, 1, 1)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (14, 1, 2)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (15, 1, 1)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (15, 1, 2)
GO
INSERT [dbo].[Idiomas_x_Curso] ([IDCurso], [IDIdioma], [IDTipo]) VALUES (15, 2, 1)
GO
SET IDENTITY_INSERT [dbo].[Categorias] ON 
GO
INSERT [dbo].[Categorias] ([ID], [Nombre]) VALUES (1, N'Argentina')
GO
INSERT [dbo].[Categorias] ([ID], [Nombre]) VALUES (2, N'Arte')
GO
INSERT [dbo].[Categorias] ([ID], [Nombre]) VALUES (3, N'Bélico')
GO
INSERT [dbo].[Categorias] ([ID], [Nombre]) VALUES (4, N'Bordado')
GO
INSERT [dbo].[Categorias] ([ID], [Nombre]) VALUES (5, N'Cocina')
GO
INSERT [dbo].[Categorias] ([ID], [Nombre]) VALUES (6, N'Deportes individuales')
GO
INSERT [dbo].[Categorias] ([ID], [Nombre]) VALUES (7, N'Diseño')
GO
INSERT [dbo].[Categorias] ([ID], [Nombre]) VALUES (8, N'Edad media')
GO
INSERT [dbo].[Categorias] ([ID], [Nombre]) VALUES (9, N'Historia')
GO
INSERT [dbo].[Categorias] ([ID], [Nombre]) VALUES (10, N'Informática')
GO
INSERT [dbo].[Categorias] ([ID], [Nombre]) VALUES (11, N'Internet')
GO
INSERT [dbo].[Categorias] ([ID], [Nombre]) VALUES (12, N'Italia')
GO
INSERT [dbo].[Categorias] ([ID], [Nombre]) VALUES (13, N'Juegos de tablero')
GO
INSERT [dbo].[Categorias] ([ID], [Nombre]) VALUES (14, N'Manualidades')
GO
INSERT [dbo].[Categorias] ([ID], [Nombre]) VALUES (15, N'Música')
GO
INSERT [dbo].[Categorias] ([ID], [Nombre]) VALUES (16, N'Negocios')
GO
INSERT [dbo].[Categorias] ([ID], [Nombre]) VALUES (17, N'Pesca')
GO
INSERT [dbo].[Categorias] ([ID], [Nombre]) VALUES (18, N'Programación')
GO
SET IDENTITY_INSERT [dbo].[Categorias] OFF
GO
INSERT [dbo].[Categorias_x_Curso] ([IDCurso], [IDCategoria]) VALUES (1, 10)
GO
INSERT [dbo].[Categorias_x_Curso] ([IDCurso], [IDCategoria]) VALUES (1, 18)
GO
INSERT [dbo].[Categorias_x_Curso] ([IDCurso], [IDCategoria]) VALUES (2, 5)
GO
INSERT [dbo].[Categorias_x_Curso] ([IDCurso], [IDCategoria]) VALUES (2, 12)
GO
INSERT [dbo].[Categorias_x_Curso] ([IDCurso], [IDCategoria]) VALUES (3, 2)
GO
INSERT [dbo].[Categorias_x_Curso] ([IDCurso], [IDCategoria]) VALUES (3, 4)
GO
INSERT [dbo].[Categorias_x_Curso] ([IDCurso], [IDCategoria]) VALUES (3, 14)
GO
INSERT [dbo].[Categorias_x_Curso] ([IDCurso], [IDCategoria]) VALUES (4, 10)
GO
INSERT [dbo].[Categorias_x_Curso] ([IDCurso], [IDCategoria]) VALUES (4, 18)
GO
INSERT [dbo].[Categorias_x_Curso] ([IDCurso], [IDCategoria]) VALUES (5, 10)
GO
INSERT [dbo].[Categorias_x_Curso] ([IDCurso], [IDCategoria]) VALUES (5, 18)
GO
INSERT [dbo].[Categorias_x_Curso] ([IDCurso], [IDCategoria]) VALUES (6, 6)
GO
INSERT [dbo].[Categorias_x_Curso] ([IDCurso], [IDCategoria]) VALUES (6, 17)
GO
INSERT [dbo].[Categorias_x_Curso] ([IDCurso], [IDCategoria]) VALUES (7, 5)
GO
INSERT [dbo].[Categorias_x_Curso] ([IDCurso], [IDCategoria]) VALUES (7, 16)
GO
INSERT [dbo].[Categorias_x_Curso] ([IDCurso], [IDCategoria]) VALUES (8, 2)
GO
INSERT [dbo].[Categorias_x_Curso] ([IDCurso], [IDCategoria]) VALUES (8, 7)
GO
INSERT [dbo].[Categorias_x_Curso] ([IDCurso], [IDCategoria]) VALUES (8, 10)
GO
INSERT [dbo].[Categorias_x_Curso] ([IDCurso], [IDCategoria]) VALUES (9, 2)
GO
INSERT [dbo].[Categorias_x_Curso] ([IDCurso], [IDCategoria]) VALUES (9, 9)
GO
INSERT [dbo].[Categorias_x_Curso] ([IDCurso], [IDCategoria]) VALUES (9, 15)
GO
INSERT [dbo].[Categorias_x_Curso] ([IDCurso], [IDCategoria]) VALUES (10, 3)
GO
INSERT [dbo].[Categorias_x_Curso] ([IDCurso], [IDCategoria]) VALUES (10, 8)
GO
INSERT [dbo].[Categorias_x_Curso] ([IDCurso], [IDCategoria]) VALUES (10, 9)
GO
INSERT [dbo].[Categorias_x_Curso] ([IDCurso], [IDCategoria]) VALUES (11, 1)
GO
INSERT [dbo].[Categorias_x_Curso] ([IDCurso], [IDCategoria]) VALUES (11, 9)
GO
INSERT [dbo].[Categorias_x_Curso] ([IDCurso], [IDCategoria]) VALUES (11, 15)
GO
INSERT [dbo].[Categorias_x_Curso] ([IDCurso], [IDCategoria]) VALUES (12, 6)
GO
INSERT [dbo].[Categorias_x_Curso] ([IDCurso], [IDCategoria]) VALUES (12, 9)
GO
INSERT [dbo].[Categorias_x_Curso] ([IDCurso], [IDCategoria]) VALUES (12, 13)
GO
INSERT [dbo].[Categorias_x_Curso] ([IDCurso], [IDCategoria]) VALUES (13, 6)
GO
INSERT [dbo].[Categorias_x_Curso] ([IDCurso], [IDCategoria]) VALUES (13, 9)
GO
INSERT [dbo].[Categorias_x_Curso] ([IDCurso], [IDCategoria]) VALUES (13, 13)
GO
INSERT [dbo].[Categorias_x_Curso] ([IDCurso], [IDCategoria]) VALUES (14, 9)
GO
INSERT [dbo].[Categorias_x_Curso] ([IDCurso], [IDCategoria]) VALUES (14, 13)
GO
INSERT [dbo].[Categorias_x_Curso] ([IDCurso], [IDCategoria]) VALUES (15, 10)
GO
INSERT [dbo].[Categorias_x_Curso] ([IDCurso], [IDCategoria]) VALUES (15, 11)
GO
SET IDENTITY_INSERT [dbo].[TiposContenido] ON 
GO
INSERT [dbo].[TiposContenido] ([ID], [Nombre]) VALUES (1, N'Audio de alta calidad')
GO
INSERT [dbo].[TiposContenido] ([ID], [Nombre]) VALUES (2, N'Examen')
GO
INSERT [dbo].[TiposContenido] ([ID], [Nombre]) VALUES (3, N'Texto')
GO
INSERT [dbo].[TiposContenido] ([ID], [Nombre]) VALUES (4, N'Video')
GO
SET IDENTITY_INSERT [dbo].[TiposContenido] OFF
GO
SET IDENTITY_INSERT [dbo].[Clases] ON 
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (1, 1, N'Tipos de datos y variables', 1, 45)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (2, 1, N'Estructura de decisión', 2, 45)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (3, 1, N'Estructura de repetición', 3, 50)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (4, 1, N'Arrays', 4, 60)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (5, 1, N'Funciones', 5, 70)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (6, 2, N'Pastas', 1, 50)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (7, 2, N'Pizzas', 2, 50)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (8, 2, N'Pescados', 3, 50)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (9, 2, N'Dulces', 4, 50)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (10, 3, N'Elementos básicos para comenzar', 1, 45)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (11, 3, N'Tipos de telas', 2, 50)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (12, 3, N'Tipos de puntos', 3, 60)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (13, 4, N'Tipos de datos y variables', 1, 30)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (14, 4, N'Estructura de decisión', 2, 40)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (15, 4, N'Estructura de repetición', 3, 20)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (16, 4, N'Arrays', 4, 40)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (17, 4, N'Funciones', 5, 50)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (18, 4, N'Clases', 6, 100)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (19, 5, N'Tipos de datos y variables', 1, 50)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (20, 5, N'Estructura de decisión', 2, 60)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (21, 5, N'Estructura de repetición', 3, 50)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (22, 5, N'Arrays', 4, 70)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (23, 5, N'Funciones', 5, 60)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (24, 5, N'Clases', 6, 70)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (25, 6, N'Elementos básicos para comenzar', 1, 90)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (26, 6, N'Los peces', 2, 120)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (27, 6, N'Las moscas', 3, 90)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (28, 7, N'Frutas de estación', 1, 50)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (29, 7, N'Cocción y almacenamiento', 2, 50)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (30, 7, N'Herramientas para venta online', 3, 90)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (31, 7, N'Poniendose al día con la AFIP', 4, 110)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (32, 8, N'Empezando: Ejemplos', 1, 60)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (33, 8, N'Práctica', 2, 70)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (34, 8, N'Abandonando porque no me sale', 3, 5)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (35, 9, N'Historia de la guitarra', 1, 60)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (36, 9, N'Historia de las cuerdas de la guitarra', 2, 40)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (37, 9, N'Historia de las clavijas de la guitarra', 3, 70)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (38, 9, N'Brian May', 4, 80)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (39, 10, N'La caballería', 1, 150)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (40, 10, N'La infantería', 2, 200)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (41, 10, N'Tropas lanzaproyectiles', 3, 240)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (42, 10, N'Armas de asedio', 4, 330)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (43, 11, N'Virus', 1, 120)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (44, 11, N'Soda Stereo', 2, 120)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (45, 11, N'Las demás bandas', 3, 30)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (46, 12, N'Reglas de juego', 1, 80)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (47, 13, N'Reglas de juego', 1, 80)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (48, 14, N'Reglas de juego', 1, 40)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (49, 15, N'La historia de Internet', 1, 90)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (50, 15, N'Memes', 2, 70)
GO
INSERT [dbo].[Clases] ([ID], [IDCurso], [Nombre], [Numero], [Duracion]) VALUES (51, 15, N'¿Cómo mandar spam?', 3, 50)
GO
SET IDENTITY_INSERT [dbo].[Clases] OFF
GO
SET IDENTITY_INSERT [dbo].[Contenidos] ON 
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (1, 1, 3, 3)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (2, 1, 4, 42129)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (3, 2, 3, 9)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (4, 2, 4, 42479)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (5, 3, 3, 8)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (6, 3, 4, 31123)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (7, 4, 3, 8)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (8, 4, 4, 52558)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (9, 5, 3, 2)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (10, 5, 4, 27233)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (11, 6, 4, 7565)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (12, 7, 4, 11748)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (13, 8, 4, 12277)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (14, 9, 4, 41865)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (15, 10, 3, 10)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (16, 10, 4, 55689)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (17, 11, 3, 10)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (18, 11, 4, 13564)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (19, 12, 3, 8)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (20, 12, 4, 45610)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (21, 1, 3, 4)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (22, 1, 4, 23281)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (23, 2, 3, 8)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (24, 2, 4, 27679)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (25, 3, 3, 2)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (26, 3, 4, 6054)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (27, 4, 3, 1)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (28, 4, 4, 33472)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (29, 5, 3, 4)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (30, 5, 4, 27925)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (31, 5, 2, 1)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (32, 18, 3, 7)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (33, 18, 4, 21568)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (34, 18, 2, 2)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (35, 1, 4, 1093)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (36, 2, 4, 57116)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (37, 3, 4, 22670)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (38, 4, 4, 40725)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (39, 5, 4, 1772)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (40, 18, 4, 50823)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (41, 10, 4, 8836)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (42, 26, 4, 23943)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (43, 27, 4, 50476)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (44, 28, 3, 1)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (45, 28, 4, 54331)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (46, 28, 2, 2)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (47, 29, 3, 6)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (48, 29, 4, 17761)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (49, 29, 2, 2)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (50, 30, 3, 5)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (51, 30, 4, 56704)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (52, 30, 2, 2)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (53, 31, 3, 1)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (54, 31, 4, 13237)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (55, 31, 2, 1)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (56, 32, 4, 15684)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (57, 33, 4, 24366)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (58, 34, 4, 7753)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (59, 35, 1, 34)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (60, 36, 1, 807)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (61, 37, 1, 459)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (62, 38, 1, 745)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (63, 35, 4, 6799)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (64, 36, 4, 2868)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (65, 37, 4, 18715)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (66, 38, 4, 31962)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (67, 39, 3, 9)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (68, 40, 3, 9)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (69, 41, 3, 7)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (70, 42, 3, 8)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (71, 39, 4, 27851)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (72, 40, 4, 48400)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (73, 41, 4, 46921)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (74, 42, 4, 29492)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (75, 43, 1, 741)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (76, 44, 1, 143)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (77, 45, 1, 123)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (78, 43, 4, 59839)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (79, 44, 4, 16470)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (80, 45, 4, 44445)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (81, 46, 3, 1)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (82, 46, 3, 3)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (83, 46, 3, 2)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (84, 49, 4, 21649)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (85, 50, 4, 18306)
GO
INSERT [dbo].[Contenidos] ([ID], [IDClase], [IDTipo], [Tamaño]) VALUES (86, 51, 4, 21680)
GO
SET IDENTITY_INSERT [dbo].[Contenidos] OFF
GO
