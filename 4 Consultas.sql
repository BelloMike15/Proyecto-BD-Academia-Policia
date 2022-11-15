-- SENTECIAS SQL 

-- Mostrar el nombre de la academia, el id personal de cada cadete, el nombre de rango, el nombre y apellido, su cedula , el tipo de llamado y que sueldo tiene en el contrato el cadete, 
--tambien que solo me muestre los cadetes que tienen el llamado obligatorio.


SELECT
academia_policia.nombre_academia as Academia,
cadetes.id_cadete,
Rango.nombre_rango,
cadetes.nombre_cadete as Nombre,
cadetes.apellido_cadete as Apellido,
cadetes.cedula_cadete as Cedula,
tipo_llamado.tipo_llamado as Llamado,
Contrato.sueldo_contrato as Sueldo
FROM
cadetes
INNER JOIN academia_policia ON cadetes.id_academia = academia_policia.id_academia
INNER JOIN Rango on cadetes.id_rango = Rango.id_rango
INNER JOIN tipo_llamado ON cadetes.id_llamado = tipo_llamado.id_llamado
INNER JOIN Contrato ON cadetes.id_contrato = Contrato.id_contrato
where tipo_llamado.id_llamado=00001;

-- Mostrar el nombre de la academia, la cedula , el nombre y apellido unidos en un solo campo, la fecha de permiso, el tipo de permiso, 
--el tipo de seguro y el nombre del rango de todos los empleados.

Select 
academia_policia.nombre_academia as Academia,
Personal_poli.cedula_emple as Cedula,
Personal_poli.nombre_emple ||' '|| Personal_poli.apellido_emple AS NOMBREAPELLIDO ,
Permisos.fecha_permiso,
Permisos.tipo_permiso,
Seguro.tipo_seguro as Seguro,
Rango.nombre_rango as Rango
FROM
Personal_poli
INNER JOIN academia_policia ON Personal_poli.id_academia = academia_policia.id_academia
INNER JOIN Permisos ON Personal_poli.id_permiso = Permisos.id_permiso
INNER JOIN Seguro ON Personal_poli.id_seguro = Seguro.id_seguro
INNER JOIN Rango ON Personal_poli.id_rango = Rango.id_rango;

-- Mostrar el nombre y apellido, el tipo de seguro, el tipo, cantidad y duracion del permiso, el correo y sueldo de los empleados. Luego agregarles 150$ a 
--los sueldos de los empleados y tambien sumar todos los sueldos.

Select 
personal_poli.nombre_emple as Nombre,
personal_poli.apellido_emple as Apellido,
Seguro.tipo_seguro as Seguro,
Permisos.tipo_permiso,
Permisos.cantidad_dias as Dias,
Permisos.duracion_permiso as Duracion,
personal_poli.correo_emple as Correo,
Contrato.sueldo_contrato as Sueldo
FROM
Personal_poli
INNER JOIN Seguro ON Personal_poli.id_seguro = Seguro.id_seguro
INNER JOIN Permisos ON Personal_poli.id_permiso = Permisos.id_permiso
INNER JOIN Contrato ON Personal_poli.id_contrato = Contrato.id_contrato;
-- Actualizacion de sueldo en empleados de 150
UPDATE Contrato set sueldo_contrato = sueldo_contrato -150
-- Suma de sueldo de todos los empleados
Select Sum (sueldo_contrato) from Contrato


-- Mostrar el nombre de la academia, nombre , apellido , direccion de los cadetes asi como tambien su tipo de llamado, 
--la seccion del dormitorio que les toca ,la hora de entrada y salida de los cadetes y su duracion de contrato.

SELECT
academia_policia.nombre_academia as Academia,
cadetes.nombre_cadete as Nombre,
cadetes.apellido_cadete as Apellido,
tipo_llamado.tipo_llamado as Llamado,
Dormitorio.seccion,
Horario.hora_entrada,
Horario.hora_salida,
Contrato.duracion_contrato as Duracion
FROM
cadetes
INNER JOIN academia_policia ON cadetes.id_academia = academia_policia.id_academia
INNER JOIN tipo_llamado ON cadetes.id_llamado = tipo_llamado.id_llamado
INNER JOIN Dormitorio ON cadetes.id_dormitorio = Dormitorio.id_dormitorio
INNER JOIN Horario ON cadetes.id_horario = Horario.id_horario
INNER JOIN Contrato ON cadetes.id_contrato = Contrato.id_contrato
