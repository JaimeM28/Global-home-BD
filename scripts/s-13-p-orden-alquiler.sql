--@Autor(es):       Jaime Manuel Miranda Serrano y Diego Adrian Del Razo Sanchez
--@Fecha creación:  17/04/2024
--@Descripción:     Proceso orden de alquiler

--Este procedimiento acepta los parámetros necesarios para crear una nueva orden de alquiler. 
--Inserta registros en varias tablas para registrar el alquiler y actualizar la disponibilidad de la vivienda.


CREATE OR REPLACE PROCEDURE crear_orden_alquiler (
  p_usuario_id         IN NUMBER,
  p_vivienda_id        IN NUMBER,
  p_folio              IN VARCHAR2,
  p_fecha_inicio       IN DATE,
  p_dias_ocupacion     IN NUMBER,
  p_calificacion       IN NUMBER,
  p_descripcion        IN VARCHAR2
) AS
  v_alquiler_id        NUMBER;
  v_calificacion_id    NUMBER;
BEGIN
  -- Insertar registro en la tabla de alquiler
  INSERT INTO alquiler (alquiler_id, folio, fecha_inicio, dias_ocupacion, vivienda_id, usuario_id)
  VALUES (alquiler_seq.NEXTVAL, p_folio, p_fecha_inicio, p_dias_ocupacion, p_vivienda_id, p_usuario_id)
  RETURNING alquiler_id INTO v_alquiler_id;

  -- Insertar registro en la tabla de calificación de alquiler
  INSERT INTO alquiler_calificacion (alquiler_calificacion_id, calificacion, fecha, descripcion, usuario_id, alquiler_id)
  VALUES (alquiler_calificacion_seq.NEXTVAL, p_calificacion, SYSDATE, p_descripcion, p_usuario_id, v_alquiler_id)
  RETURNING alquiler_calificacion_id INTO v_calificacion_id;

  -- Actualizar la capacidad de la vivienda
  UPDATE vivienda_vacacion
  SET maximo_dias = maximo_dias - p_dias_ocupacion
  WHERE vivienda_id = p_vivienda_id;

  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    ROLLBACK;
    RAISE_APPLICATION_ERROR(-20001, 'Error al crear la orden de alquiler: ' || SQLERRM);
END;
/
