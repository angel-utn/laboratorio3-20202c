/*
2 - Al insertar una inscripción, verificar que el usuario inscripto no se encuentre en morosidad (la sumatoria de los cursos que realizó no debe ser mayor a la sumatoria de los pagos que realizó). En caso contrario no permitir la inscripción.
*/
create trigger tr_nueva_inscripcion
on inscripciones
instead of insert
as
BEGIN 
    declare @pagos money, @deuda money, @idusuario bigint, @idcurso bigint
    -- Obtener Usuario inscripto
    select @idusuario = idusuario, @idcurso = idcurso from inserted

    -- Sumar pagos realizados de ese usuario
    select @pagos = isnull(sum(importe), 0) from pagos where idinscripcion in (
        select id from inscripciones where idusuario = @idusuario
    )

    -- Sumar costos inscripciones de ese usuario
    select @deuda = isnull(sum(costo), 0) from inscripciones where idusuario = @idusuario

    if (@pagos >= @deuda) begin
        -- Hacer insert de inscripcion
        insert into inscripciones
        select idusuario, idcurso, getdate(), costo from inserted
    end
    else BEGIN
        raiserror('No se puede realizar la inscripción. Regularice situación de pagos', 16, 1)
    end
END


-- Puede. OK
insert into inscripciones
values (1, 10, '1/1/2020', 3000)

-- No se puede realizar
insert into inscripciones
values (1, 11, '1/1/2020', 3000)

select * from inscripciones order by 1 desc