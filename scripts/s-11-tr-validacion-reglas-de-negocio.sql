--@Autor(es): Jaime Manuel Miranda Serrano y Diego Adrian Del Razo Sanchez
--@Fecha creación: 06/06/2024
--@Descripción: Creación de trigger
--Este trigger se asegura de que la duración de un alquiler no supere los 30 días. 
--Si se intenta insertar o actualizar un alquiler con una duración mayor, se lanza una excepción.

CREATE OR REPLACE TRIGGER trg_check_alquiler_duration
BEFORE INSERT OR UPDATE ON alquiler
FOR EACH ROW
BEGIN
  IF :NEW.dias_ocupacion > 30 THEN
    RAISE_APPLICATION_ERROR(-20001, 'La duración del alquiler no puede exceder los 30 días.');
  END IF;
END;
/
show errors
