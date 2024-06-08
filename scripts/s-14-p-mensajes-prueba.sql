--@Autor(es): Del Razo Sánchez Diego Adrián y Miranda Serrano Jaime Manuel
--@Fecha creación: 06/06/2024
--@Descripción:  Prueba procedimiento para mandar mensajes a dueños

set serveroutput on 

Prompt =======================================
Prompt Probando procedimiento p_mensajes
Prompt ========================================
declare 
  v_num_mensajes number;
begin
  p_mensajes(v_num_mensajes);
   dbms_output.put_line('Prueba exitosa. Mensajes insertados: '
    || v_num_mensajes);
end; 
/