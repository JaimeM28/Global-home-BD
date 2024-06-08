--@Autor(es): Del Razo Sánchez Diego Adrián y Miranda Serrano Jaime Manuel
--@Fecha creación: 05/06/2024
--@Descripción: Esta funcion genera folios con base a lo registros de vivienda y usuario
prompt creando bloque pl/sql para crear funcion f_genera_folio

create or replace function f_genera_folio(
    p_vivienda_id number
) return varchar2 is

    -- variables 
    v_folio_gen varchar2(100);
    v_fecha_status date;
    v_vivienda_es_renta number(1,0);
    v_vivienda_es_vacacion number(1,0);
    v_vivienda_es_venta number(1,0);

    -- excepción personalizada
    e_vivienda_no_existe exception;

begin
    -- validar que la vivienda exista
    select es_renta, es_vacacion, es_venta, fecha_status 
    into v_vivienda_es_renta, v_vivienda_es_vacacion, v_vivienda_es_venta, v_fecha_status
    from vivienda
    where vivienda_id = p_vivienda_id;

    -- generar el folio basado en el tipo de vivienda
    if v_vivienda_es_renta = 1 and v_vivienda_es_vacacion = 1 then
        v_folio_gen := 'RENT-VAC-' || p_vivienda_id || '-' || to_char(v_fecha_status, 'YYYYMMDD');
    elsif v_vivienda_es_vacacion = 1 then
        v_folio_gen := 'VAC-' || p_vivienda_id || '-' || to_char(v_fecha_status, 'YYYYMMDD');
    elsif v_vivienda_es_renta = 1 then 
        v_folio_gen := 'RENT-' || p_vivienda_id || '-' || to_char(v_fecha_status, 'YYYYMMDD');
    elsif v_vivienda_es_venta = 1 then
        v_folio_gen := 'SALE-' || p_vivienda_id || '-' || to_char(v_fecha_status, 'YYYYMMDD');
    else
        v_folio_gen := 'UNK-' || p_vivienda_id || '-' || to_char(v_fecha_status, 'YYYYMMDD');
    end if;

    return v_folio_gen;

exception
    when no_data_found then
        raise_application_error(-20001, 'La vivienda con ID ' || p_vivienda_id || ' no existe.');
end;
/
show errors;

