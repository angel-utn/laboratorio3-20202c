-- (1)  Listado con apellidos y nombres de los usuarios que no se hayan inscripto a cursos durante el año 2019.
Select * From Datos_Personales as DAT
Where DAT.ID Not IN (
    Select distinct IDUsuario From Inscripciones
    Where Year(Fecha) = 2019
)

-- 2  Listado con apellidos y nombres de los usuarios que se hayan inscripto a cursos pero no hayan realizado ningún pago.

-- 3  Listado de países que no tengan usuarios relacionados.

-- (4)  Listado de clases cuya duración sea mayor a la duración promedio.
Select Nombre, Duracion From Clases 
Where Duracion > (
    Select Avg(Duracion) from Clases
)

-- (5)  Listado de contenidos cuyo tamaño sea mayor al tamaño de todos los contenidos de tipo 'Audio de alta calidad'.
Select * From Contenidos
Where Tamaño > (
    Select Max(Tamaño) From Contenidos as C
    Inner Join TiposContenido as TC ON TC.ID = C.IDTipo
    Where TC.Nombre = 'Audio de alta calidad'
)

Select * From Contenidos
Where Tamaño > ALL (
    Select Tamaño From Contenidos as C
    Inner Join TiposContenido as TC ON TC.ID = C.IDTipo
    Where TC.Nombre = 'Audio de alta calidad'
)

-- 6  Listado de contenidos cuyo tamaño sea menor al tamaño de algún contenido de tipo 'Audio de alta calidad'.

-- (7)  Listado con nombre de país y la cantidad de usuarios de género masculino y la cantidad de usuarios de género femenino que haya registrado.
Select P.Nombre, 
(
    Select Count(*) From Datos_Personales Where Genero = 'F' And IDPais = P.ID
) As CantF, 
(
    Select Count(*) From Datos_Personales Where Genero = 'M' And IDPais = P.ID
) as CantM
From Paises as P

-- 8  Listado con apellidos y nombres de los usuarios y la cantidad de inscripciones realizadas en el 2019 y la cantidad de inscripciones realizadas en el 2020.

-- 9  Listado con nombres de los cursos y la cantidad de idiomas de cada tipo. Es decir, la cantidad de idiomas de audio, la cantidad de subtítulos y la cantidad de texto de video.

-- 10  Listado con apellidos y nombres de los usuarios, nombre de usuario y cantidad de cursos de nivel 'Principiante' que realizó y cantidad de cursos de nivel 'Avanzado' que realizó.

-- 11  Listado con nombre de los cursos y la recaudación de inscripciones de usuarios de género femenino que se inscribieron y la recaudación de inscripciones de usuarios de género masculino.

-- 12  Listado con nombre de país de aquellos que hayan registrado más usuarios de género masculino que de género femenino.
Select * From (
    Select P.Nombre, 
    (
        Select Count(*) From Datos_Personales Where Genero = 'F' And IDPais = P.ID
    ) As CantF, 
    (
        Select Count(*) From Datos_Personales Where Genero = 'M' And IDPais = P.ID
    ) as CantM
    From Paises as P
) as AUX
Where AUX.CantM > Aux.CantF

-- 13  Listado con nombre de país de aquellos que hayan registrado más usuarios de género masculino que de género femenino pero que haya registrado al menos un usuario de género femenino.

-- 14  Listado de cursos que hayan registrado la misma cantidad de idiomas de audio que de subtítulos.

-- 15  Listado de usuarios que hayan realizado más cursos en el año 2018 que en el 2019 y a su vez más cursos en el año 2019 que en el 2020.

-- 16  Listado de apellido y nombres de usuarios que hayan realizado cursos pero nunca se hayan certificado.
