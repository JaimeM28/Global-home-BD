--@Autor(es): Jaime Manuel Miranda Serrano y Diego Adrian Del Razo Sanchez
--@Fecha creación: 02/06/2024
--@Descripción: Creación de tabla externa

--Global home recibe un reporte de viviendas embargadas por parte del gobierno
--para compararlas con los usuarios que tienen viviendas en venta y eliminarlas si
--aparecen en el reporte 
Prompt Creando tabla vivienda_venta_ext
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
