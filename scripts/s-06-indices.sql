--@Autor(es):       Jaime Manuel Miranda Serrano y Diego Adrian Del Razo Sanchez
--@Fecha creación:  05/06/2024
--@Descripción:     Creación de índices para mejorar el rendimiento y asegurar la integridad de datos

-- Índices para mejorar el desempeño de las consultas

-- Índice para la columna usuario_id en la tabla tarjeta_credito
CREATE INDEX tarjeta_credito_usuario_id_ix
ON tarjeta_credito(usuario_id);

-- Índice para la columna vivienda_id en la tabla vivienda_renta_clabe
CREATE INDEX vivienda_renta_clabe_vivienda_id_ix
ON vivienda_renta_clabe(vivienda_id);

-- Índice para la columna clabe_id en la tabla vivienda_renta_clabe
CREATE INDEX vivienda_renta_clabe_clabe_id_ix
ON vivienda_renta_clabe(clabe_id);

-- Índice para la columna vivienda_id en la tabla pago
CREATE INDEX pago_vivienda_id_ix
ON pago(vivienda_id);

-- Índice para la columna usuario_id en la tabla contrato_renta
CREATE INDEX contrato_renta_usuario_id_ix
ON contrato_renta(usuario_id);

-- Índice para la columna vivienda_id en la tabla contrato_renta
CREATE INDEX contrato_renta_vivienda_id_ix
ON contrato_renta(vivienda_id);

-- Índice para la columna usuario_id en la tabla alquiler_calificacion
CREATE INDEX alquiler_calificacion_usuario_id_ix
ON alquiler_calificacion(usuario_id);

-- Índice para la columna alquiler_id en la tabla alquiler_calificacion
CREATE INDEX alquiler_calificacion_alquiler_id_ix
ON alquiler_calificacion(alquiler_id);

-- Índices `Unique` para asegurar la integridad de los datos

-- Índice único para la columna correo en la tabla usuario
CREATE UNIQUE INDEX usuario_correo_uk
ON usuario(correo);

-- Índice único para la columna nombre_usuario en la tabla usuario
CREATE UNIQUE INDEX usuario_nombre_usuario_uk
ON usuario(nombre_usuario);

-- Índice único para la columna numero_catastral en la tabla vivienda_venta
CREATE UNIQUE INDEX vivienda_venta_numero_catastral_uk
ON vivienda_venta(numero_catastral);

-- Índice único para la columna folio_escritura en la tabla vivienda_venta
CREATE UNIQUE INDEX vivienda_venta_folio_escritura_uk
ON vivienda_venta(folio_escritura);

-- Índice único para la columna folio en la tabla alquiler
CREATE UNIQUE INDEX alquiler_folio_uk
ON alquiler(folio);

-- Índice único para la columna folio en la tabla contrato_renta
CREATE UNIQUE INDEX contrato_renta_folio_uk
ON contrato_renta(folio);

-- Índices compuestos `Unique` para validar duplicidad de combinaciones de columnas

-- Índice compuesto único para las columnas usuario_id y numero_tarjeta en la tabla tarjeta_credito
CREATE UNIQUE INDEX tarjeta_credito_usuario_numero_tarjeta_uk
ON tarjeta_credito(usuario_id, numero_tarjeta);

-- Índices basados en funciones para búsquedas case-insensitive

-- Índice basado en función para la columna nombre_usuario en la tabla usuario
CREATE UNIQUE INDEX usuario_nombre_usuario_lower_uk
ON usuario(LOWER(nombre_usuario));

PROMPT Índices creados correctamente
