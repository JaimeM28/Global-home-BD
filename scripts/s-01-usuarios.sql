--@Autor(es): Jaime Manuel Miranda Serrano y Diego Adrian Del Razo Sanchez
--@Fecha creación: 17/04/2024
--@Descripción: Creación de usuarios y roles

Prompt Iniciando con sys 
connect sys/system as sysdba

prompt creando usuario md_proy_admin
create user md_proy_admin identified by admin quota unlimited on users;

Prompt creando al usuario md_proy_invitado
create user md_proy_invitado identified by invitado quota 0 on users;

Prompt creando roles
create role rol_admin;
grant create session, create table, create view, create sequence, 
  create public synonym, create synonym, create procedure,
  create trigger to rol_admin;
create role rol_invitado;
grant create session, create synonym to rol_invitado; 

Prompt Asignando roles
grant rol_admin to md_proy_admin;
grant rol_invitado to md_proy_invitado;


prompt Creando un objeto tipo directory
create or replace directory ext_dir as '/unam-bd/proyecto-final/tablas-externas';
--otorgar permisos a md_pry_admin
grant read,write on directory ext_dir to md_proy_admin;

disconnect
