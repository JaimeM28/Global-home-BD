--@Autor(es):       Jaime Manuel Miranda Serrano y Diego Adrian Del Razo Sanchez
--@Fecha creación:  17/04/2024
--@Descripción:     Creacion de entidadades del caso de estudio global home



Prompt Iniciando con md_proy_admin
connect md_proy_admin/admin 

-- 
-- table: usuario 
--

Prompt Creando tabla usuario
create table usuario(
  usuario_id             number(10,0)     not null,
  correo                 varchar2(150)    not null,
  nombre_usuario         varchar2(10)     not null,
  nombre                 varchar2(40)     not null,
  apellido_paterno       varchar2(40)     not null,
  apellido_materno       varchar2(40)     null,
  contrasenia            varchar2(15)     not null,
  constraint usuario_pk primary key (usuario_id),
  constraint usuario_nombre_usuario_chk check(length(nombre_usuario) = 10),
  constraint usuario_contrasenia_chk check(length(contrasenia) between 8 and 10),
  constraint usuario_correo_uk unique(correo)
);

-- 
-- table: status_vivienda 
--

Prompt Creando status_vivienda
create table status_vivienda(
  status_vivienda_id      number(10, 0)    not null,
  clave          varchar2(15)     not null,
  descripcion    varchar2(100)     not null,
  constraint status_vivienda_pk primary key (status_vivienda_id)
);

-- 
-- table: vivienda 
--

Prompt Creando tabla vivienda
create table vivienda(
  vivienda_id    number(10, 0)    not null,
  latitud        number(13, 10)   not null,
  longitud       number(13, 3)    not null,
  direccion      varchar2(400)    not null,
  capacidad      number(2, 0)     not null,
  descripcion    varchar2(2000)   not null,
  es_renta       number(1,0)      not null,
  es_venta       number(1,0)      not null,
  es_vacacion    number(1,0)      not null,
  fecha_status   date             not null,
  status_vivienda_id              not null,
  usuario_id                      not null,
  constraint vivienda_pk primary key (vivienda_id),
  constraint vivienda_status_vivienda_id_fk foreign key(status_vivienda_id)
    references status_vivienda(status_vivienda_id),
  constraint vivienda_usuario_id_fk foreign key (usuario_id)
    references usuario(usuario_id)
);

-- 
-- table: vivienda_renta
--

Prompt Creando tabla vivienda_renta
create table vivienda_renta(
  vivienda_id,
  renta_mensual number(10,2) not null,
  mes_deposito  number(2,0)  not null, 
  constraint vivienda_renta_vivenda_id_fk foreign key (vivienda_id)
    references vivienda(vivienda_id),
  constraint vivienda_renta_pk primary key(vivienda_id)
);


-- 
-- table: vivienda_venta 
--

Prompt Creando tabla vivienda_venta
create table vivienda_venta(
  vivienda_id, 
  numero_catastral        varchar2(18)     not null,
  folio_escritura         varchar2(18)     not null,
  avaluo_propiedad_pdf    blob             not null,
  importe_comision        number(10,2)     not null,
  precio                  number(12,2)     not null,
  clabe_pago              number(18,0)     not null,
  constraint vivienda_venta_vivienda_id_fk foreign key (vivienda_id)
    references vivienda(vivienda_id),
  constraint vivienda_venta_pk primary key (vivienda_id),
  constraint vivienda_venta_numero_catastral_uk unique(numero_catastral),
  constraint vivienda_venta_folio_escritura_uk unique(folio_escritura)
);


-- 
-- table: vivienda_vacacion
--

Prompt Creando tabla vivienda_vacacion
create table vivienda_vacacion(
  vivienda_id,
  costo_dia    number(10,2) not null,
  maximo_dias  number(3,0)  not null,
  costo_aparto number(8,2)  not null,
  constraint vivienda_vacacion_vivienda_id_fk foreign key (vivienda_id)
    references vivienda(vivienda_id),
  constraint vivienda_vacacion_pk primary key (vivienda_id)
);

-- 
-- table: historico_status_vivienda 
--

