--@Autor(es): Del Razo Sánchez Diego Adrián y Miranda Serrano Jaime Manuel
--@Fecha creación: 07/06/2024
--@Descripción:  Prueba de trigger tr_vivienda_status

set serveroutput on
Prompt =======================================
Prompt Prueba 1.
prompt Insertando un registro valido (vivienda con status disponible)
Prompt ========================================
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) 
values (vivienda_seq.nextval, 7.9187344, 125.3297787, '2 Bowman Circle', 18, 'Penthouse con terraza y vista al mar', 1, 1, 0, to_date('11/12/2021','dd/mm/yyyy'), 1, 20);
--Validar que registro se inserto corecctamente 
declare
  v_count number;
  v_num_actual number;
begin 
  select vivienda_seq.currval into v_num_actual 
  from dual;
  select count(*) into v_count
  from vivienda
  where vivienda_id = v_num_actual;
  if v_count > 0 then 
    dbms_output.put_line('Ok, prueba 1 exitosa. Vivienda registrado');
  else 
    raise_application_error(-20005,'Error: El registro no se inserto');
  end if;
end;
/
Prompt =======================================
Prompt Prueba 2.
prompt Insertando un registro no valido (vivienda con status VENDIDA)
Prompt La prueba es exitosa si el trigger lanza un error 
Prompt ========================================
declare
  v_codigo number;
  v_mensaje varchar2(1000);
begin
  insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) 
  values (vivienda_seq.nextval, 7.9187344, 125.3297787, '2 Bowman Circle', 18, 'Penthouse con terraza y vista al mar', 0, 0, 1, to_date('11/12/2021','dd/mm/yyyy'), 5, 20);
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

Prompt =======================================
Prompt Prueba 3.
prompt Actualizar el status a VENDIDA de una vivienda a que no tiene dueño
Prompt La prueba es exitosa si el trigger lanza un error 
Prompt ========================================
declare
  v_mensaje varchar2(1000);
  v_codigo number;
begin
update vivienda
set status_vivienda_id = 5
where vivienda_id = 1;
--Si se llega a este punto, significa que el trigger no esta funcionando
raise_application_error(-20006,
		' ERROR: vivienda no tiene dueño'||
		' El trigger no está funcionando correctamente');
exception 
  when others then 
  v_codigo := sqlcode;
  v_mensaje := sqlerrm;
  dbms_output.put_line('Codigo: '|| v_codigo);
  dbms_output.put_line('Mensaje: ' || v_mensaje);
  if v_codigo = -20002   then
    dbms_output.put_line('OK, prueba 3 exitosa');
  else 
    dbms_output.put_line('Error: excepcion no esperada');
    raise;
  end if;
end;
/


Prompt =======================================
Prompt Prueba 4.
prompt Actualizar el status a VENDIDA de una vivienda que si tiene dueño,pero no pagos registrados 
Prompt La prueba es exitosa si el trigger lanza un error 
Prompt ========================================
--asignandole dueño al usuarion con id 
update vivienda_venta
set usuario_id = 5
where vivienda_id = 1;
declare
  v_mensaje varchar2(1000);
  v_codigo number;
begin
update vivienda
set status_vivienda_id = 5
where vivienda_id = 1;
--Si se llega a este punto, significa que el trigger no esta funcionando
raise_application_error(-20006,
		' ERROR: vivienda no tiene dueño'||
		' El trigger no está funcionando correctamente');
exception 
  when others then 
  v_codigo := sqlcode;
  v_mensaje := sqlerrm;
  dbms_output.put_line('Codigo: '|| v_codigo);
  dbms_output.put_line('Mensaje: ' || v_mensaje);
  if v_codigo = -20003   then
    dbms_output.put_line('OK, prueba 4 exitosa');
  else 
    dbms_output.put_line('Error: excepcion no esperada');
    raise;
  end if;
end;
/


Prompt =======================================
Prompt Prueba 5.
prompt Actualizar el status a VENDIDA de una vivienda que si tiene dueño y pagos registrados 
Prompt ========================================
declare 
  v_status_id number; 
begin
  insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
  values (1, 1, to_date('01/01/2023', 'dd/mm/yyyy'), 200, empty_blob());
  update vivienda
  set status_vivienda_id = 5
  where vivienda_id = 1;
  select status_vivienda_id into v_status_id
  from vivienda
  where vivienda_id = 1;
   if v_status_id = 5 then 
    dbms_output.put_line('Ok, prueba 5 exitosa. status actualizado');
  else 
    raise_application_error(-20005,'Error: El registro no se actualizo');
  end if;
end;
/





Prompt =======================================
Prompt Prueba 6.
prompt Eliminar una vivienda con status VENDIDA
Prompt La prueba es exitosa si el trigger lanza un error 
Prompt ========================================
declare
  v_codigo number;
  v_mensaje varchar2(1000);
begin
  delete from vivienda
  where vivienda_id = 5;
--Si se llega a este punto, significa que el trigger no esta funcionando
raise_application_error(-20006,
		' ERROR: vivienda borrada con status incorrecto'||
		' El trigger no está funcionando correctamente');
exception
  when others then 
  v_codigo := sqlcode;
  v_mensaje := sqlerrm;
  dbms_output.put_line('Codigo: '|| v_codigo);
  dbms_output.put_line('Mensaje: ' || v_mensaje);
  if v_codigo = -20004 then
    dbms_output.put_line('OK, prueba 6 exitosa');
  else 
    dbms_output.put_line('Error: excepcion no esperada');
    raise;
  end if;
end;
/


Prompt =======================================
Prompt Prueba 7.
prompt Eliminar una vivienda con status INACTIVA
Prompt ========================================
delete from vivienda
where vivienda_id = 101;
declare
  v_count number;
begin 
  select count(*) into v_count
  from vivienda
  where vivienda_id = 101;
  if v_count = 0 then 
    dbms_output.put_line('Ok, prueba 7 exitosa. vivienda eliminado');
  else 
    raise_application_error(-20006,'Error: El registro no se elimino');
  end if;
end;
/

Prompt Haciendo rollback
rollback;