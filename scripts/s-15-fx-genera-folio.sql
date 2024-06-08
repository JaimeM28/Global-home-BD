--@Autor(es): Del Razo Sánchez Diego Adrián y Miranda Serrano Jaime Manuel
--@Fecha creación: 05/06/2024
--@Descripción: Esta funcion genera folios con base a lo registros de vivienda y usuario
prompt creando bloque pl/sql para crear funcion f_genera_folio

create or replace function f_genera_folio(
    p_vivienda_id number,
    p_usuario_id number
) return varchar2 is

    -- variables 
    v_folio_gen varchar2(100) default 'CON-v00-u00-dd-mm-yyyy';
    v_fecha_status date;
    v_vivienda_es_renta number(1,0);
    v_vivienda_es_vacacional number(1,0);
    v_vivienda_es_venta number(1,0);

begin 

    -- Obtener los datos de la vivienda
    select es_renta, es_vacacion, es_venta, fecha_status 
    into v_vivienda_es_renta, v_vivienda_es_vacacional, v_vivienda_es_venta, v_fecha_status    
    from vivienda
    where vivienda_id = p_vivienda_id;

    -- Generar el folio basado en las condiciones
    if v_vivienda_es_renta = 1 and v_vivienda_es_vacacional = 1 then
        v_folio_gen := 'COA-v' || p_vivienda_id || '-u' || p_usuario_id || '-' || 
        to_char(v_fecha_status, 'dd-mm-yyyy');
    elsif v_vivienda_es_vacacional = 1 then
        v_folio_gen := 'ALQ-v' || p_vivienda_id || '-u' || p_usuario_id || '-' || 
        to_char(v_fecha_status, 'ddmm-yyyy');
    elsif v_vivienda_es_renta = 1 then 
        v_folio_gen := 'CON-v' || p_vivienda_id || '-u' || p_usuario_id || '-' || 
        to_char(v_fecha_status, 'dd-mm-yyyy');
    else
        v_folio_gen := 'CON-v00-u00-dd-mm-yyyy';
    end if;

    return v_folio_gen;

end;
/
show errors;
