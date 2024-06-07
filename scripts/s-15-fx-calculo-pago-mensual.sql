--@Autor(es):       Jaime Manuel Miranda Serrano y Diego Adrian Del Razo Sanchez
--@Fecha creación:  03/06/2024
--@Descripción:     Creando funcion calculo_pago_mensual

Prompt Creando funcion calculo_pago_mensual
create or replace function calcular_pago_mensual (
  p_vivienda_id in number,
  p_mensualidades in number
) 
return number
is
  v_importe_total number;
  v_pago_mensual number;
  v_count number;
begin
  --Verificando existencia de vivienda
  select count(*) into v_count
  from vivienda_venta
  where vivienda_id = p_vivienda_id;
  --verificando mensualidad
  if p_mensualidades < 1 and 240 > p_mensualidades   then
    raise_application_error(-20001, 'ERROR: mensualidad erronea');
  elsif v_count = 0 then 
    raise_application_error(-20002, 'ERROR: vivienda no esta en venta o no existe');
  else
    -- Recuperar el importe total de la vivienda
    select precio into v_importe_total
    from vivienda_venta
    where vivienda_id = p_vivienda_id;
    --Calcular el pago por mes
    v_pago_mensual := v_importe_total / p_mensualidades;
    -- Retornar el pago por mes
    return trunc(v_pago_mensual,2);
  end if;
end calcular_pago_mensual;
/
