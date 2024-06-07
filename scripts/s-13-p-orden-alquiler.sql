--@Autor(es):       Jaime Manuel Miranda Serrano y Diego Adrian Del Razo Sanchez
--@Fecha creación:  17/04/2024
--@Descripción:     Proceso orden de alquiler

--Este procedimiento acepta los parámetros necesarios para crear una nueva orden de alquiler. 
--Inserta registros en varias tablas para registrar el alquiler y actualizar la disponibilidad de la vivienda.


create or replace procedure crear_orden_alquiler (
  p_usuario_id         in number,
  p_vivienda_id        in number,
  p_folio              in varchar2,
  p_fecha_inicio       in date,
  p_dias_ocupacion     in number,
  p_calificacion       in number,
  p_descripcion        in varchar2
) as
  v_alquiler_id        number;
  v_calificacion_id    number;
begin
  -- insertar registro en la tabla de alquiler
  insert into alquiler (alquiler_id, folio, fecha_inicio, dias_ocupacion, vivienda_id, usuario_id)
  values (alquiler_seq.nextval, p_folio, p_fecha_inicio, p_dias_ocupacion, p_vivienda_id, p_usuario_id)
  returning alquiler_id into v_alquiler_id;

  -- insertar registro en la tabla de calificación de alquiler
  insert into alquiler_calificacion (alquiler_calificacion_id, calificacion, fecha, descripcion, usuario_id, alquiler_id)
  values (alquiler_calificacion_seq.nextval, p_calificacion, sysdate, p_descripcion, p_usuario_id, v_alquiler_id)
  returning alquiler_calificacion_id into v_calificacion_id;

  -- actualizar la capacidad de la vivienda
  update vivienda_vacacion
  set maximo_dias = maximo_dias - p_dias_ocupacion
  where vivienda_id = p_vivienda_id;

  commit;
exception
  when others then
    rollback;
    raise_application_error(-20001, 'error al crear la orden de alquiler: ' || sqlerrm);
end;
/
show errors
