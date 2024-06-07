-- @Autor(es): Jaime Manuel Miranda Serrano y Diego Adrian Del Razo Sanchez
-- @Fecha creación: 05/06/2024
-- @Descripción: Archivo de consultas que incluye joins, funciones de agregación, álgebra 
--relacional, subconsultas, sinónimos, vistas, tablas temporales y tablas externas.

-- 1. Consulta con INNER JOIN y funciones de agregación (GROUP BY y HAVING)
--Consulta que obtiene el numero de viviendas de la que es dueño un usuario
Prompt Consulta 1 (join y fuciones de agregacion)

set linesize window
col usuario_id format 99
col nombre format a20
col num_viviendas format 9

select u.usuario_id, u.nombre, count(v.vivienda_id) as num_viviendas
from usuario u
join vivienda v 
on u.usuario_id = v.usuario_id
group by u.usuario_id, u.nombre
having count(v.vivienda_id) > 1;

--2 uso de la tabla temporal para el usuario invitado 
Prompt Insertando datos con consultas en tabla temporal

-- Insertando datos para vivienda en venta
insert into estadistica_temp (categoria, costo_promedio, costo_min, 
  costo_max, total_viviendas)
select 'vivienda_venta' as categoria, 
  avg(precio) as costo_promedio,
  min(precio) as costo_min,
  max(precio) as costo_max,
  count(*) as total_viviendas
from vivienda_venta;

-- Insertando datos para vivienda de vacacion
insert into estadistica_temp (categoria, costo_promedio, costo_min, costo_max, total_viviendas)
select 'vivienda_vacacion' as categoria, 
  avg(costo_dia) as costo_promedio,
  min(costo_dia) as costo_min,
  max(costo_dia) as costo_max,
  count(*) as total_viviendas
from vivienda_vacacion;

-- Insertando datos para vivienda en renta
insert into estadistica_temp (categoria, costo_promedio, costo_min, costo_max, total_viviendas)
select 'vivienda_renta' as categoria, 
  avg(renta_mensual) as costo_promedio,
  min(renta_mensual) as costo_min,
  max(renta_mensual) as costo_max,
  count(*) as total_viviendas
from vivienda_renta;

Promp Consulta 2 (tabla temporal)

set linesize window
select * from estadistica_temp;


-- 3. Consulta con OUTER JOIN, subconsulta y uso de sinonimos
--Consulta que obtiene las viviendas con mas servicios y muestra su precio de venta
--su renta mensual y el costo por dia (si aplican) 
Prompt Consulta 3 (left join, subconsultas y sinonimos)

Prompt Iniciando con md_proy_invitado
connect md_proy_invitado/invitado

set linesize window 

select q1.*, vv.precio as precio_venta,vr.renta_mensual,vva.costo_dia
from (
  select v.vivienda_id, v.latitud, v.longitud, count(*) as numero_servicios
  from vivienda v
  join vivienda_tipo_servicio vtp
  on vtp.vivienda_id = v.vivienda_id 
  group by v.vivienda_id, v.latitud, v.longitud
  having count(*) =(
    select max(numero_servicios)
    from (
      select count(*) as numero_servicios 
      from vivienda_tipo_servicio
      group by vivienda_id
    )
  )
) q1
left join vivienda_venta vv
on q1.vivienda_id = vv.vivienda_id
left join vivienda_renta vr
on q1.vivienda_id = vr.vivienda_id
left join vivienda_vacacion vva
on q1.vivienda_id = vva.vivienda_id;

disconnect

Prompt Iniciando con md_proy_admin
connect md_proy_admin/admin

-- 4. Consulta que involucra el uso de una tabla externa
Promp Consulta 4 (tabla externa)
set linesize window 
col vivienda_id format 99
col descripcion format a15
col numero_catastral format a18
col folio_escritura format a18

select q1.*
from (
  select v.vivienda_id,v.latitud, v.longitud, v.descripcion,
    vv.numero_catastral, vv.folio_escritura 
  from vivienda v
  join vivienda_venta vv
  on v.vivienda_id = vv.vivienda_id
 ) q1
join vivienda_venta_ext vext
on vext.numero_catastral = q1.numero_catastral; 


-- 5. Consulta usando álgebra relacional (UNION, INTERSECT, MINUS)
-- Obtener todas las viviendas disponibles para renta o venta, pero no para vacación
Prompt Consulta 5 (algebra relacional)
set linesize window
col vivienda_id format 99
col direccion format a30
SELECT vivienda_id, direccion
FROM vivienda
WHERE es_renta = 1
UNION
SELECT vivienda_id, direccion
FROM vivienda
WHERE es_venta = 1
MINUS
SELECT vivienda_id, direccion
FROM vivienda
WHERE es_vacacion = 1;


-- 6. Consulta que involucra el uso de una vista
Prompt Consulta 6 (vista)

Prompt Iniciando con md_proy_invitado
connect md_proy_invitado/invitado

create or replace synonym v_vivienda_venta_servicio for md_proy_admin.v_vivienda_venta_servicio;

set linesize window
select vivienda_id,numero_catastral,latitud, longitud, precio, (
  select avg(precio)
  from v_vivienda_venta_servicio) as precio_promedio
from v_vivienda_venta_servicio
where precio < (
  select avg(precio)
  from v_vivienda_venta_servicio
)
order by precio asc;

disconnect

Prompt Iniciando con md_proy_admin
connect md_proy_admin/admin

-- 7. Consulta usando JOIN explícito y subconsulta
Prompt Consulta 7 (join explícito y subconsulta)

set linesize window
col vivienda_id format 99
col direccion format a30
col tipo_servicio_id format 99
col servicio_nombre format a20

select v.vivienda_id, v.direccion, t.tipo_servicio_id, 
  t.nombre as servicio_nombre
from vivienda v
join vivienda_tipo_servicio vts 
on v.vivienda_id = vts.vivienda_id
join tipo_servicio t on vts.tipo_servicio_id = t.tipo_servicio_id
where v.vivienda_id in (
  select vivienda_id 
  from vivienda
  where es_renta = 1
);

--
-- Mensaje de éxito
PROMPT Consultas SQL creadas correctamente.
