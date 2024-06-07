--@Autor(es):       Jaime Manuel Miranda Serrano y Diego Adrian Del Razo Sanchez
--@Fecha creación:  06/06/2024
--@Descripción:     Creando funcion calculo_alquiler

Prompt Creando funcion calculo_alquiler
create or replace function calcular_alquiler (
  p_vivienda_id in number,
  p_dias in number
) 
return number
is
v_count number;
v_costo_dia number;
v_costo_total number;
v_maximo_dias number;

begin
  --Verificando existencia de vivienda
  select count(*) into v_count
  from vivienda_vacacion
  where vivienda_id = p_vivienda_id;
  if v_count = 0 then
    raise_application_error(-20001, 'ERROR: vivienda para vacacionar no existe');
  else
     -- Recuperar el costo por dia y el maximo de dias
    select costo_dia, maximo_dias into v_costo_dia, v_maximo_dias
    from vivienda_vacacion
    where vivienda_id = p_vivienda_id;
    --Validando dias
    if p_dias < 1 then
      raise_application_error(-20002,'ERROR: dias negativos');
    elsif v_maximo_dias < p_dias then 
      raise_application_error(-20003, 'ERROR: maximo de dias sobrepasado');
    else 
      --retornando el costo total del alquiler
      v_costo_total := p_dias * v_costo_dia;
      return v_costo_total;
    end if;
  end if;
end;
/