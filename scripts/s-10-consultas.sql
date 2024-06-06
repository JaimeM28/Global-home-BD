-- @Autor(es): Jaime Manuel Miranda Serrano y Diego Adrian Del Razo Sanchez
-- @Fecha creación: 05/06/2024
-- @Descripción: Archivo de consultas que incluye joins, funciones de agregación, álgebra relacional, subconsultas, sinónimos, vistas, tablas temporales y tablas externas.

-- 1. Consulta con INNER JOIN y funciones de agregación (GROUP BY y HAVING)
SELECT u.usuario_id, u.nombre, COUNT(v.vivienda_id) AS num_viviendas
FROM usuario u
INNER JOIN vivienda v ON u.usuario_id = v.usuario_id
GROUP BY u.usuario_id, u.nombre
HAVING COUNT(v.vivienda_id) > 1;

-- 2. Consulta con OUTER JOIN y subconsulta
SELECT v.vivienda_id, v.direccion, s.descripcion AS status_descripcion
FROM vivienda v
LEFT JOIN (
  SELECT status_vivienda_id, descripcion
  FROM status_vivienda
) s ON v.status_vivienda_id = s.status_vivienda_id;

-- 3. Consulta usando álgebra relacional (UNION, INTERSECT, MINUS)
-- Obtener todas las viviendas disponibles para renta o venta, pero no para vacación
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

-- 4. Consulta que involucra el uso de un sinónimo
CREATE SYNONYM usuario_syn FOR usuario;

SELECT * 
FROM usuario_syn
WHERE correo LIKE '%@gmail.com';

-- 5. Consulta que involucra el uso de una vista
CREATE VIEW vivienda_venta_view AS
SELECT v.vivienda_id, v.direccion, vv.precio
FROM vivienda v
INNER JOIN vivienda_venta vv ON v.vivienda_id = vv.vivienda_id;

SELECT * 
FROM vivienda_venta_view
WHERE precio > 1000000;

-- 6. Consulta que involucra el uso de una tabla temporal
CREATE GLOBAL TEMPORARY TABLE temp_vivienda_status AS
SELECT v.vivienda_id, s.descripcion AS status_descripcion
FROM vivienda v
INNER JOIN status_vivienda s ON v.status_vivienda_id = s.status_vivienda_id;

SELECT * 
FROM temp_vivienda_status
WHERE status_descripcion = 'Disponible';

-- 7. Consulta que involucra el uso de una tabla externa
-- Nota: Asumiendo que se ha configurado una tabla externa previamente

--SELECT vv.vivienda_id, vv.numero_catastral, vv.folio_escritura, vv.precio
--FROM vivienda_venta vv
--JOIN vivienda_venta_ext vve
--ON vv.numero_catastral = vve.numero_catastral
--AND vv.folio_escritura = vve.folio_escritura;


-- 8. Consulta usando JOIN explícito y subconsulta
SELECT v.vivienda_id, v.direccion, t.tipo_servicio_id, t.nombre AS servicio_nombre
FROM vivienda v
JOIN vivienda_tipo_servicio vts ON v.vivienda_id = vts.vivienda_id
JOIN tipo_servicio t ON vts.tipo_servicio_id = t.tipo_servicio_id
WHERE v.vivienda_id IN (
  SELECT vivienda_id 
  FROM vivienda
  WHERE es_renta = 1
);

--
-- Mensaje de éxito
PROMPT Consultas SQL creadas correctamente.
