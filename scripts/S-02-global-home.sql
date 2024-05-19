--@Autor(es):       Diego Del Razo y Jaime Miranda
--@Fecha creación:  17/04/2024
--@Descripción:    Archivo DDL proyecto caso de estudio Global Home

Prompt conectando  ddr_Proyect_GlobalHome
connect ddr_P08_oper/diego

-- 
-- sequence: seq_globalhome
--

create sequence seq_globalhome
    start with 10
    increment by 3
    minvalue 5
    maxvalue 10000000
    cache 3
    noorder
    cycle
;

-- 
-- table: vivienda 
--

create table vivienda(
    vivienda_id    number(10, 0)    not null,
    latitud        number(13, 10)   not null,
    longitud       number(13, 3)    not null,
    direccion      varchar2(40)     not null,
    capacidad      number(2, 0)     not null,
    descripcion    varchar2(2000)   not null,
    es_renta       bit(1)           not null,
    es_venta       bit(1)           not null,
    es_vacacion    bit(1)           not null,
    fecha_status   date             not null,
    constraint vivienda_pk primary key (vivienda_id),
    constraint status_vivienda_vivienda_id_fk foreign key (vivienda_id)
    references status_vivienda(status_vivienda_id)
);

-- 
-- table: vivienda_renta
--

create table vivienda_renta(
    vivienda_id   NUMERIC (10,0) NOT NULL,
    renta_mensual numeric(10,2) not null,
    mes_deposito  numeric(2,0)  not null, 
    constraint vivienda_pk primary key (vivienda_id),
    constraint vivienda_renta_vivenda_id_fk foreign key (vivienda_id)
    references vivienda(vivienda_id)
);


-- 
-- table: vivienda_venta 
--

create table vivienda_venta(
    numero_catastral number(10, 0)     not null,
    folio_escritura  varchar2(40)      not null,
    avaluo_propiedad varbinary(max)    not null,
    importe_comision varchar2(40)      not null,
    precio           numeric(12,2)     not null,
    clabe_pago       numeric(10,0)     not null,
    constraint vivienda_pk primary key (vivienda_id),
    constraint vivienda_venta_vivienda_id_fk foreign key (vivienda_id)
    references vivienda(vivienda_id)
);


-- 
-- table: vivienda_vacacion
--

create table vivienda_vacacion(
    costo_dia    numeric(10,2) not null,
    maximo_dias  numeric(3,0)  not null,
    costo_aparto numeric(8,2)
    constraint vivienda_pk primary key (vivienda_id)
    constraint vivienda__id_fk foreign key (vivienda_id)
    references vivienda_vacacion(vivienda_id)
);

-- 
-- table: status_vivienda 
--

create table status_vivienda(
    status_id      number(10, 0)    not null,
    clave          varchar2(10)     not null,
    descripcion    varchar2(40)     not null,
    constraint status_vivienda_pk primary key (status_id)
);

-- 
-- table: historico_status_vivienda 
--

create table historico_status_vivienda(
    historico_status_vivienda_id numeric(10,0) constraint historico_status_vivienda_pk primary key,
    fecha_status date not null,
    status_vivienda_id numeric(2,0) not null,
    vivienda_id numeric(10,0) not null,
    constraint historico_status_vivienda_status_vivienda_id_fk foreign key (historico_status_vivienda)
    references status_vivienda (status_vivienda_id),
    constraint historico_status_vivienda_vivienda_id_fk foreignkey (vivienda_id)
    references vivienda (vivienda_id)
);

-- 
-- table: tipo_servicio 
--

create table tipo_servicio(
    servicio_id      number(5, 0)    not null,
    nombre           varchar2(40)    not null,
    descripcion      varchar2(200)   not null,
    icono            varbinary       not null,
    constraint tipo_servicio_pk primary key (servicio_id)
);

-- 
-- table: vivienda_servicio 
--

create table vivienda_servicio(
    vivienda_servicio_id      number(10, 0)    not null,
    tipo_servicio_id           number(5,0)      NOT NULL,
    vivienda_id           number(10,0)     NOT NULL,
    constraint vivienda_servicio_id_pk primary key (vivienda_servicio_id)
    CONSTRAINT vivienda_servicio_tipo_servicio_id_fk FOREIGN KEY (tipo_servicio_id)
    REFERENCES tipo_servicio (servicio_id),
    CONSTRAINT vivienda_servicio_vivienda_id_fk FOREIGN KEY (vivienda_id)
    REFERENCES vivienda (vivienda_id)
);

-- 
-- table: vivienda_imagen 
--

create table vivienda_imagen(
    numero_imagen      number(2, 0)    not null,
    vivienda_id        number(10, 0)   not null,
    imagen             varbinary       NOT NULL,
    constraint numero_imagen_pk primary key (numero_imagen,vivienda_id),
    CONSTRAINT vivienda_imagen_vivienda_id_fk FOREIGN KEY (vivienda_id)
    REFERENCES vivienda (vivienda_id)
    
);



-- 
-- table: mensaje 
--

create table mensaje(
    mensaje_id         number(10, 0)    not null,
    titulo             varchar2(40)     not null,
    cuerpo             varchar2(500)    not null,
    mensaje_viejo_id   number(10, 0)    null,
    vivienda_id        number(10, 0)    not null,
    usuario_id         number(10, 0)    not null,
    constraint mensaje_id_pk primary key (mensaje_id),
    CONSTRAINT mensaje_mensaje_viejo_id_fk FOREIGN KEY (mensaje_viejo_id)
    	REFERENCES mensaje(mensaje_id),
    constraint mensaje_vivienda_id_fk foreign key (mensaje_id)
    	references vivienda(vivienda_id),
    CONSTRAINT mensaje_usuario_id_fk FOREIGN KEY (usuario_id)
    	REFERENCES usuario(usuario_id)
    
);

