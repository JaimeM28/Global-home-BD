--@Autor(es): Del Razo Sánchez Diego Adrián y Miranda Serrano Jaime Manuel
--@Fecha creación: 05/06/2024
--@Descripción: Este trigger supondrá que tenemos una tabla usuario_vivienda_historial 
--que registra el historial de alquileres de usuarios para ciertas viviendas.



create or replace trigger trg_update_historial
after insert or update on alquiler
for each row
declare
    cursor c_historial is
        select usuario_id, vivienda_id, fecha_inicio
        from alquiler
        where vivienda_id = :new.vivienda_id;
        
    v_usuario_id alquiler.usuario_id%type;
    v_vivienda_id alquiler.vivienda_id%type;
    v_fecha_inicio alquiler.fecha_inicio%type;
begin
    -- abrir el cursor
    open c_historial;
    loop
        -- obtener cada registro del cursor
        fetch c_historial into v_usuario_id, v_vivienda_id, v_fecha_inicio;
        exit when c_historial%notfound;

        -- insertar en la tabla de historial
        insert into usuario_vivienda_historial (usuario_id, vivienda_id, fecha_alquiler)
        values (v_usuario_id, v_vivienda_id, v_fecha_inicio);
    end loop;
    
    -- cerrar el cursor
    close c_historial;
end;
/
show errors;

