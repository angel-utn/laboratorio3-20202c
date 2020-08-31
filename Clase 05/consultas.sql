Use MonkeyUniv
-- (1) Listado con nombre de usuario de todos los usuarios y sus respectivos nombres y apellidos.
Select  Usuarios.NombreUsuario,
        Datos_Personales.Apellidos,
        Datos_Personales.Nombres
From Usuarios
Inner Join Datos_Personales ON Usuarios.ID = Datos_Personales.ID

Select U.NombreUsuario, DAT.Apellidos, DAT.Nombres, DAT.Email
From Usuarios as U
Inner Join Datos_Personales as DAT ON U.ID = DAT.ID

-- Lo que realiza la cláusula join en memoria
Select *
From Usuarios as U
Inner Join Datos_Personales as DAT ON U.ID = DAT.ID


-- 2 Listado con apellidos, nombres, fecha de nacimiento y nombre del país de nacimiento. 

-- (3) Listado con nombre de usuario, apellidos, nombres, email o celular de todos los usuarios que vivan en una domicilio cuyo nombre contenga el término 'Presidente' o 'General'. NOTA: Si no tiene email, obtener el celular.
Select U.NombreUsuario, DAT.Apellidos, DAT.Nombres, isnull(DAT.Email, DAT.Celular) as InfoContacto, DAT.Domicilio
From Usuarios AS U
Inner Join Datos_Personales as DAT ON U.ID = DAT.ID
Where Dat.Domicilio like '%Presidente%' or Dat.Domicilio like '%General%'

-- 4 Listado con nombre de usuario, apellidos, nombres, email o celular o domicilio como 'Información de contacto'.  NOTA: Si no tiene email, obtener el celular y si no posee celular obtener el domicilio.

-- (5) Listado con apellido y nombres, nombre del curso y costo de la inscripción de todos los usuarios inscriptos a cursos.  NOTA: No deben figurar los usuarios que no se inscribieron a ningún curso.
select C.Nombre, DAT.Apellidos, DAT.Nombres, I.Costo
From Cursos as C
Inner Join Inscripciones as I ON C.ID = I.IDCurso
Inner Join Usuarios as U ON U.ID = I.IDUsuario
Inner Join Datos_Personales as DAT ON DAT.ID = U.ID
Order by C.Nombre asc, Dat.Apellidos asc, DAT.Nombres Asc

-- Ejemplo de Union
select DAT.Apellidos, DAT.Nombres, 'Estudiante' as Rol
From Cursos as C
Inner Join Inscripciones as I ON C.ID = I.IDCurso
Inner Join Usuarios as U ON U.ID = I.IDUsuario
Inner Join Datos_Personales as DAT ON DAT.ID = U.ID
Where C.ID = 11
Union All
select DAT.Apellidos, DAT.Nombres, 'Instructor' as Rol
From Cursos as C
Inner Join Instructores_x_Curso as IxC on IxC.IDCurso = C.ID
Inner Join Usuarios as U ON U.ID = IxC.IDUsuario
Inner Join Datos_Personales as DAT ON DAT.ID = U.ID
Where C.ID = 11



-- 6 Listado con nombre de curso, nombre de usuario y mail de todos los inscriptos a cursos que se hayan estrenado en el año 2020.

-- 7 Listado con nombre de curso, nombre de usuario, apellidos y nombres, fecha de inscripción, costo de inscripción, fecha de pago e importe de pago. Sólo listar información de aquellos que hayan pagado.

-- 8 Listado con nombre y apellidos, genero, fecha de nacimiento, mail, nombre del curso y fecha de certificación de todos aquellos usuarios que se hayan certificado.

-- 9 Listado de cursos con nombre, costo de cursado y certificación, costo total (cursado + certificación) con 10% de todos los cursos de nivel Principiante.

-- 10 Listado con nombre y apellido y mail de todos los instructores. Sin repetir.

-- 11 Listado con nombre y apellido de todos los usuarios que hayan cursado algún curso cuya categoría sea 'Historia'.

-- (12) Listado con nombre de idioma, código de curso y código de tipo de idioma. Listar todos los idiomas indistintamente si no tiene cursos relacionados.
Select I.Nombre, IxC.IDCurso, IxC.IDTipo
From Idiomas as I
Left Join Idiomas_x_Curso as IxC on I.ID = IxC.IDIdioma

-- 13 Listado con nombre de idioma de todos los idiomas que no tienen cursos relacionados.

-- 14 Listado con nombres de idioma que figuren como audio de algún curso. Sin repeticiones.

-- (15) Listado con nombres y apellidos de todos los usuarios y el nombre del país en el que nacieron. Listar todos los países indistintamente si no tiene usuarios relacionados.
Select DAT.Apellidos, DAT.Nombres, P.Nombre as Pais
From Datos_Personales as DAT
Right Join Paises as P on P.ID = DAT.IDPais


-- 16 Listado con nombre de curso, fecha de estreno y nombres de usuario de todos los inscriptos. Listar todos los nombres de usuario indistintamente si no se inscribieron a ningún curso.

-- 17 Listado con nombre de usuario, apellido, nombres, género, fecha de nacimiento y mail de todos los usuarios que no cursaron ningún curso.

-- 18 Listado con nombre y apellido, nombre del curso, puntaje otorgado y texto de la reseña. Sólo de aquellos usuarios que hayan realizado una reseña inapropiada.

-- 19 Listado con nombre del curso, costo de cursado, costo de certificación, nombre del idioma y nombre del tipo de idioma de todos los cursos cuya fecha de estreno haya sido antes del año actual. Ordenado por nombre del curso y luego por nombre de tipo de idioma. Ambos ascendentemente.

-- 20 Listado con nombre del curso y todos los importes de los pagos relacionados.

-- 21 Listado con nombre de curso, costo de cursado y una leyenda que indique "Costoso" si el costo de cursado es mayor a $ 15000, "Accesible" si el costo de cursado está entre $2500 y $15000, "Barato" si el costo está entre $1 y $2499 y "Gratis" si el costo es $0.
