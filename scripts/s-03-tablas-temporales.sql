--@Autor(es): Jaime Manuel Miranda Serrano y Diego Adrian Del Razo Sanchez
--@Fecha creación: 02/06/2024
--@Descripción: Creación de tablas temporales

--Tabla temporal para que los usuarios puedan consultar estadisticas de las 
--categorias de viviendas
Prompt Creando tabla estadistica_temp
create global temporary table estadistica_temp(
  categoria         varchar2(40) not null,
  costo_promedio    number(12,2) not null,
  costo_min         number(12,2) not null, 
  costo_max         number(12,2) not null,
  total_viviendas   number(10,0) not null
)on commit preserve rows;

