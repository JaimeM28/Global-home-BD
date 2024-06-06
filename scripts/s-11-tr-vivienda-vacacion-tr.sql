--@Autor(es): Del Razo Sánchez Diego Adrián y Miranda Serrano Jaime Manuel
--@Fecha creación: 05/06/2024
--@Descripción:  Creación de trigger para enviar mensajes cuando una vivienda de vacaciones esté disponible

CREATE OR REPLACE TRIGGER vivienda_vacacion_disponible_trg
AFTER INSERT OR UPDATE OF costo_dia, maximo_dias, costo_aparto
ON vivienda_vacacion
FOR EACH ROW
DECLARE
  v_usuario_id    usuario.usuario_id%TYPE;
  v_mensaje_id    mensaje.mensaje_id%TYPE;
  v_titulo        VARCHAR2(40) := 'Vivienda Vacacional Disponible';
  v_cuerpo        VARCHAR2(500);
BEGIN
  -- Componer el cuerpo del mensaje
  v_cuerpo := 'La vivienda con ID ' || :NEW.vivienda_id || ' está ahora disponible para alquiler vacacional.';

  -- Seleccionar todos los usuarios
  FOR r_usuario IN (SELECT usuario_id FROM usuario) LOOP
    -- Obtener el ID del mensaje de la secuencia
    SELECT mensaje_seq.NEXTVAL INTO v_mensaje_id FROM dual;

    -- Insertar un mensaje para cada usuario
    INSERT INTO mensaje (mensaje_id, titulo, cuerpo, usuario_id, vivienda_id)
    VALUES (v_mensaje_id, v_titulo, v_cuerpo, r_usuario.usuario_id, :NEW.vivienda_id);
  END LOOP;
END;
/

-- Mensaje de éxito
PROMPT Trigger creado correctamente para enviar mensajes a los usuarios cuando una vivienda vacacional esté disponible.
