--@Autor(es): Jaime Manuel Miranda Serrano y Diego Adrian Del Razo Sanchez
--@Fecha creación: 02/06/2024
--@Descripción: Creación de tabla externa

--Global home recibe un reporte de viviendas embargadas por parte del gobierno
--para compararlas con los usuarios que tienen viviendas en venta y eliminarlas si
--aparecen en el reporte 

Prompt Creando tabla vivienda_venta_ext
  -- CREATE TABLE external_vivienda (
--   vivienda_id NUMBER,
--   direccion VARCHAR2(400),
--   es_renta NUMBER,
--   es_venta NUMBER,
--   es_vacacion NUMBER
-- )
-- ORGANIZATION EXTERNAL (
--   TYPE ORACLE_LOADER
--   DEFAULT DIRECTORY ext_tab_dir
--   ACCESS PARAMETERS (
--     RECORDS DELIMITED BY NEWLINE
--     FIELDS TERMINATED BY ','
--     MISSING FIELD VALUES ARE NULL
--     (
--       vivienda_id NUMBER,
--       direccion CHAR(400),
--       es_renta NUMBER,
--       es_venta NUMBER,
--       es_vacacion NUMBER
--     )
--   )
--   LOCATION ('vivienda_data.csv')
-- );
create table  vivienda_venta_ext(
  numero_catastral  varchar2(18),
  folio_escritura   varchar2(18),
  descripcion       varchar2(200),
  latitud           number(13,10),
  longitud          number(13,10)
)
organization external(
  type oracle_loader
  default directory ext_dir
  access parameters (
    records delimited by newline
    badfile ext_dir:'vivienda_venta_ext_bad.log'
    logfile ext_dir:'vivienda_venta_ext.log'
    fields terminated by ','
    lrtrim
    missing field values are null
    (
      numero_catastral, folio_escritura, descripcion, latitud, longitud
    )
  )
  location('vivienda_venta_ext.csv')
) 
reject limit unlimited;

prompt configurando el directorio
--crear directorio
!mkdir -p /unam-bd/proyecto-final/tablas-externas
--Dando permisos de lectura y escrituras requieren leer y escribir
!chmod 777 /unam-bd/proyecto-final/tablas-externas
