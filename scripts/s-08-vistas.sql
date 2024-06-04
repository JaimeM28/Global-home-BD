--@Autor(es):       Jaime Manuel Miranda Serrano y Diego Adrian Del Razo Sanchez
--@Fecha creación:  03/06/2024
--@Descripción:     Creacion de vistas

--usuarios sin contraseña 
Prompt Creando vista v_usuario
create or replace view v_usuario as 
  select usuario_id,correo,nombre_usuario,nombre, apellido_paterno,
    apellido_materno
  from usuario; 

--usuarios con tarjeta de credito 
Prompt Creando vista v_usuario_tarjeta
create or replace view v_usuario_tarjeta as 
  select u.usuario_id, u.correo, u.nombre_usuario, u.nombre, u.apellido_paterno,
    u.apellido_materno
  from usuario u
  join tarjeta_credito tc
  on u.usuario_id = tc.usuario_id
;

--Informacion de viviendas en venta, ocultando avaluo y folio escritura
Prompt Creando vista v_vivienda_venta_servicio
create or replace view v_vivienda_venta_servicio as
  select v.vivienda_id,v.latitud, v.longitud,v.capacidad, v.descripcion,
    vv.numero_catastral, vv.precio, count(vts.tipo_servicio_id) as numero_servicios
  from vivienda v
  join vivienda_venta vv
  on v.vivienda_id = vv.vivienda_id
  join vivienda_tipo_servicio vts
  on v.vivienda_id = vts.vivienda_id
  group by v.vivienda_id, v.latitud, v.longitud, v.capacidad, v.descripcion,
    vv.numero_catastral, vv.precio
;


