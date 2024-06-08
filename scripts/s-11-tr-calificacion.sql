--@Autor(es): Del Razo Sánchez Diego Adrián y Miranda Serrano Jaime Manuel
--@Fecha creación: 07/06/2024
--@Descripción:  Creación de trigger para validar que la calificacion de un alquiler este dada por un usuario que si rento esa casa


Prompt Creando trigger tr_calificacion
create or replace trigger tr_calificacion
before insert on alquiler_calificacion
for each row
declare
  v_count number;
begin
  select count(*) 
  into v_count
  from alquiler
  where alquiler_id = :new.alquiler_id
    and usuario_id = :new.usuario_id;
  if v_count = 0 then
    raise_application_error(-20001, 'ERROR: alquiler no registrado o usuario no alquiló vivienda');
  end if;
end;
/
show errors;