Prompt Creando tabla historico_status_vivienda
create table historico_status_vivienda(
  historico_status_vivienda_id  number(10,0)  not null,
  fecha_status                  date          not null,
  status_vivienda_id,
  vivienda_id,
  constraint historico_status_vivienda_pk primary key(historico_status_vivienda_id),
  constraint historico_status_vivienda_status_vivienda_id_fk foreign key (status_vivienda_id)
    references status_vivienda(status_vivienda_id),
  constraint historico_status_vivienda_vivienda_id_fk foreign key(vivienda_id)
    references vivienda(vivienda_id)
);

-- 
-- table: tipo_servicio 
--

Prompt Creando tabla tipo_servicio
create table tipo_servicio(
  tipo_servicio_id      number(5, 0)    not null,
  nombre                varchar2(40)    not null,
  descripcion           varchar2(200)   not null,
  icono                 blob            not null,
  constraint tipo_servicio_pk primary key(tipo_servicio_id)
);

-- 
-- table: vivienda_tipo_servicio 
--

Prompt Creando tabla vivienda_tipo_servicio
create table vivienda_tipo_servicio(
  vivienda_tipo_servicio_id      number(10, 0)    not null,
  tipo_servicio_id                                not null,
  vivienda_id                                     not null,
  constraint vivienda_tipo_servicio_pk primary key (vivienda_tipo_servicio_id),
  constraint vivienda_tipo_servicio_tipo_servicio_id_fk foreign key (tipo_servicio_id)
    references tipo_servicio (tipo_servicio_id),
  constraint vivienda_tipo_servicio_vivienda_id_fk foreign key (vivienda_id)
    references vivienda(vivienda_id)
);

-- 
-- table: vivienda_imagen 
--

Prompt Creando tabla vivienda_imagen
create table vivienda_imagen(
  numero_imagen      number(2, 0)    not null,
  vivienda_id,
  imagen             blob            not null,
  constraint vivienda_imagen_vivienda_id_fk foreign key(vivienda_id)
    references vivienda(vivienda_id),
  constraint vivienda_imagen_pk primary key(numero_imagen,vivienda_id)
);

-- 
-- table: mensaje 
--

Prompt Creando tabla mensaje
create table mensaje(
  mensaje_id         number(10, 0)    not null,
  titulo             varchar2(40)     not null,
  cuerpo             varchar2(500)    not null,
  mensaje_viejo_id,
  vivienda_id                         not null,
  usuario_id                          not null,
  constraint mensaje_pk primary key (mensaje_id),
  constraint mensaje_mensaje_viejo_id_fk foreign key(mensaje_viejo_id)
    references mensaje(mensaje_id),
  constraint mensaje_vivienda_id_fk foreign key(vivienda_id)
    references vivienda(vivienda_id),
  constraint mensaje_usuario_id_fk foreign key(usuario_id)
    references usuario(usuario_id)
);

-- 
-- table: tarjeta_credito 
--

Prompt Creando tabla tarjeta_credito
create table tarjeta_credito(
  usuario_id,
  numero_tarjeta     number(16, 0)    not null,
  mes_expiracion     number(2, 0)     not null,
  anio_expiracion    number(4, 0)     not null,
  numero_seguridad   number(4, 0)     not null,
  constraint tarjeta_credito_usuario_id_fk foreign key(usuario_id)
  	references usuario(usuario_id),
  constraint tarjeta_credito_pk primary key (usuario_id),
  constraint tarjeta_credito_numero_seguridad_chk check(length(numero_seguridad)=4),
  constraint tarjeta_credito_mes_expiracion_chk check(mes_expiracion between 1 and 12)
);

-- 
-- table: vivienda_vacacion_espera 
--

Prompt Creando tabla vivienda_vacacion_espera
create table vivienda_vacacion_espera(
  vivienda_vacacion_espera_id number(10,0) not null,
  enviado            number(1,0)           not null,
  numero_celular     number(10, 0)         not null,
  usuario_id                               not null,
  vivienda_id                              not null,
  constraint vivienda_vacacion_espera_pk primary key (vivienda_vacacion_espera_id),
  constraint vivienda_vacacion_espera_vivienda_id_fk foreign key (vivienda_id)
  	references vivienda_vacacion(vivienda_id),
  constraint vivienda_vacacion_espera_usuario_id_fk foreign key (usuario_id)
  	references usuario(usuario_id),
  constraint vivienda_vacacion_espera_numero_celular_chk check
    (length(numero_celular) = 10)
);

