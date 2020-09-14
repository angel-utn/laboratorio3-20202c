-- (1)  Listado con la cantidad de cursos.
select count(*) as Cantidad from cursos

-- 2  Listado con la cantidad de usuarios.

-- (3)  Listado con el promedio de costo de certificación de los cursos.
Select avg(CostoCertificacion) as Promedio From Cursos

-- 4  Listado con el promedio general de calificación de reseñas.

-- (5)  Listado con la fecha de estreno de curso más antigua.
select top 1 estreno from cursos
order by estreno asc

select min(estreno) as Minimo from cursos

-- 6  Listado con el costo de certificación menos costoso.

-- (7)  Listado con el costo total de todos los cursos.
select sum(CostoCurso) as Total
 From Cursos

-- 8  Listado con la suma total de todos los pagos.

-- 9  Listado con la cantidad de cursos de nivel principiante.

-- 10  Listado con la suma total de todos los pagos realizados en 2019.

-- (11)  Listado con la cantidad de usuarios que son instructores.
select count(distinct IDUsuario) as UsuariosDistintos
from Instructores_x_Curso

-- Listado de usuarios distintos de Instructores_x_curso
select distinct IDUsuario From Instructores_x_Curso

-- 12  Listado con la cantidad de usuarios distintos que se hayan certificado.

-- (13)  Listado con el nombre del país y la cantidad de usuarios de cada país.
select P.Nombre, count(DAT.ID) as Cantidad from Paises as P
left join Datos_Personales as DAT
on P.ID = DAT.IDPais
group by P.Nombre
order by 2 desc

-- (14)  Listado con el apellido y nombres del usuario y el importe más costoso abonado como pago. Sólo listar aquellos que hayan abonado más de $7500.
Select DAT.Apellidos, DAT.Nombres, Max(P.Importe)
From Datos_Personales as DAT
Inner Join Usuarios as U ON U.ID = DAT.ID
Inner Join Inscripciones as I ON U.ID= I.IDUsuario
Inner Join Pagos as P on I.ID = P.IDInscripcion
GROUP by DAT.Apellidos, DAT.Nombres
having max(P.importe) > 7500

-- 15  Listado con el apellido y nombres de usuario y el importe más costoso de curso al cual se haya inscripto.

-- 16  Listado con el nombre del curso, nombre del nivel, cantidad total de clases y duración total del curso en minutos.

-- 17  Listado con el nombre del curso y cantidad de contenidos registrados. Sólo listar aquellos cursos que tengan más de 10 contenidos registrados.

-- 18  Listado con nombre del curso, nombre del idioma y cantidad de tipos de idiomas.

-- 19  Listado con el nombre del curso y cantidad de idiomas distintos disponibles.

-- 20  Listado de categorías de curso y cantidad de cursos asociadas a cada categoría. Sólo mostrar las categorías con más de 5 cursos.

-- 21  Listado con tipos de contenido y la cantidad de contenidos asociados a cada tipo. Mostrar aquellos tipos que no hayan registrado contenidos con cantidad 0.

-- 22  Listado con Nombre del curso, nivel, año de estreno y el total recaudado en concepto de inscripciones. Listar aquellos cursos sin inscripciones con total igual a $0.
Select C.Nombre, Year(C.Estreno) as Año, N.Nombre as Nivel, Isnull(Sum(I.Costo), 0) as Rec From Cursos as C
Left Join Niveles as N ON N.ID = C.IDNivel
Left Join Inscripciones as I ON C.ID = I.IDCurso
Group by C.Nombre, Year(C.Estreno), N.Nombre

-- 23  Listado con Nombre del curso, costo de cursado y certificación y cantidad de usuarios distintos inscriptos cuyo costo de cursado sea menor a $10000 y cuya cantidad de usuarios inscriptos sea menor a 5. Listar aquellos cursos sin inscripciones con cantidad 0.
select c.nombre, c.costocurso, c.CostoCertificacion, count(distinct i.IDUsuario) as 'Usuarios distintos'
	from Cursos as c left join Inscripciones as i on i.IDCurso=c.ID
	where i.Costo < 10000
	group by c.Nombre, c.costocurso,c.CostoCertificacion 
    having count(distinct i.idusuario)<5

-- 24  Listado con Nombre del curso, fecha de estreno y nombre del nivel del curso que más recaudó en concepto de certificaciones.
Select Top 1 C.Nombre, C.Estreno, N.Nombre as Nivel From Cursos as C
Left Join Niveles as N ON N.ID = C.IDNivel
Inner Join Inscripciones as I ON C.ID = I.IDCurso
Inner Join Certificaciones as CE ON I.ID = CE.IDInscripcion
Group By C.Nombre, C.Estreno, N.Nombre
Order by Sum(Ce.Costo) Desc

-- 25  Listado con Nombre del idioma del idioma más utilizado como subtítulo.
Select Top 1 I.Nombre, Count(*) as CantidadSubtitulo From Idiomas as I
Inner Join Idiomas_x_Curso as IxC ON I.ID = IxC.IDIdioma
Inner Join TiposIdioma as TI ON TI.ID = IxC.IDTipo
Where TI.Nombre Like 'Subtítulo'
Group By I.Nombre
Order By CantidadSubtitulo Desc


-- 26  Listado con Nombre del curso y promedio de puntaje de reseñas apropiadas.
Select CU.Nombre, AVG(R.Puntaje) as Promedio
From Cursos as CU
Inner Join Inscripciones as I ON CU.ID = I.IDCurso
Inner Join Reseñas as R ON I.ID = R.IDInscripcion
Where R.Inapropiada = 0
Group by CU.Nombre

-- 27  Listado con Nombre de usuario y la cantidad de reseñas inapropiadas que registró.
-- Angel
Select U.nombreusuario, count(R.IDInscripcion) From Usuarios as U
Left Join Inscripciones as I ON U.ID = I.IDUsuario
Left Join Reseñas as R ON I.ID = R.IDInscripcion
Where R.Inapropiada = 1 OR R.Inapropiada IS Null
Group By U.NombreUsuario
order by u.NombreUsuario asc

-- Caccione/Majdalani
select u.NombreUsuario, sum(cast(r.inapropiada as int)) as 'Cantidad de reseñas inapropiadas'
	from Usuarios as u left join Inscripciones as i on u.ID=i.IDUsuario
	left join Reseñas as r on r.IDInscripcion=i.ID
	group by u.NombreUsuario
	order by u.NombreUsuario asc

-- 28  Listado con Nombre del curso, nombre y apellidos de usuarios y la cantidad de veces que dicho usuario realizó dicho curso. No mostrar cursos y usuarios que contabilicen cero.

-- 29  Listado con Apellidos y nombres, mail y duración total en concepto de clases de cursos a los que se haya inscripto. Sólo listar información de aquellos registros cuya duración total supere los 400 minutos.


-- 30  Listado con nombre del curso y recaudación total. La recaudación total consiste en la sumatoria de costos de inscripción y de certificación. Listarlos ordenados de mayor a menor por recaudación.


