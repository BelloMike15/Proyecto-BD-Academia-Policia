-- Crear un cursor donde me muestre la fecha, duracion y sueldo del contrato de los empleados.
Do $$
declare 
registro Record;
cur_contra Cursor for select * from Contrato;
begin
Open cur_contra;
fetch cur_contra into registro;
while (FOUND)loop
Raise Notice 'Fecha del Contrato: %, Duracion del contrato: %,Sueldo:%',
registro.fecha_contrato,registro.duracion_contrato,registro.sueldo_contrato;
fetch cur_contra into registro;
end loop;
end $$
language plpgsql;