-- 
-- table: usuario 
--

create table usuario(
    usuario_id         number(10, 0)    not null,
    correo             varchar2(150)    not null,
    nombre_usuario     varchar2(10)     not null,
    nombre             varchar2(40)     not null,
    apellido_pat       varchar2(40)     not null,
    apellido_mat       varchar2(40)     NULL,
    contrasenia        varchar2(15)     NOT NULL,
    CONSTRAINT usuario_id_pk PRIMARY KEY (usuario_id)
    
);

-- 
-- table: tarjeta_credito 
--

create table tarjeta_credito(
    usuario_id         number(10, 0)    not null,
    numero_tarjeta     number(16, 0)    not null,
    mes_expiracion     number(2, 0)     not null,
    anio_expiracion    number(4, 0)     not null,
    numero_seguridad   number(4, 0)     not null,
    constraint usuario_id_pk primary key (usuario_id),
    constraint tarjeta_credito_usuario_id_fk foreign key (mensaje_id)
    	references tarjeta_credito(usuario_id),
);

-- 
-- table: vivienda_vacacion_espera 
--

create table vivienda_vacacion_espera(
    vivienda_vacacion_espera_id number(10,0) NOT NULL,
    usuario_id         number(10, 0)    not null,
    vivienda_id        number(10, 0)    not null,
    enviado            bit(1)           not null,
    numero_celular     number(10, 0)    not null,
    constraint vivienda_vacacion_espera_id_pk primary key (vivienda_vacacion_espera_id),
    constraint vivienda_vacacion_espera_vivienda_id_fk foreign key (vivienda_id)
    	references vivienda(vivienda_id),
    CONSTRAINT vivienda_vacacion_espera_usuario_id_fk FOREIGN KEY (usuario_id)
    	REFERENCES usuario(usuario_id)
    
);

-- 
-- table: alquiler_calificacion
--

create table alquiler_calificacion(
    alquiler_calificacion_id number(10,0) NOT NULL,
    usuario_id         number(10, 0)    not null,
    alquiler_id        number(10, 0)    not null,
    calificacion       number(2, 0)     not null,
    fecha              varchar2(40)     not null,
    descripcion        varchar2(200)    not null,
    CONSTRAINT alquiler_calificacion_id_pk primary key (alquiler_calificion_id),
    CONSTRAINT alquiler_calificacion_vivienda_id_fk foreign key (vivienda_id)
    	references vivienda(vivienda_id),
    CONSTRAINT alquiler_calificacion_usuario_id_fk FOREIGN KEY (usuario_id)
    	REFERENCES usuario(usuario_id)
    
);

-- 
-- table: alquiler
--

create table alquiler(
    alquiler_id        number(10, 0)    not null,
    folio              varchar2(8)      not null,
    periodo_ocupacion  varchar2(60)     not null,
    vivienda_id        number(10, 0)    not null,
    usuario_id         number(10, 0)    not null,
    constraint alquiler_id_pk primary key (alquiler_id),
    constraint alquiler_vivienda_id_fk foreign key (vivienda_id)
    	references vivienda(vivienda_id),
    CONSTRAINT alquiler_usuario_id_fk FOREIGN KEY (usuario_id)
    	REFERENCES usuario(usuario_id)
    
);


-- 
-- table: pago
--

create table pago(
    mensualidad        number(3, 0)     not null,
    vivienda_id          number(10, 0)    not null,
    fecha              date             NOT NULL,
    importe            number(10, 2)    not null,
    pdf_deposito       varbinary        NOT NULL,
    constraint mensualidad_pk primary key (mensualidad),
    constraint compra_id_pk primary key (vivienda_id),
    CONSTRAINT vivienda_id_fk FOREIGN KEY (vivienda_id)
    	REFERENCES vivienda(vivienda_id)
    
);

-- 
-- table: contrato_renta
--

create table contrato_renta(
    contrato_renta_id  number(10, 0)    not null,
    folio              varchar2(8)      not null,
    fecha              date             not null,
    pdf                varbinary        NOT null,
    vivienda_id        number(10, 0)    not null,
    usuario_id         number(10, 0)    not null,
    constraint contrato_renta_id_pk primary key (contrato_renta_id),
    constraint contrato_renta_vivienda_id_fk foreign key (vivienda_id)
    	references vivienda(vivienda_id),
    CONSTRAINT contrato_renta_usuario_id_fk FOREIGN KEY (usuario_id)
    	REFERENCES usuario(usuario_id)
    
);



-- 
-- table: clabe
--

create table clabe(
    clabe_id         number(5, 0)     not null,
    clabe            number(18, 0)    not null,
    constraint clabe_id_pk primary key (clabe_id)
    
);

-- 
-- table: vivienda_renta_clabe 
--

create table vivienda_renta_clabe(
    vivienda_renta_clabe_id  number(10, 0)    not null,
    clabe_id            number(5, 0)     not null,
    vivienda_id         number(10, 0)    not null,
    constraint vivienda_renta_clabe_id_pk primary key (vivienda_renta_clabe_id),
    constraint vivienda_renta_clabe_vivienda_id_fk foreign key (vivienda_id)
    	references vivienda(vivienda_id),
    CONSTRAINT vivienda_renta_clabe_clabe_id_fk FOREIGN KEY (clabe_id)
    	REFERENCES clabe(clabe_id)
    
);

        
Prompt Listo!
disconnect