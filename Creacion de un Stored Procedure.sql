--Crear un procedimiento almacenado que me devulda el el nombre, tipo de seguro y el sueldo del personal de policia.
Create or replace function  Datos_Empleado (varchar)
returns table (nombre_emple varchar, tipo_seguro varchar ,sueldo_contrato int)
as
$$
Select 
personal_poli.nombre_emple as Nombre,
Seguro.tipo_seguro as Seguro,
Contrato.sueldo_contrato as Sueldo
FROM
Personal_poli
INNER JOIN Seguro ON Personal_poli.id_seguro = Seguro.id_seguro
INNER JOIN Contrato ON Personal_poli.id_contrato = Contrato.id_contrato
where nombre_emple = $1
$$
language SQL;

select Datos_Empleado ('Mike')
