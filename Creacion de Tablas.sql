-- Creacion de las tablas

--Tabla Director 
create table Director (
id_director SERIAL  PRIMARY KEY,
Nombre_dire VARCHAR (30)      not NULL,
Apellido_dire VARCHAR (30)    not NULL,
cargo_dire  VARCHAR (30)      not NULL,
tipo_seguro VARCHAR(50)       not NULL
);



-- Tabla academia_policia
Create table academia_policia(
id_academia SERIAL  PRIMARY KEY,
Nombre_academia VARCHAR(50)   NOT NULL,
pais VARCHAR (50)             NOT NULL,
ciudad VARCHAR (50)           NOT NULL,
direccion VARCHAR (50)        NOT NULL,
id_director SERIAL NOT NULL
);


-- Tabla Permisos
Create table Permisos (
id_permiso SERIAL   PRIMARY KEY,
id_personal SERIAL  NOT NULL,
id_cadete SERIAL    NOT NULL,
fecha_permiso TIMESTAMP  NOT NULL,
tipo_permiso VARCHAR (30)   NOT NULL,
cantidad_dias VARCHAR (30)  NOT NULL,
duracion_permiso VARCHAR (20) NOT NULL
);


-- Tabla Calamidad_domestica
CREATE table Calamidad_domestica(
id_calamidad SERIAL  PRIMARY KEY,
id_personal SERIAL   NOT NULL,
id_cadete  SERIAL    NOT NULL,
descripcion_cala VARCHAR(50)  NOT NULL,
fecha_calamidad TIMESTAMP  NOT NULL
);


-- Tabla Accidente_laboral
Create table Accidente_laboral (
id_accidente  SERIAL PRIMARY KEY,
id_personal SERIAL   NOT NULL,
id_cadete SERIAL     NOT NULL,
descripcion_acci VARCHAR(50)  NOT NULL,
fecha_accidente TIMESTAMP   NOT NULL
);


-- Tabla Personal_Poli
Create table Personal_Poli (
id_personal SERIAL  PRIMARY KEY,
id_academia SERIAL  NOT NULL,
id_seguro SERIAL    NOT NULL,
id_contrato SERIAL  NOT NULL,
id_rango SERIAL     NOT NULL,
id_horario SERIAL   NOT NULL,
id_director SERIAL  NOT NULL,
cedula_emple VARCHAR(10) NOT NULL,
nombre_emple VARCHAR (30) NOT NULL,
Apellido_emple VARCHAR(30) NOT NULL,
telefono_emple VARCHAR(10) NOT NULL,
direccion_emple VARCHAR (30) NOT NULL,
correo_emple VARCHAR (30) NOT NULL,
id_permiso SERIAL NOT NULL
);


-- Tabla Cadetes
Create table Cadetes (
id_cadete SERIAL  PRIMARY KEY,
id_academia SERIAL NOT NULL,
id_contrato SERIAL NOT NULL,
id_rango SERIAL  NOT NULL,
nombre_cadete VARCHAR (30) NOT NULL,
apellido_cadete VARCHAR(30) NOT NULL,
cedula_cadete VARCHAR (10)  NOT NULL,
direccion_cadete VARCHAR(30) NOT NULL,
telefono_cadete VARCHAR (10) NOT NULL,
id_llamado SERIAL NOT NULL,
id_dormitorio SERIAL NOT NULL,
id_horario SERIAL NOT NULL,
id_seguro SERIAL NOT NULL
);



-- Tabla Seguro
Create table Seguro (
id_seguro SERIAL PRIMARY KEY,
id_contrato SERIAL  NOT NULL,
tipo_seguro VARCHAR (50) NOT NULL
);

-- Tabla Rango
Create table Rango (
id_rango SERIAL PRIMARY KEY,
nombre_rango VARCHAR(30) NOT NULL,
descripcion_rango VARCHAR(50) NOT NULL
);

-- Tabla Horario
Create table Horario (
id_horario SERIAL PRIMARY KEY,
id_personal SERIAL NOT NULL,
hora_entrada VARCHAR(20) NOT NULL,
hora_salida VARCHAR(20)  NOT NULL,
hora_extra VARCHAR(20)   NOT NULL
);


-- Tabla Contrato
Create table Contrato (
id_contrato SERIAL PRIMARY KEY,
fecha_contrato VARCHAR(30) NOT NULL,
duracion_contrato VARCHAR(30) NOT NULL,
sueldo_contrato REAL  NOT NULL 
);


-- Tabla Dormitorio
Create table Dormitorio(
id_dormitorio SERIAL PRIMARY KEY,
lugar VARCHAR(50)  NOT NULL,
seccion VARCHAR(50) NOT NULL
);


-- Tabla tipo_llamado
Create table Tipo_llamado(
id_llamado SERIAL PRIMARY KEY,
tipo_llamado VARCHAR(50) NOT NULL
);
