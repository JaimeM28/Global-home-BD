--@Autor(es):       Jaime Manuel Miranda Serrano y Diego Adrian Del Razo Sanchez
--@Fecha creación:  06/06/2024
--@Descripción:     Prueba funcion genera-folio


set serveroutput on
prompt Pruebas funcion f_genera_folio 
prompt =======================================
prompt Prueba 1.
prompt funcion con datos correctos para una vivienda de renta y vacacional
prompt ========================================
declare
    v_folio varchar2(100);
begin
    v_folio := f_genera_folio(1);  -- Sustituye 1 por un ID de vivienda válido en tu base de datos
    dbms_output.put_line('Folio generado: ' || v_folio);
    if v_folio is not null then
        dbms_output.put_line('Ok, prueba 1 exitosa');
    else
        raise_application_error(-20004, 'ERROR: la funcion presenta problemas');
    end if;
end;
/

prompt =======================================
prompt Prueba 2.
prompt funcion con vivienda inexistente
prompt ========================================
declare
    v_folio varchar2(100);
    v_codigo number;
    v_mensaje varchar2(200);
begin
    v_folio := f_genera_folio(999);  -- ID de vivienda inexistente
exception 
    when others then 
        v_codigo := sqlcode;
        v_mensaje := sqlerrm;
        dbms_output.put_line('Codigo: ' || v_codigo);
        dbms_output.put_line('Mensaje: ' || v_mensaje);
        if v_codigo = -20001 then
            dbms_output.put_line('OK, prueba 2 exitosa');
        else 
            dbms_output.put_line('Error: excepcion no esperada');
            raise;
        end if;
end;
/

prompt =======================================
prompt Prueba 3.
prompt funcion con datos correctos para una vivienda de venta y vacacional
prompt ========================================
declare
    v_folio varchar2(100);
begin
    v_folio := f_genera_folio(2);  -- Sustituye 2 por un ID de vivienda válido en tu base de datos
    dbms_output.put_line('Folio generado: ' || v_folio);
    if v_folio is not null then
        dbms_output.put_line('Ok, prueba 3 exitosa');
    else
        raise_application_error(-20004, 'ERROR: la funcion presenta problemas');
    end if;
end;
/

prompt =======================================
prompt Prueba 4.
prompt funcion con datos correctos para una vivienda solo de venta
prompt ========================================
declare
    v_folio varchar2(100);
begin
    v_folio := f_genera_folio(3);  -- Sustituye 3 por un ID de vivienda válido en tu base de datos
    dbms_output.put_line('Folio generado: ' || v_folio);
    if v_folio is not null then
        dbms_output.put_line('Ok, prueba 4 exitosa');
    else
        raise_application_error(-20004, 'ERROR: la funcion presenta problemas');
    end if;
end;
/

prompt =======================================
prompt Prueba 5.
prompt funcion con datos correctos para una vivienda solo de renta
prompt ========================================
declare
    v_folio varchar2(100);
begin
    v_folio := f_genera_folio(4);  -- Sustituye 4 por un ID de vivienda válido en tu base de datos
    dbms_output.put_line('Folio generado: ' || v_folio);
    if v_folio is not null then
        dbms_output.put_line('Ok, prueba 5 exitosa');
    else
        raise_application_error(-20004, 'ERROR: la funcion presenta problemas');
    end if;
end;
/
