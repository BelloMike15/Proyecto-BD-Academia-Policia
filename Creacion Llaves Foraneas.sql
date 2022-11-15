-- CREACION DE LLAVES FORANEAS

ALTER TABLE academia_policia
ADD CONSTRAINT id_director_FK FOREIGN KEY (id_director)
REFERENCES Director (id_director)
ON DELETE RESTRICT ON UPDATE CASCADE;


ALTER TABLE Personal_Poli
ADD CONSTRAINT id_academia_FK FOREIGN KEY (id_academia)
REFERENCES academia_policia (id_academia)
ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE Personal_Poli
ADD CONSTRAINT id_seguro_FK FOREIGN KEY (id_seguro)
REFERENCES Seguro (id_seguro)
ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE Personal_Poli
ADD CONSTRAINT id_contrato_FK FOREIGN KEY (id_contrato)
REFERENCES Contrato (id_contrato)
ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE Personal_Poli
ADD CONSTRAINT id_rango_FK FOREIGN KEY (id_rango)
REFERENCES Rango (id_rango)
ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE Personal_Poli
ADD CONSTRAINT id_horario_FK FOREIGN KEY (id_horario)
REFERENCES Horario (id_horario)
ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE Personal_Poli
ADD CONSTRAINT id_director_FK FOREIGN KEY (id_director)
REFERENCES Director (id_director)
ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE Personal_Poli
ADD CONSTRAINT id_permiso_FK FOREIGN KEY (id_permiso)
REFERENCES Permisos (id_permiso)
ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE Cadetes
ADD CONSTRAINT id_academia_FK FOREIGN KEY (id_academia)
REFERENCES academia_policia (id_academia)
ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE Cadetes
ADD CONSTRAINT id_contrato_FK FOREIGN KEY (id_contrato)
REFERENCES Contrato (id_contrato)
ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE Cadetes
ADD CONSTRAINT id_rango_FK FOREIGN KEY (id_rango)
REFERENCES Rango (id_rango)
ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE Cadetes
ADD CONSTRAINT id_llamado_FK FOREIGN KEY (id_llamado)
REFERENCES Tipo_llamado (id_llamado)
ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE Cadetes
ADD CONSTRAINT id_dormitorio_FK FOREIGN KEY (id_dormitorio)
REFERENCES Dormitorio (id_dormitorio)
ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE Cadetes
ADD CONSTRAINT id_horario_FK FOREIGN KEY (id_horario)
REFERENCES Horario (id_horario)
ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE Cadetes
ADD CONSTRAINT id_seguro_FK FOREIGN KEY (id_seguro)
REFERENCES Seguro (id_seguro)
ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE Cadetes
ADD CONSTRAINT id_dormitorio_FK FOREIGN KEY (id_dormitorio)
REFERENCES Dormitorio (id_dormitorio)
ON DELETE RESTRICT ON UPDATE CASCADE;
