--@Autor(es): Jaime Manuel Miranda Serrano y Diego Adrian Del Razo Sanchez
--@Fecha creación: 06/06/2024
--@Descripción: Este es un script de prueba para el trigger de validacion-reglas-negocio



-- Configurar la salida del servidor
set serveroutput on

-- Limpiar la tabla antes de comenzar las pruebas
prompt Limpiando tabla alquiler...
delete from alquiler;

-- Crear datos de prueba
prompt Creando datos de prueba en la tabla alquiler...
insert into alquiler (alquiler_id, folio, fecha_inicio, dias_ocupacion, vivienda_id, usuario_id)
values (1, 'ALQ-001', sysdate, 10, 1, 1); -- Sustituye con IDs válidos

prompt =======================================
prompt Pruebas trigger trg_check_alquiler_duration
prompt =======================================
prompt Prueba 1.
prompt Intentar insertar un registro con dias_ocupacion válido
prompt ========================================
declare
begin
  -- Intentar insertar un registro con dias_ocupacion <= 30
  insert into alquiler (alquiler_id, folio, fecha_inicio, dias_ocupacion, vivienda_id, usuario_id)
  values (2, 'ALQ-002', sysdate, 25, 1, 2); -- Sustituye con IDs válidos
  dbms_output.put_line('Ok, prueba 1 exitosa');
exception
  when others then
    dbms_output.put_line('Error inesperado: ' || sqlerrm);
end;
/

prompt =======================================
prompt Prueba 2.
prompt Intentar insertar un registro con dias_ocupacion mayor a 30
prompt ========================================
declare
begin
  -- Intentar insertar un registro con dias_ocupacion > 30
  insert into alquiler (alquiler_id, folio, fecha_inicio, dias_ocupacion, vivienda_id, usuario_id)
  values (3, 'ALQ-003', sysdate, 35, 1, 3); -- Sustituye con IDs válidos
  dbms_output.put_line('Error: prueba 2 fallida, se permitió insertar un registro con dias_ocupacion > 30');
exception
  when others then
    if sqlcode = -20001 then
      dbms_output.put_line('Ok, prueba 2 exitosa, se detectó el error esperado: ' || sqlerrm);
    else
      dbms_output.put_line('Error inesperado: ' || sqlerrm);
    end if;
end;
/

prompt =======================================
prompt Prueba 3.
prompt Intentar actualizar un registro con dias_ocupacion válido
prompt ========================================
declare
begin
  -- Intentar actualizar un registro con dias_ocupacion <= 30
  update alquiler
  set dias_ocupacion = 20
  where alquiler_id = 1; -- Sustituye con un ID válido
  dbms_output.put_line('Ok, prueba 3 exitosa');
exception
  when others then
    dbms_output.put_line('Error inesperado: ' || sqlerrm);
end;
/

prompt =======================================
prompt Prueba 4.
prompt Intentar actualizar un registro con dias_ocupacion mayor a 30
prompt ========================================
declare
begin
  -- Intentar actualizar un registro con dias_ocupacion > 30
  update alquiler
  set dias_ocupacion = 40
  where alquiler_id = 1; -- Sustituye con un ID válido
  dbms_output.put_line('Error: prueba 4 fallida, se permitió actualizar un registro con dias_ocupacion > 30');
exception
  when others then
    if sqlcode = -20001 then
      dbms_output.put_line('Ok, prueba 4 exitosa, se detectó el error esperado: ' || sqlerrm);
    else
      dbms_output.put_line('Error inesperado: ' || sqlerrm);
    end if;
end;
/

-- Mostrar errores del trigger
show errors;
