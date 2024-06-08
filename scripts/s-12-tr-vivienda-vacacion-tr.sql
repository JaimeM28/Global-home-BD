--@Autor(es): Del Razo Sánchez Diego Adrián y Miranda Serrano Jaime Manuel
--@Fecha creación: 05/06/2024
--@Descripción: Validación de trigger para enviar mensajes cuando una vivienda de vacaciones esté disponible


-- Configurar la salida del servidor
set serveroutput on

-- Limpiar las tablas antes de comenzar las pruebas
prompt Limpiando tablas mensaje y vivienda_vacacion...
delete from mensaje;
delete from vivienda_vacacion;
commit;

-- Crear datos de prueba en las tablas usuario y vivienda_vacacion
prompt Creando datos de prueba en las tablas usuario y vivienda_vacacion...
insert into usuario (usuario_id, nombre, email) values (1, 'Juan Perez', 'juan@example.com'); -- Sustituye con los campos correctos
insert into usuario (usuario_id, nombre, email) values (2, 'Maria Lopez', 'maria@example.com'); -- Sustituye con los campos correctos
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (1, 100, 10, 50); -- Sustituye con los campos correctos
commit;

prompt =======================================
prompt Pruebas trigger vivienda_vacacion_disponible_trg
prompt =======================================
prompt Prueba 1.
prompt Intentar insertar un registro en vivienda_vacacion
prompt ========================================
declare
begin
  -- Insertar un registro en vivienda_vacacion
  insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto)
  values (2, 200, 15, 100); -- Sustituye con los campos correctos
  commit;
  dbms_output.put_line('Ok, prueba 1 exitosa, mensajes enviados.');
exception
  when others then
    dbms_output.put_line('Error inesperado: ' || sqlerrm);
end;
/

prompt =======================================
prompt Prueba 2.
prompt Intentar actualizar un registro en vivienda_vacacion
prompt ========================================
declare
begin
  -- Actualizar un registro en vivienda_vacacion
  update vivienda_vacacion
  set costo_dia = 250, maximo_dias = 20, costo_aparto = 150
  where vivienda_id = 1; -- Sustituye con un ID válido
  commit;
  dbms_output.put_line('Ok, prueba 2 exitosa, mensajes enviados.');
exception
  when others then
    dbms_output.put_line('Error inesperado: ' || sqlerrm);
end;
/

-- Verificar mensajes generados
prompt =======================================
prompt Verificando mensajes generados
prompt =======================================
select * from mensaje;

-- Mostrar errores del trigger
show errors;
