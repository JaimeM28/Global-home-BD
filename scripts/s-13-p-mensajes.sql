--@Autor(es): Del Razo Sánchez Diego Adrián y Miranda Serrano Jaime Manuel
--@Fecha creación: 06/06/2024
--@Descripción:  Creando procedimiento para mandar mensajes a dueños

Prompt Creando procedimiento p_mensajes
create or replace procedure p_mensajes(
  p_num_mensajes out number) 
  is
  cursor c_vivienda_vacacion is 
    select v.usuario_id, q1.vivienda_id, q1.promedio_calificacion from (
      select a.vivienda_id, avg(ac.calificacion) as promedio_calificacion
       from alquiler a
       join alquiler_calificacion ac
       on a.alquiler_id = ac.alquiler_id
       group by a.vivienda_id) q1
    join vivienda v
    on v.vivienda_id = q1.vivienda_id;
    
begin
  p_num_mensajes := 0;
  for r in c_vivienda_vacacion loop
    p_num_mensajes := 1 + p_num_mensajes;
    if r.promedio_calificacion < 3.5 then
      insert into mensaje (mensaje_id, titulo, cuerpo, mensaje_viejo_id, vivienda_id, usuario_id)
      values (mensaje_seq.nextval, 'Aviso', 'Mejore las condiciones de su alquiler', null, r.vivienda_id, r.usuario_id);
    else
      insert into mensaje (mensaje_id, titulo, cuerpo, mensaje_viejo_id, vivienda_id, usuario_id)
      values (mensaje_seq.nextval, 'Felicitacion', 'Su vivienda es excelente', null, r.vivienda_id, r.usuario_id);
    end if;
  end loop;
end;
/
show errors
