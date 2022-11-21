Select * from personal_poli
Select * from Anterior
-- Creacion de un trigger que al momento de actualizar un dato ese dato se guarde en otro tabla llamada Anterior.

--Creacion de la funcion trigger
create function SP_Anterior() returns Trigger
as
$$
begin
 insert into Anterior values (old.nombre_emple,old.apellido_emple,old.direccion_emple);

return new;
end
$$
language plpgsql

-- Llamar a la funcion trigger
create trigger TR_update before Update on personal_poli
for each row
execute procedure SP_Anterior();


Update Personal_poli set
nombre_emple = 'Robert',
apellido_emple = 'Moreira',
direccion_emple = 'Uleam'
where nombre_emple = 'Kevin';
