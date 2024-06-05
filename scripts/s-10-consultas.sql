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
-- Configuración de ejemplo:
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

SELECT * 
FROM external_vivienda
WHERE es_renta = 1;

-- 8. Consulta usando NATURAL JOIN y subconsulta
SELECT v.vivienda_id, v.direccion, t.tipo_servicio_id, t.nombre AS servicio_nombre
FROM vivienda v
NATURAL JOIN vivienda_tipo_servicio vts
NATURAL JOIN tipo_servicio t
WHERE v.vivienda_id IN (
  SELECT vivienda_id 
  FROM vivienda
  WHERE es_renta = 1
);

-- Mensaje de éxito
PROMPT Consultas SQL creadas correctamente.
