/*
1- Alborrarunainscripción,verificarquenohayanpasadomásde5díasdesdelafechade inscripción. Si así ocurre no permitir borrar la inscripción, de lo contrario borrar la inscripción, los pagos y certificaciones asociadas.
*/
create trigger tr_borrar_inscripcion
on inscripciones
instead of delete
as
begin
    declare @fecha DATE
    declare @id bigint

    select @fecha = fecha, @id = ID from deleted

    if (datediff(DAY, @fecha, getdate()) <= 5) begin
        delete from pagos where idinscripcion = @id
        delete from certificaciones where idinscripcion = @id
        delete from inscripciones where id = @id
    end
    else begin
        raiserror('No se pude borrar la inscripción debido a que pasaron más de 5 días.', 16, 1)
    end
end

insert into inscripciones values (1, 1, getdate(), 5555)

insert into pagos values (61, getdate(), 10000)


select * from inscripciones order by 1 desc
select * from pagos order by 1 desc


delete from inscripciones where id = 61