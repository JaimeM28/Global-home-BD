--@Autor(es): Del Razo Sánchez Diego Adrián y Miranda Serrano Jaime Manuel
--@Fecha creación: 06/06/2024
--@Descripción:  Prueba de trigger para validar que la calificacion de un alquiler este dada por un usuario que si rento esa casa

Prompt Pruebas trigger tr_calificacion
set serveroutput on
Prompt =======================================
Prompt Prueba 1.
prompt Insertando un registro valido: usuario que hizo alquiler
Prompt ========================================
insert into alquiler_calificacion (alquiler_calificacion_id, calificacion, fecha, descripcion, usuario_id, alquiler_id)
values (alquiler_calificacion_seq.nextval, 3, to_date('12/05/2021','dd/mm/yyyy'),'Lorep ipsum', 53, 1);
--Validar que registro se inserto corecctamente 
declare
  v_count number;
  v_num_actual number;
begin 
  select alquiler_calificacion_seq.currval into v_num_actual 
  from dual;
  select count(*) into v_count
  from alquiler_calificacion
  where alquiler_calificacion_id = v_num_actual;
  if v_count > 0 then 
    dbms_output.put_line('Ok, prueba 1 exitosa. Calificacion registrada');
  else 
    raise_application_error(-20005,'Error: El registro no se inserto');
  end if;
end;
/

Prompt =======================================
Prompt Prueba 2.
prompt Insertando un registro no valido (usuario no alquilo casa)
Prompt La prueba es exitosa si el trigger lanza un error 
Prompt ========================================

declare
  v_codigo number;
  v_mensaje varchar2(1000);
begin
  insert into alquiler_calificacion (alquiler_calificacion_id, calificacion, fecha, descripcion, usuario_id, alquiler_id)
  values (alquiler_calificacion_seq.nextval, 3, to_date('12/05/2021','dd/mm/yyyy'),'Lorep ipsum', 1, 1);
  raise_application_error(-20006,
		' ERROR: registro se inserto'||
		' El trigger no está funcionando correctamente');
exception
  when others then 
  v_codigo := sqlcode;
  v_mensaje := sqlerrm;
  dbms_output.put_line('Codigo: '|| v_codigo);
  dbms_output.put_line('Mensaje: ' || v_mensaje);
  if v_codigo = -20001 then
    dbms_output.put_line('OK, prueba 2 exitosa');
  else 
    dbms_output.put_line('Error: excepcion no esperada');
    raise;
  end if;
end;
/

Prompt Haciendo rollback
rollback;