-- 
-- table: alquiler
--

Prompt Creando tabla alquiler
create table alquiler(
  alquiler_id        number(10, 0)    not null,
  folio              varchar2(8)      not null,
  fecha_inicio       date             not null,
  dias_ocupacion     number(3,0)      not null,
  fecha_fin as (
    fecha_inicio + dias_ocupacion
  ),
  vivienda_id        number(10, 0)    not null,
  usuario_id         number(10, 0)    not null,
  constraint alquiler_pk primary key(alquiler_id),
  constraint alquiler_vivienda_id_fk foreign key (vivienda_id)
  	references vivienda_vacacion(vivienda_id),
  constraint alquiler_usuario_id_fk foreign key(usuario_id)
  	references usuario(usuario_id),
  constraint alquiler_folio_chk unique(folio)
);

-- 
-- table: alquiler_calificacion
--

Prompt Creando tabla alquiler_calificacion
create table alquiler_calificacion(
  alquiler_calificacion_id number(10,0)           not null,
  calificacion       number(1, 0)                 not null,
  fecha              date         default sysdate not null,
  descripcion        varchar2(200)                not null,
  usuario_id                                      not null,
  alquiler_id                                     not null,
  constraint alquiler_calificacion_pk primary key (alquiler_calificacion_id),
  constraint alquiler_calificacion_alquiler_id_fk foreign key (alquiler_id)
  	references alquiler(alquiler_id),
  constraint alquiler_calificacion_usuario_id_fk foreign key (usuario_id)
  	references usuario(usuario_id),
  constraint alquiler_calificacion_calificacion_chk check(calificacion between 0 and 5)
);

-- 
-- table: pago
--

Prompt Creando tabla pago
create table pago(
  mensualidad        number(3, 0)     not null,
  vivienda_id                         not null,
  fecha              date             not null,
  importe            number(10, 2)    not null,
  deposito_pdf       blob             not null,
  constraint vivienda_fk foreign key (vivienda_id)
  	references vivienda_venta(vivienda_id),
  constraint pago_pk primary key (mensualidad, vivienda_id)
);

-- 
-- table: contrato_renta
--

Prompt Creando tabla contrato_renta
create table contrato_renta(
  contrato_renta_id       number(10, 0)         not null,
  folio                   varchar2(8)           not null,
  fecha                   date default sysdate  not null,
  clausulas_firmas_pdf    blob                  not null,
  vivienda_id                                   not null,
  usuario_id                                    not null,
  constraint contrato_renta_pk primary key(contrato_renta_id),
  constraint contrato_renta_vivienda_id_fk foreign key(vivienda_id)
  	references vivienda_renta(vivienda_id),
  constraint contrato_renta_usuario_id_fk foreign key(usuario_id)
  	references usuario(usuario_id),
  constraint contrato_renta_folio_uk unique(folio)
);



-- 
-- table: clabe
--

Prompt Creando tabla clabe
create table clabe(
  clabe_id         number(5, 0)     not null,
  clabe            number(18, 0)    not null,
  constraint clabe_pk primary key (clabe_id),
  constraint clabe_clabe_chk check(length(clabe)= 18)
);

-- 
-- table: vivienda_renta_clabe 
--

Prompt Creando tabla vivienda_renta_clabe
create table vivienda_renta_clabe(
  vivienda_renta_clabe_id  number(10, 0)    not null,
  clabe_id                                  not null,
  vivienda_id                               not null,
  constraint vivienda_renta_clabe_pk primary key (vivienda_renta_clabe_id),
  constraint vivienda_renta_clabe_vivienda_id_fk foreign key (vivienda_id)
  	references vivienda_renta(vivienda_id),
  constraint vivienda_renta_clabe_clabe_id_fk foreign key (clabe_id)
  	references clabe(clabe_id)
);
  
Prompt Listo!
disconnect