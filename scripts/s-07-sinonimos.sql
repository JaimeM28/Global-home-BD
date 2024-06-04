--@Autor(es):       Jaime Manuel Miranda Serrano y Diego Adrian Del Razo Sanchez
--@Fecha creación:  03/06/2024
--@Descripción:     Creacion de sinonimos

Prompt Creando sinonimos publicos de md_proy_admin
create or replace public synonym p_casa for vivienda;
create or replace public synonym p_casa_renta for vivienda_renta;
create or replace public synonym p_casa_venta for vivienda_venta;
create or replace public synonym p_casa_vacacion for vivienda_vacacion;

Prompt Otorgando permisos para lectura a md_proy_invitado
grant select on vivienda to md_proy_invitado;
grant select on vivienda_renta to md_proy_invitado;
grant select on vivienda_venta to md_proy_invitado;
grant select on vivienda_vacacion to md_proy_invitado;

Prompt Iniciando con md_proy_invitado
connect md_proy_invitado/invitado

Prompt Creando sinonimos privados 
create or replace synonym vivienda for md_proy_admin.vivienda;
create or replace synonym vivienda_renta for md_proy_admin.vivienda_renta;
create or replace synonym vivienda_venta for md_proy_admin.vivienda_venta;
create or replace synonym vivienda_vacacion for md_proy_admin.vivienda_vacacion;

disconnect

Prompt Iniciando con md_proy_admin
connect md_proy_admin/admin

Prompt Creando sinonimos privados con PL/SQL 

set serveroutput on 
declare 
  cursor cur_tablas is
    select table_name 
    from user_tables;
begin
  for r in cur_tablas loop
    execute immediate 'create or replace synonym '||'md_'||r.table_name||' for ' ||r.table_name;
  end loop;
end; 
/