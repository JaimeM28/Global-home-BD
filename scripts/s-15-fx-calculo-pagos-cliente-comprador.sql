--@Autor(es):       Jaime Manuel Miranda Serrano y Diego Adrian Del Razo Sanchez
--@Fecha creación:  17/04/2024
--@Descripción:     Funcion calculo del total pagado

-- Este script calcula cuanto lleva pagado el cliente que está comprando una casa

create or replace function calcular_total_pagado (
  p_cliente_id in number,
  p_casa_id in number
) return number is
  v_total_pagado number := 0;
begin
  select sum(p.monto)
  into v_total_pagado
  from pagos p
  join compras c on p.compra_id = c.compra_id
  where c.cliente_id = p_cliente_id
  and c.casa_id = p_casa_id;

  return v_total_pagado;
exception
  when no_data_found then
    return 0;
  when others then
    raise_application_error(-20002, 'Error al calcular el total pagado: ' || sqlerrm);
end;
/
