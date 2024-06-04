--@Autor(es): Miranda Serrano Jaime Manuel
--@Fecha creación: 5/06/2024
--@Descripción: Carga inicial de datos 


-- Inserciones en la tabla status_vivienda 
Prompt Cargando datos de status_vivienda
insert into status_vivienda (status_vivienda_id, clave, descripcion)
  values (status_vivienda_seq.nextval, 'disponible', 'la vivienda está disponible para cualquier tipo de operación (venta, renta, etc.)');
insert into status_vivienda (status_vivienda_id, clave, descripcion)
  values (status_vivienda_seq.nextval, 'en renta', 'la vivienda está actualmente en renta y disponible para ser alquilada.');
insert into status_vivienda (status_vivienda_id, clave, descripcion)
  values (status_vivienda_seq.nextval, 'alquilada', 'la vivienda ha sido alquilada y no está disponible para nuevos inquilinos.');
insert into status_vivienda (status_vivienda_id, clave, descripcion)
  values (status_vivienda_seq.nextval, 'en venta', 'la vivienda está actualmente en venta y disponible para ser comprada.');
insert into status_vivienda (status_vivienda_id, clave, descripcion)
  values (status_vivienda_seq.nextval, 'vendida', 'la vivienda ha sido vendida y ya no está disponible para la venta.');
insert into status_vivienda (status_vivienda_id, clave, descripcion)
  values (status_vivienda_seq.nextval, 'inactiva', 'la vivienda está inactiva y no está disponible para ninguna operación.');


-- Inserciones en la tabla tipo_servicio
Prompt Cargando datos de tipo_servicio
insert into tipo_servicio (tipo_servicio_id, nombre, descripcion, icono)
  values (tipo_servicio_seq.nextval, 'electricidad', 'suministro de electricidad', empty_blob());
insert into tipo_servicio (tipo_servicio_id, nombre, descripcion, icono)
  values (tipo_servicio_seq.nextval, 'agua', 'servicio de agua potable', empty_blob()); 
insert into tipo_servicio (tipo_servicio_id, nombre, descripcion, icono)
  values (tipo_servicio_seq.nextval, 'drenaje', 'servicio de drenaje y alcantarillado', empty_blob());
insert into tipo_servicio (tipo_servicio_id, nombre, descripcion, icono)
  values (tipo_servicio_seq.nextval, 'gas', 'suministro de gas natural', empty_blob());
insert into tipo_servicio (tipo_servicio_id, nombre, descripcion, icono)
  values (tipo_servicio_seq.nextval, 'telefono', 'línea telefónica fija', empty_blob());
insert into tipo_servicio (tipo_servicio_id, nombre, descripcion, icono)
  values (tipo_servicio_seq.nextval, 'television por cable', 'servicio de televisión por cable', empty_blob());
insert into tipo_servicio (tipo_servicio_id, nombre, descripcion, icono)
  values (tipo_servicio_seq.nextval, 'vigilancia', 'servicio de vigilancia y seguridad', empty_blob());
insert into tipo_servicio (tipo_servicio_id, nombre, descripcion, icono)
  values (tipo_servicio_seq.nextval, 'aire acondicionado', 'servicio de aire acondicionado', empty_blob());
insert into tipo_servicio (tipo_servicio_id, nombre, descripcion, icono)
  values (tipo_servicio_seq.nextval, 'recolección de basura', 'servicio de recolección de basura', empty_blob());
insert into tipo_servicio (tipo_servicio_id, nombre, descripcion, icono)
  values (tipo_servicio_seq.nextval, 'limpieza domestica', 'servicio de limpieza doméstica', empty_blob());
insert into tipo_servicio (tipo_servicio_id, nombre, descripcion, icono)
  values (tipo_servicio_seq.nextval, 'piscina', 'uso de piscina comunitaria', empty_blob());
insert into tipo_servicio (tipo_servicio_id, nombre, descripcion, icono)
  values (tipo_servicio_seq.nextval, 'estacionamiento', 'espacio de estacionamiento', empty_blob());
insert into tipo_servicio (tipo_servicio_id, nombre, descripcion, icono)
  values (tipo_servicio_seq.nextval, 'lavandería', 'servicio de lavandería', empty_blob());
insert into tipo_servicio (tipo_servicio_id, nombre, descripcion, icono)
  values (tipo_servicio_seq.nextval, 'seguridad y alarmas', 'sistema de seguridad y alarmas', empty_blob());
insert into tipo_servicio (tipo_servicio_id, nombre, descripcion, icono)
  values (tipo_servicio_seq.nextval, 'calefaccion', 'sistema de calefacción', empty_blob());
insert into tipo_servicio (tipo_servicio_id, nombre, descripcion, icono)
  values (tipo_servicio_seq.nextval, 'internet', 'conexión a internet de alta velocidad', empty_blob());
insert into tipo_servicio (tipo_servicio_id, nombre, descripcion, icono)
  values (tipo_servicio_seq.nextval, 'jardineria', 'servicio de jardinería', empty_blob());
insert into tipo_servicio (tipo_servicio_id, nombre, descripcion, icono)
  values (tipo_servicio_seq.nextval, 'mantenimiento', 'servicio de mantenimiento general', empty_blob());
