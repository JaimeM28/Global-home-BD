--@Autor(es): Del Razo Sánchez Diego Adrián y Miranda Serrano Jaime Manuel
--@Fecha creación: 05/06/2024
--@Descripción:  Creación de trigger para enviar mensajes cuando una vivienda de vacaciones esté disponible

create or replace trigger vivienda_vacacion_disponible_trg
after insert or update of costo_dia, maximo_dias, costo_aparto
on vivienda_vacacion
for each row
declare
  v_usuario_id    usuario.usuario_id%type;
  v_mensaje_id    mensaje.mensaje_id%type;
  v_titulo        varchar2(40) := 'vivienda vacacional disponible';
  v_cuerpo        varchar2(500);
begin
  -- componer el cuerpo del mensaje
  v_cuerpo := 'la vivienda con id ' || :new.vivienda_id || ' está ahora disponible para alquiler vacacional.';

  -- seleccionar todos los usuarios
  for r_usuario in (select usuario_id from usuario) loop
    -- obtener el id del mensaje de la secuencia
    select mensaje_seq.nextval into v_mensaje_id from dual;

    -- insertar un mensaje para cada usuario
    insert into mensaje (mensaje_id, titulo, cuerpo, usuario_id, vivienda_id)
    values (v_mensaje_id, v_titulo, v_cuerpo, r_usuario.usuario_id, :new.vivienda_id);
  end loop;
end;
/

-- mensaje de éxito
prompt trigger creado correctamente para enviar mensajes a los usuarios cuando una vivienda vacacional esté disponible.

