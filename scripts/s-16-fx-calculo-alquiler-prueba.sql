--@Autor(es):       Jaime Manuel Miranda Serrano y Diego Adrian Del Razo Sanchez
--@Fecha creación:  06/06/2024
--@Descripción:     Prueba funcion calculo_alquiler


set serveroutput on
Prompt Pruebas funcion calculo_alquiler 
Prompt =======================================
Prompt Prueba 1.
prompt funcion con con datos correctos
Prompt ========================================
declare
v_costo_alquiler number;
begin
  v_costo_alquiler := calcular_alquiler(41,10);
  if v_costo_alquiler > 1 then
    dbms_output.put_line('Ok, prueba 3 exitosa');
    dbms_output.put_line('costo alquiler: '|| v_costo_alquiler);
  else
    raise_application_error(-20004, 'ERROR: la funcion presenta problemas');
  end if;
end;
/

Prompt =======================================
Prompt Prueba 2.
prompt funcion con vivienda para vacacionar inexistente
Prompt ========================================
declare
v_costo_alquiler number;
v_codigo number;
v_mensaje varchar2(200);
begin
  v_costo_alquiler := calcular_alquiler(21,14);
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
prompt funcion con dias negativos
Prompt ========================================
declare
v_costo_alquiler number;
v_codigo number;
v_mensaje varchar2(200);
begin
  v_costo_alquiler := calcular_alquiler(41,-1);
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
prompt funcion que sobrepasa el maximo de dias
Prompt ========================================
declare
v_costo_alquiler number;
v_codigo number;
v_mensaje varchar2(200);
begin
  v_costo_alquiler := calcular_alquiler(41,50);
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