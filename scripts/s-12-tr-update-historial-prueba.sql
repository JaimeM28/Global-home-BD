--@Autor(es): Del Razo Sánchez Diego Adrián y Miranda Serrano Jaime Manuel
--@Fecha creación: 05/06/2024
--@Descripción: Este es un script que pondrá a prueba el trigger update-historial


-- Configurar la salida del servidor
set serveroutput on

-- Limpiar las tablas antes de comenzar las pruebas
prompt Limpiando tablas...
delete from usuario_vivienda_historial;
delete from alquiler;

-- Crear datos de prueba
prompt Creando datos de prueba en la tabla alquiler...
insert into alquiler (alquiler_id, folio, fecha_inicio, dias_ocupacion, vivienda_id, usuario_id)
values (1, 'ALQ-001', sysdate, 10, 1, 1); -- Sustituye con IDs válidos
commit;

prompt =======================================
prompt Prueba 1.
prompt Insertar un nuevo registro en la tabla alquiler y verificar el trigger
prompt ========================================
declare
    v_usuario_id alquiler.usuario_id%type;
    v_vivienda_id alquiler.vivienda_id%type;
    v_fecha_alquiler date;
begin
    -- Insertar un nuevo registro en la tabla alquiler
    insert into alquiler (alquiler_id, folio, fecha_inicio, dias_ocupacion, vivienda_id, usuario_id)
    values (2, 'ALQ-002', sysdate + 1, 5, 1, 2); -- Sustituye con IDs válidos
    commit;

    -- Verificar si el trigger ha insertado en la tabla historial
    select usuario_id, vivienda_id, fecha_alquiler
    into v_usuario_id, v_vivienda_id, v_fecha_alquiler
    from usuario_vivienda_historial
    where vivienda_id = 1 and usuario_id = 2; -- Sustituye con IDs válidos

    -- Mostrar resultados
    dbms_output.put_line('Usuario ID: ' || v_usuario_id);
    dbms_output.put_line('Vivienda ID: ' || v_vivienda_id);
    dbms_output.put_line('Fecha Alquiler: ' || v_fecha_alquiler);
    dbms_output.put_line('Ok, prueba 1 exitosa');
exception
    when no_data_found then
        dbms_output.put_line('Error: no se encontró registro en historial.');
    when others then
        dbms_output.put_line('Error inesperado: ' || sqlerrm);
end;
/

prompt =======================================
prompt Prueba 2.
prompt Actualizar un registro existente en la tabla alquiler y verificar el trigger
prompt ========================================
declare
    v_usuario_id alquiler.usuario_id%type;
    v_vivienda_id alquiler.vivienda_id%type;
    v_fecha_alquiler date;
begin
    -- Actualizar un registro en la tabla alquiler
    update alquiler
    set dias_ocupacion = 7
    where alquiler_id = 1; -- Sustituye con un ID válido
    commit;

    -- Verificar si el trigger ha insertado en la tabla historial
    select usuario_id, vivienda_id, fecha_alquiler
    into v_usuario_id, v_vivienda_id, v_fecha_alquiler
    from usuario_vivienda_historial
    where vivienda_id = 1 and usuario_id = 1 and fecha_alquiler = sysdate; -- Ajusta los valores según sea necesario

    -- Mostrar resultados
    dbms_output.put_line('Usuario ID: ' || v_usuario_id);
    dbms_output.put_line('Vivienda ID: ' || v_vivienda_id);
    dbms_output.put_line('Fecha Alquiler: ' || v_fecha_alquiler);
    dbms_output.put_line('Ok, prueba 2 exitosa');
exception
    when no_data_found then
        dbms_output.put_line('Error: no se encontró registro en historial.');
    when others then
        dbms_output.put_line('Error inesperado: ' || sqlerrm);
end;
/

prompt =======================================
prompt Prueba 3.
prompt Verificar que el trigger no inserte duplicados en la tabla historial
prompt ========================================
declare
    v_count number;
begin
    -- Contar los registros en la tabla historial para un usuario y vivienda específicos
    select count(*)
    into v_count
    from usuario_vivienda_historial
    where vivienda_id = 1 and usuario_id = 1; -- Sustituye con IDs válidos

    -- Verificar si hay más de un registro
    if v_count > 1 then
        dbms_output.put_line('Error: se encontraron registros duplicados en historial.');
    else
        dbms_output.put_line('Ok, prueba 3 exitosa');
    end if;
exception
    when others then
        dbms_output.put_line('Error inesperado: ' || sqlerrm);
end;
/
show errors
