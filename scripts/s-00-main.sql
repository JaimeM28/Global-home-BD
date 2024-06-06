--@Autor(es): Miranda Serrano Jaime Manuel
--@Fecha creación: 27/04/2024
--@Descripción: Archivo para ejecutar todos los scripts

Prompt Iniciando con sys 
connect sys/system as sysdba

prompt Limpiando
declare
  cursor cur_usuarios is
    select username 
    from dba_users 
    where username 
    like 'MD_PROY%';

  cursor cur_roles is
    select role 
    from dba_roles 
    where role 
    like 'ROL_%';
begin

  for r in cur_usuarios loop
    execute immediate 'drop user '||r.username||' cascade';
  end loop;

  for r in cur_roles loop
    execute immediate 'drop role '||r.role;
  end loop;
end;
/

@s-01-usuarios.sql

Prompt Iniciando con md_proy_admin
connect md_proy_admin/admin 

@s-02-entidades.sql
@s-03-tablas-temporales.sql
@s-04-tablas-externas.sql
@s-05-secuencias.sql
@s-06-indices.sql
@s-07-sinonimos.sql
@s-08-vistas.sql
@s-09-carga-inicial.sql
@s-10-consultas.sql
disconnect