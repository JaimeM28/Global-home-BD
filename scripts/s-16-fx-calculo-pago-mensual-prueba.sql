--@Autor(es):       Jaime Manuel Miranda Serrano y Diego Adrian Del Razo Sanchez
--@Fecha creación:  03/06/2024
--@Descripción:     Prueba funcion calculo_pago_mensual

set serveroutput on 
Prompt Pruebas funcion calculo_pago_mensual 
Prompt =======================================
Prompt Prueba 1.
prompt funcion con mensualidad erronea
Prompt ========================================
declare
v_mensualidad number;
v_codigo number;
v_mensaje varchar2(200);
begin
  v_mensualidad := calcular_pago_mensual(20,-12);
exception 
  when others then 
  v_codigo := sqlcode;
  v_mensaje := sqlerrm;
  dbms_output.put_line('Codigo: '|| v_codigo);
  dbms_output.put_line('Mensaje: ' || v_mensaje);
  if v_codigo = -20001 then
    dbms_output.put_line('OK, prueba 1 exitosa');
  else 
    dbms_output.put_line('Error: excepcion no esperada');
    raise;
  end if;
end;
/

Prompt =======================================
Prompt Prueba 2.
prompt funcion con vivienda inexistente
Prompt ========================================
declare
v_mensualidad number;
v_codigo number;
v_mensaje varchar2(200);
begin
  v_mensualidad := calcular_pago_mensual(23,14);
exception 
  when others then 
  v_codigo := sqlcode;
  v_mensaje := sqlerrm;
  dbms_output.put_line('Codigo: '|| v_codigo);
  dbms_output.put_line('Mensaje: ' || v_mensaje);
  if v_codigo = -20002 then
    dbms_output.put_line('OK, prueba 2 exitosa');
  else 
    dbms_output.put_line('Error: excepcion no esperada');
    raise;
  end if;
end;
/

Prompt =======================================
Prompt Prueba 3.
prompt funcion con mensualidad correcta y vivienda existente
Prompt ========================================
declare
v_mensualidad number;
begin
  v_mensualidad := calcular_pago_mensual(20,12);
  if v_mensualidad > 1 then
    dbms_output.put_line('Ok, prueba 3 exitosa');
    dbms_output.put_line('mensualidades a: '|| v_mensualidad);
  else
    raise_application_error(-20003, 'ERROR: la funcion presenta problemas');
  end if;
end;
/