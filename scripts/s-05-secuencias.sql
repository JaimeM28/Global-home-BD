--@Autor(es): Miranda Serrano Jaime Manuel
--@Fecha creación: 5/06/2024
--@Descripción: Creación de secuencias 

Prompt creando secuencia status_vivienda_seq
create sequence status_vivienda_seq 
start with 1
increment by 1
cache 5
order;

Prompt creando secuencia usuario_seq
create sequence usuario_seq 
start with 1
increment by 1
cache 5
order;

Prompt creando secuencia vivienda_seq
create sequence vivienda_seq 
start with 1
increment by 1
cache 5
order;

Prompt creando secuencia historico_status_vivienda_seq
create sequence historico_status_vivienda_seq 
start with 1
increment by 1
cache 5
order;

Prompt creando secuencia tipo_servicio_seq
create sequence tipo_servicio_seq 
start with 1
increment by 1
cache 5
order;

Prompt creando secuencia vivienda_tipo_servicio_seq
create sequence vivienda_tipo_servicio_seq 
start with 1
increment by 1
cache 5
order;

Prompt creando secuencia mensaje_seq
create sequence mensaje_seq 
start with 1
increment by 1
cache 5
order;

Prompt creando secuencia vivienda_vacacion_espera_seq
create sequence vivienda_vacacion_espera_seq 
start with 1
increment by 1
cache 5
order;

Prompt creando secuencia aqluiler_seq
create sequence alquiler_seq 
start with 1
increment by 1
cache 5
order;

Prompt creando secuencia aqluiler_calificacion_seq
create sequence alquiler_calificacion_seq 
start with 1
increment by 1
cache 5
order;

Prompt creando secuencia contrato_renta_seq
create sequence contrato_renta_seq 
start with 1
increment by 1
cache 5
order;

Prompt creando secuencia clabe_seq
create sequence clabe_seq 
start with 1
increment by 1
cache 5
order;

Prompt creando secuencia vivienda_renta_clabe_seq
create sequence vivienda_renta_clabe_seq 
start with 1
increment by 1
cache 5
order;