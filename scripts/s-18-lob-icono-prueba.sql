--@Autor(es):       Jaime Manuel Miranda Serrano y Diego Adrian Del Razo Sanchez
--@Fecha creación:  06/06/2024
--@Descripción:     Prueba procedimiento para almacenar iconos en la tabla tipo servicio

set serveroutput on 
Prompt Pruebas procedimiento insertar_icono_servicio 
Prompt =======================================
Prompt Prueba 1.
prompt Procedimiento con datos correctos
Prompt ========================================
declare
v_blob blob;
begin
  insertar_icono_servicio(1,'agua.png');
    select icono into v_blob
    from tipo_servicio
    where tipo_servicio_id = 1;
  if length(v_blob) > 0 then
    dbms_output.put_line('Ok, prueba 1 exitosa');
    dbms_output.put_line('tamaño del archivo: '|| length(v_blob));
  else
    raise_application_error(-20005, 'ERROR: la funcion presenta problemas');
  end if;
end;
/

Prompt =======================================
Prompt Prueba 2.
prompt Procedimiento con servicio no existente
Prompt ========================================
declare
v_codigo number;
v_mensaje varchar2(200);
begin
  insertar_icono_servicio(101,'icono.png');
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
prompt Procedimiento con extension incorrecta 
Prompt ========================================
declare
v_codigo number;
v_mensaje varchar2(200);
begin
  insertar_icono_servicio(11,'avaluo1.pdf');
exception 
  when others then 
  v_codigo := sqlcode;
  v_mensaje := sqlerrm;
  dbms_output.put_line('Codigo: '|| v_codigo);
  dbms_output.put_line('Mensaje: ' || v_mensaje);
  if v_codigo = -20002 then
    dbms_output.put_line('OK, prueba 3 exitosa');
  else 
    dbms_output.put_line('Error: excepcion no esperada');
    raise;
  end if;
end;
/

Prompt =======================================
Prompt Prueba 4.
prompt Procedimiento con archivo inexistente
Prompt ========================================
declare
v_codigo number;
v_mensaje varchar2(200);
begin
  insertar_icono_servicio(2,'icono.png');
exception 
  when others then 
  v_codigo := sqlcode;
  v_mensaje := sqlerrm;
  dbms_output.put_line('Codigo: '|| v_codigo);
  dbms_output.put_line('Mensaje: ' || v_mensaje);
  if v_codigo = -20003 then
    dbms_output.put_line('OK, prueba 4 exitosa');
  else 
    dbms_output.put_line('Error: excepcion no esperada');
    raise;
  end if;
end;
/