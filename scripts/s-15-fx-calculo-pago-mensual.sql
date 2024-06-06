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
BEGIN
  -- Recuperar el importe total de la vivienda
  SELECT SUM(importe)
  INTO v_importe_total
  FROM pago
  WHERE vivienda_id = p_vivienda_id;

  -- Calcular el pago por mes
  v_pago_mensual := v_importe_total / p_mensualidades;
  
  -- Retornar el pago por mes
  RETURN v_pago_mensual;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    -- Manejo de excepción si no se encuentra la vivienda
    RETURN NULL;
  WHEN OTHERS THEN
    -- Manejo de cualquier otra excepción
    RETURN NULL;
END calcular_pago_mensual;
/
