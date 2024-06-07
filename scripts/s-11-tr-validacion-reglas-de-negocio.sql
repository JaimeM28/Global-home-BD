--@Autor(es): Jaime Manuel Miranda Serrano y Diego Adrian Del Razo Sanchez
--@Fecha creación: 06/06/2024
--@Descripción: Creación de trigger
--Este trigger se asegura de que la duración de un alquiler no supere los 30 días. 
--Si se intenta insertar o actualizar un alquiler con una duración mayor, se lanza una excepción.

create or replace trigger trg_check_alquiler_duration
before insert or update on alquiler
for each row
begin
  if :new.dias_ocupacion > 30 then
    raise_application_error(-20001, 'la duración del alquiler no puede exceder los 30 días.');
  end if;
end;
/
show errors

