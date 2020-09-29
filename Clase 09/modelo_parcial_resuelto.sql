Use MonkeyUniv;
-- 1) Por cada año, la cantidad de cursos que se estrenaron en dicho año y el promedio de costo de cursada.
Select Year(Estreno), count(*) as Cantidad, Avg(C.CostoCurso) as PromedioCosto 
From Cursos As C
Group By Year(Estreno)
Order by 1 desc

-- 2) El idioma que se haya utilizado más veces como subtítulo. Si hay varios idiomas en esa condición, mostrarlos a todos.

Select Top 1 With Ties I.Nombre
From Idiomas as I
Inner Join Idiomas_x_Curso as IxC ON I.ID = IxC.IDIdioma
Inner Join TiposIdioma as TP ON TP.ID = IxC.IDTipo
Where TP.Nombre = 'Subtítulo'
Group By I.Nombre
Order By Count(*) Desc

-- Ídem pero menos veces como subtítulo.
Select Top 1 With Ties I.Nombre
From Idiomas as I
Inner Join Idiomas_x_Curso as IxC ON I.ID = IxC.IDIdioma
Inner Join TiposIdioma as TP ON TP.ID = IxC.IDTipo
Where TP.Nombre = 'Subtítulo'
Group By I.Nombre
Order By Count(*) Asc

-- 3) Apellidos y nombres de usuarios que cursaron algún curso y nunca fueron instructores de cursos.
Select DAT.Apellidos, DAT.Nombres from Datos_Personales as DAT
Where DAT.ID IN 
(
    Select Distinct IDUsuario From Inscripciones
) AND DAT.ID NOT IN (
    Select Distinct IDUsuario From Instructores_x_Curso
)

-- Otra manera
Select TablaAux.Apellidos, TablaAux.Nombres From (
    Select DAT.Apellidos, DAT.Nombres,
        (
            Select count(*) from Inscripciones Where IDUsuario = DAT.ID
        ) as CantAlumno,
        (
            Select count(*) from Instructores_x_Curso Where IDUsuario = DAT.ID
        ) as CantInstructor
    from Datos_Personales as DAT
) as TablaAux
Where TablaAux.CantAlumno > 0 and TablaAux.CantInstructor = 0

-- 4) Para cada usuario mostrar los apellidos y nombres y el costo más caro de un curso al que se haya inscripto. En caso de no haberse inscripto a ningún curso debe figurar igual pero con importe igual a -1.
Select DAT.Apellidos, DAT.Nombres, IsNull(Max(I.Costo), -1) as Importe From Datos_Personales as DAT
Left Join Inscripciones as I ON DAT.ID = I.IDUsuario
Group By Dat.Apellidos, Dat.Nombres

-- Silvana Ferrari
select apellidos, nombres, 
(select isnull(max(i.Costo),-1) from Cursos as c 
join Inscripciones as i on c.ID = i.IDCurso
where i.IDUsuario = dp.ID) as CostoMasCaro
from Datos_Personales as dp

-- 5) La cantidad de usuarios que hayan realizado reseñas positivas (Puntaje>=7) pero nunca una reseña negativa (Puntaje<7).

Select count(*) as Cant From (
    Select DAT.Apellidos, DAT.Nombres,
            (
                Select count(*) From Reseñas as R
                Inner Join Inscripciones as I ON I.ID = R.IDInscripcion
                Where I.IDUsuario = DAT.ID And Puntaje >= 7
            ) as CantPositivas,
            (
                Select count(*) From Reseñas as R
                Inner Join Inscripciones as I ON I.ID = R.IDInscripcion
                Where I.IDUsuario = DAT.ID And Puntaje < 7
            ) as CantNegativas
    from Datos_Personales as DAT
) as Aux
Where CantPositivas > 0 And CantNegativas = 0

--- Otra versión
Select Count(*) as Cant From Datos_Personales as DAT
Where  (
                Select count(*) From Reseñas as R
                Inner Join Inscripciones as I ON I.ID = R.IDInscripcion
                Where I.IDUsuario = DAT.ID And Puntaje >= 7
        ) > 0 And (
           Select count(*) From Reseñas as R
                Inner Join Inscripciones as I ON I.ID = R.IDInscripcion
                Where I.IDUsuario = DAT.ID And Puntaje < 7 
        ) = 0




-- Otro ejemplo
Select Aux.Apellidos From (
        Select DAT.Apellidos, DAT.Nombres,
        (
            Select count(*) from Inscripciones Where IDUsuario = DAT.ID
        ) as CantAlumno,
        (
            Select count(*) from Instructores_x_Curso Where IDUsuario = DAT.ID
        ) as CantInstructor
    from Datos_Personales as DAT
) as Aux
Where
Aux.CantAlumno = Aux.CantInstructor And Aux.CantInstructor > 0