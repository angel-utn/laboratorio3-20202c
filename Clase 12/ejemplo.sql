-- Creación de la Vista
Create view VW_ReporteInscripciones as
Select dat.ID, dat.Apellidos + ', ' + dat.Nombres as Usuario, c.Nombre, i.Costo,
isnull(sum(p.importe), 0) as Total
From Datos_Personales as dat
Inner Join Inscripciones as i on dat.id = i.IDUsuario
inner join Cursos as c on c.id = i.IDCurso
left join Pagos as p on i.ID = p.IDInscripcion
group by dat.ID, dat.Apellidos + ', ' + dat.Nombres, c.Nombre, i.Costo

-- Selección
Select * From VW_ReporteInscripciones


-- Creación del Stored Procedure
create procedure sp_inscripciones_x_usuario(
    @idUsuario bigint
)
as
begin
    select * from vw_ReporteInscripciones
    where ID = @idUsuario
end

-- Ejecución
exec sp_inscripciones_x_usuario 1