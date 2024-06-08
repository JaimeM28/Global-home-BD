--@Autor(es): Del Razo Sánchez Diego Adrián y Miranda Serrano Jaime Manuel
--@Fecha creación: 05/06/2024
--@Descripción:  Creación de trigger para validar el status de vivienda en venta

Prompt creando trigger tr_vivienda
create or replace trigger tr_vivienda_status
  before insert or delete or update of status_vivienda_id 
  on vivienda
  for each row 
  declare 
    v_clave_status status_vivienda.clave%type;
    v_usuario number;
    v_pago_count number;
    v_vivienda_count number;
  begin 
    case
      --validar que las viviendas insertadas tengas status disponible o en venta
      when inserting then 
        select clave into v_clave_status
        from status_vivienda
        where status_vivienda_id = :new.status_vivienda_id;
        if v_clave_status not in ('DISPONIBLE','EN VENTA') then 
        raise_application_error(-20001,'NO se puede realizar la inserción,'
          ||'porque el status no es EN DISPONIBLE O EN VENTA' );
        end if;
      
      --verificar que las viviendas sean en venta, tengan un pago y dueño registrados
      --para modificar el status a vendida
      when updating ('status_vivienda_id') then
        select clave into v_clave_status
        from status_vivienda
        where status_vivienda_id = :new.status_vivienda_id;
        if v_clave_status in ('VENDIDA') then
        --verificando que tiene dueño registrado
        select usuario_id into v_usuario
          from vivienda_venta
          where vivienda_id = :new.vivienda_id;
          if v_usuario is null then 
            raise_application_error(-20002,'La vivienda no tiene dueño registrado');
          end if;
          --verificando que tenga al menos 1 pago registrado
          select count(*) into v_pago_count
          from pago 
          where vivienda_id = :new.vivienda_id;
          if v_pago_count < 1 then
            raise_application_error(-20003,'La vivienda con '|| :new.vivienda_id
              || ' no tiene pagos registrados');
          end if;  
        end if;
   
      when deleting then 
        select clave into v_clave_status
        from status_vivienda
        where status_vivienda_id = :old.status_vivienda_id;
        if v_clave_status not in ('INACTIVA') then 
          raise_application_error(-20004,'vivienda con id: ' 
          || :old.vivienda_id 
          ||' No puede borrarse, porque su status no es'
          ||' INACTIVO');
        end if;  
    end case;
  end;
  /
show errors 