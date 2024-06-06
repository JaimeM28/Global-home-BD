--@Autor(es):       Jaime Manuel Miranda Serrano y Diego Adrian Del Razo Sanchez
--@Fecha creación:  03/06/2024
--@Descripción:     Creacion de funciones

CREATE OR REPLACE FUNCTION calcular_pago_mensual (
  p_vivienda_id IN NUMBER,
  p_mensualidades IN NUMBER
) 
RETURN NUMBER
IS
  v_importe_total NUMBER;
  v_pago_mensual NUMBER;
  v_count NUMBER;
BEGIN
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
    FROM vivienda_venta
    WHERE vivienda_id = p_vivienda_id;
    --Calcular el pago por mes
    v_pago_mensual := v_importe_total / p_mensualidades;
    -- Retornar el pago por mes
    RETURN v_pago_mensual;
  end if;
end calcular_pago_mensual;
/
