-- Insertacion de datos
-- Datos Tabla director
Insert into Director (id_director,Nombre_dire,Apellido_dire,cargo_dire,tipo_seguro) VALUES
('01','Roberth','Moreira','Comandante','Familiar');

-- DaTOS Tabla academia_policia
Insert into academia_policia (id_academia,Nombre_academia,pais,ciudad,direccion,id_director) VALUES
('001','Acedemia Polciial DEPOL','España','Madrid','Calle Artuvo vera Av 105',DEFAULT);

--Datos Tabla Permisos
Insert into Permisos (id_permiso,id_personal,id_cadete,fecha_permiso,tipo_permiso,cantidad_dias,duracion_permiso) VALUES
('01','100','10','11/11/2022','Normal','3','2h'),
('02','101','11','12/11/2022','Urgente','7','5h'),
('03','102','12','13/11/2022','Urgente','8','5h'),
('04','103','13','14/11/2022','Normal','3','2h');

--Datos tabla de Calamidad_domestica
Insert into Calamidad_domestica(id_calamidad,id_personal,id_cadete,descripcion_cala,fecha_calamidad) VALUES
('01','104','14','Esposa enferma','15/11/2022'),
('02','105','15','Hija enferma','16/11/2022');


-- Datos de la tabla Accidente_laboral
Insert into Accidente_laboral(id_accidente,id_personal,id_cadete,descripcion_acci,fecha_accidente) VALUES
('01','106','16','Accidente transito','17/11/2022'),
('02','107','17','Accidete en guardia','18/11/2022');


--Datos de la tabla Personal_Poli
Insert into Personal_Poli(id_personal,id_academia,id_seguro,id_contrato,id_rango,id_horario,
id_director,cedula_emple,nombre_emple,Apellido_emple, telefono_emple,direccion_emple,correo_emple,id_permiso ) VALUES
('100','001','1','1000','50','001','01','1316619897','Mike','Bello','0978882901','miraflores','bello15@hotmail.com','01'),
('101','001','2','1001','51','002','01','1316615208','Edward','Sanchez','0975552148','Los esteros','Sanchez5@hotmail.com','02'),
('102','001','3','1000','52','003','01','1306542545','Glaucio','Mero','0994218660','San agustin','MeroGlaucio@hotmail.com','03'),
('103','001','1','1000','53','004','01','1352016545','Kevin','Mantuano','0994872630','15 de abril','Mantunaeitro@hotmail.com','04');

--Datos de la tabla Cadetes
Insert into Cadetes(id_cadete,id_academia,id_contrato,id_rango,nombre_cadete,apellido_cadete,cedula_cadete,
direccion_cadete,telefono_cadete,id_llamado,id_dormitorio,id_horario,id_seguro) VALUES
('10','001','1000','53','Carlos','Rodriguez','1316649854','Porvenir','0978882123','00001','10','002','1'),
('11','001','1000','53','Gabriel','Reyna','1305549782','Divino nino','0951114856','00002','11','002','2'),
('12','001','1000','53','Ana','Castillo','1362548963','Intebarrial','0994216658','00001','11','002','1'),
('13','001','1000','53','Nicole','Alonzo','1635548269','Falvio Reyes','0963258741','00002','13','002','2');

-- Datos de la tabla Seguro
Insert into Seguro(id_seguro,id_contrato,tipo_seguro) VALUES
('1','0001','Familiar'),
('2','0002','Soltero'),
('3','0003','Tercera edad');

-- Datos de la tabla Rango
Insert into Rango(id_rango,nombre_rango,descripcion_rango) VALUES
('50','Teniente','Teniente de la policia'),
('51','Capitan','capitan de la policia'),
('52','Administrador','administrador de la policia'),
('53','Estudiante','cadetes de la policia');

-- Datos de la tabla Horario
Insert into Horario (id_horario,id_personal,hora_entrada,hora_salida,hora_extra) VALUES
('001','100',' 8 am','17 pm','2 H'),
('002','101','9 am','18 pm','3 H'),
('003','102','1 pm','22 pm','4H'),
('004','103','7 am','1 pm', '5 H');
-- Datos de la tabla Contrato
Insert into Contrato(id_contrato,fecha_contrato,duracion_contrato,sueldo_contrato) VALUES
('1000','10/11/2022','1 año','900'),
('1001','13/11/2022','2 años','1200'),
('1003','15/11/2022','1 año','800');


-- Datos de la tabla Dormitorio
Insert into Dormitorio(id_dormitorio,lugar,seccion) VALUES
('10','Residencia 3A','AA1'),
('11','Residencia 4B','BB2'),
('13','Residencia 5B','CC3');

--Datos de la tabla tipo_llamado
Insert into tipo_llamado(id_llamado,tipo_llamado) VALUES
('00001','Obligatorio'),
('00002','Voluntario');
