--@Autor(es): Miranda Serrano Jaime Manuel
--@Fecha creación: 5/06/2024
--@Descripción: Carga inicial de datos 

-- Inserciones en la tabla status_vivienda 
Prompt Insertando datos en status_vivienda
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
Prompt Insertando datos en tipo_servicio
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


-- Inserciones en la tabla clabe
Prompt Insertando datos de clabes
insert into clabe (clabe_id, clabe) values (clabe_seq.nextval,123456789012345678);
insert into clabe (clabe_id, clabe) values (clabe_seq.nextval,234567890123456789);
insert into clabe (clabe_id, clabe) values (clabe_seq.nextval,345678901234567890);
insert into clabe (clabe_id, clabe) values (clabe_seq.nextval,456789012345678901);
insert into clabe (clabe_id, clabe) values (clabe_seq.nextval,567890123456789012);
insert into clabe (clabe_id, clabe) values (clabe_seq.nextval,678901234567890123);
insert into clabe (clabe_id, clabe) values (clabe_seq.nextval,789012345678901234);
insert into clabe (clabe_id, clabe) values (clabe_seq.nextval,890123456789012345);
insert into clabe (clabe_id, clabe) values (clabe_seq.nextval,901234567890123456);
insert into clabe (clabe_id, clabe) values (clabe_seq.nextval,321412312516113542);
insert into clabe (clabe_id, clabe) values (clabe_seq.nextval,987654321098765432);
insert into clabe (clabe_id, clabe) values (clabe_seq.nextval,876543210987654321);
insert into clabe (clabe_id, clabe) values (clabe_seq.nextval,765432109876543210);
insert into clabe (clabe_id, clabe) values (clabe_seq.nextval,654321098765432109);
insert into clabe (clabe_id, clabe) values (clabe_seq.nextval,543210987654321098);
insert into clabe (clabe_id, clabe) values (clabe_seq.nextval,432109876543210987);
insert into clabe (clabe_id, clabe) values (clabe_seq.nextval,321098765432109876);
insert into clabe (clabe_id, clabe) values (clabe_seq.nextval,210987654321098765);
insert into clabe (clabe_id, clabe) values (clabe_seq.nextval,109876543210987654);
insert into clabe (clabe_id, clabe) values (clabe_seq.nextval,198765432109876543);
insert into clabe (clabe_id, clabe) values (clabe_seq.nextval,298765432109876543);
insert into clabe (clabe_id, clabe) values (clabe_seq.nextval,398765432109876543);
insert into clabe (clabe_id, clabe) values (clabe_seq.nextval,498765432109876543);
insert into clabe (clabe_id, clabe) values (clabe_seq.nextval,598765432109876543);
insert into clabe (clabe_id, clabe) values (clabe_seq.nextval,698765432109876543);
insert into clabe (clabe_id, clabe) values (clabe_seq.nextval,798765432109876543);
insert into clabe (clabe_id, clabe) values (clabe_seq.nextval,898765432109876543);
insert into clabe (clabe_id, clabe) values (clabe_seq.nextval,998765432109876543);
insert into clabe (clabe_id, clabe) values (clabe_seq.nextval,123456789098765432);
insert into clabe (clabe_id, clabe) values (clabe_seq.nextval,234567890987654321);
insert into clabe (clabe_id, clabe) values (clabe_seq.nextval,345678901876543210);
insert into clabe (clabe_id, clabe) values (clabe_seq.nextval,456789012765432109);
insert into clabe (clabe_id, clabe) values (clabe_seq.nextval,567890123654321098);
insert into clabe (clabe_id, clabe) values (clabe_seq.nextval,678901234543210987);
insert into clabe (clabe_id, clabe) values (clabe_seq.nextval,789012345432109876);
insert into clabe (clabe_id, clabe) values (clabe_seq.nextval,890123456321098765);
insert into clabe (clabe_id, clabe) values (clabe_seq.nextval,901234567210987654);
insert into clabe (clabe_id, clabe) values (clabe_seq.nextval,421312323123251213);


-- Inserciones en la tabla usario
Prompt Insertando datos en usuario
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval,'jaimemiranda@gmail.com', 'jaime123', 'Jaime', 'Miranda', 'Serrano', 'holamundo');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval,'mroyson0@answers.com', 'sun123', 'Víctor', 'Campos', 'Andrade', '3fG7v0698');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval,'abignal1@seattletimes.com', 'coolguy', 'Juana', 'Ventura', 'Guevara', '5J2KpYIJ6');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval,'ghibling2@smh.com.au', 'sassy89', 'Andrés', 'Hernández', 'Mora', 't6HZDn8XCx');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval,'ytummasutti3@ifeng.com', 'jenny27', 'Daniela', 'González', 'Molina', 'ax55uYsZ');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval,'ablamire4@topsy.com', 'maxpower', 'Mónica', 'Nieto', 'Vega', 'zhBI7bhH');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval,'lvardon5@moonfruit.com', 'skywalke', 'Felipe', 'Cornejo', 'Rey', 'oeDfcJAC78');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval,'dtowner6@about.com', 'bobsmi', 'Guillermo', 'Gallardo', 'Cortés', 'CO18OfBqLd');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval,'sbursnall7@un.org', 'redappl', 'Daniel', 'Ballesteros', 'Santos', '4hH9q9JE6T');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval,'ajohantges8@typepad.com', 'sunnyda', 'Sandra', 'Correa', 'Campos', '27JL3w8I');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'gshanahan9@meetup.com', 'crazyca', 'Nuria', 'Acosta', 'Gamboa', 'Hk7L8W3N');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'bblaxleya@360.cn', 'fastcar', 'Manuel', 'Calderón', 'Cornejo', 'Gzwiz2E3v');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'ppleaseb@51.la', 'greentea', 'Sergio', 'Bautista', 'Lozano', 'qmB57NfF');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'dcaswillc@msu.edu', 'happydog', 'Belén', 'Rodríguez', 'Peña', 'T6333krsQg');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'dleportd@vinaora.com', 'luckyst', 'Eugenia', 'Frías', 'Curiel', '5akW58JfB');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'dmcleane@upenn.edu', 'pinkros', 'Leandro', 'Vega', 'Granados', 'DvFJ8h60O');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'ldruittf@aboutads.info', 'bluesky', 'Nuria', 'Godoy', 'Curiel', 'tF8bFY2vk8');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'bgauvaing@sakura.ne.jp', 'silverfo', 'Sofía', 'Silva', 'Escobar', 'd7QBr1G85');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'swiddocksh@nature.com', 'tinytig', 'Esteban', 'Paredes', 'Pacheco', 'ORN7FkfY6U');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'gwescotti@scientificamerican.com', 'whitewo', 'Penélope', 'Méndez', 'Fonseca', 'M76Ux8BHq');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'kreckej@behance.net', 'goldensu', 'Álvaro', 'Gallardo', 'Ortiz', '18mCn6Jp0b');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'oodoireidhk@oaic.gov.au', 'smartow', 'Virginia', 'Márquez', 'Olmedo', 'l8qu59dUJq');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'adifriscol@ovh.net', 'wildbea', 'Paula', 'Escamilla', 'Alarcón', 'WPZ410of');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'sfittallm@salon.com', 'sleepyc', 'Eugenia', 'Gil', 'Benavides', 'e9ArM1ZPz4');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'cscogginsn@fastcompany.com', 'magich', 'Olivia', 'Casas', 'Cabrera', 'tmAlVnEP7N');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'nnicklino@fotki.com', 'superf', 'Zara', 'Torres', 'Granados', 'Sqe2muKi');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'jjelphsp@51.la', 'speedy', 'Pedro', 'Andrade', 'Santana', 'DhVC4K2aNF');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'mvasyutichevq@ft.com', 'funkym', 'Manuel', 'Arroyo', 'Iglesias', 'ZsGpa0laLB');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'aampsr@nba.com', 'bravel', 'Álvaro', 'Esteban', 'Villar', 'NdN4hq2F');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'abrooks@tumblr.com', 'gigglyp', 'Isabel', 'Moya', 'Estrada', 'HXvJZuE8');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'salnert@mozilla.com', 'sunnyb', 'Leticia', 'Clemente', 'Armas', 'XGA1X7PU');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'kstrelitzu@google.fr', 'wisefr', 'Fernanda', 'Vega', 'Montes', 'ZXpZM1X9Z');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'hmurrowv@noaa.gov', 'coolwa', 'María', 'Maldonado', 'Ortiz', 'HUG0X4rR');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'salloisiw@over-blog.com', 'fastch', 'Diana', 'Duarte', 'Camacho', '7QJY8592S5');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'wgunnellx@wikimedia.org', 'quickfo', 'Mario', 'Maldonado', 'Fonseca', 'V9UDb4Wh');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'dbuncombey@nsw.gov.au', 'happysn', 'Manuel', 'Collado', 'Castro', '9aIgc6P12e');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'rbiddissz@walmart.com', 'craftyb', 'Nicolás', 'León', 'Herrera', 'pQ7m9Mx3X');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'ebilam10@xrea.com', 'dancin', 'Omar', 'Bernal', 'Escamilla', '92O4geJvg');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'cgullyes11@printfriendly.com', 'rosyche', 'Laura', 'Pastor', 'Bautista', 'EcCAcNg2');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'ngemeau12@uiuc.edu', 'fluffyc', 'Samuel', 'Santiago', 'Benítez', 'DA17Hx2him');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'vabramovicz13@ibm.com', 'shinyge', 'Pablo', 'Esparza', 'Campos', '3FbTMxUl');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'wwinscomb14@timesonline.co.uk', 'zippyb', 'Antonio', 'Navarro', 'Campos', '63luiG0CJ');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'fhadwen15@nasa.gov', 'jollyje', 'Miguel', 'Castro', 'Montes', 'ieBwk6M7');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'gcaberas16@google.com.au', 'luckyle', 'Patricia', 'Galván', 'Castro', 'jht2F0OM');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'ibyres17@xing.com', 'merryma', 'Pilar', 'Vidal', 'Soler', 'ZjizE9hZ');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'pfirebrace18@a8.net', 'bouncya', 'Andrés', 'Fernández', 'Iglesias', 'UEc972PoFJ');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'msykes19@noaa.gov', 'quietm', 'Joaquín', 'Rey', 'Alarcón', 'Tls2NMmP');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'kbitchener1a@pcworld.com', 'sweetp', 'Beatriz', 'Delgado', 'Correa', 'Ky3l7SWC1');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'drother1b@360.cn', 'gigglyg', 'Zacarías', 'Esteban', 'Haro', 'riivZ5Ew8');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'jcaldeiro1c@google.com.br', 'speedys', 'Esteban', 'Coronado', 'Coronado', 'l071c9Bf');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'hthayre1d@multiply.com', 'happyh', 'Eduardo', 'Estrada', 'Parra', 'ZwHYX9gx');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'ggreenhowe1e@comsenz.com', 'tinyel', 'Susana', 'Chávez', 'Serrano', 'OlL2MFz9');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'tdanielou1f@economist.com', 'goldenb', 'Tomás', 'Benavides', 'Aranda', 'f5s0xk2aD');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'awohlers1g@shareasale.com', 'sleepyp', 'Karina', 'Alonso', 'Contreras', 'Bo2Sg66zNC');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'jgrzegorczyk1h@symantec.com', 'dandyl', 'Zara', 'García', 'Soler', '7uur9058n');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'mamsden1i@fema.gov', 'tinyba', 'Pedro', 'Alarcón', 'Castro', 'M1y96LXr');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'gtregust1j@liveinternet.ru', 'curiou', 'Marcos', 'Paredes', 'Arias', 'ODO6xKl0');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'gmckinn1k@gizmodo.com', 'funkyf', 'Virginia', 'Camacho', 'Soler', '7v54z6jBC');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'aast1l@freewebs.com', 'smartbe', 'Rubén', 'Alonso', 'Garrido', '0P1I6PWze5');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'bwims1m@edublogs.org', 'jumpyja', 'Bruno', 'Chávez', 'Torres', 'Jt9tY7Y9');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'jneads1n@ow.ly', 'quickw', 'Salvador', 'Fernández', 'Moya', '1Mg2bDjX3');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'gcastell1o@is.gd', 'happy23', 'Facundo', 'Pardo', 'Castañeda', 'mTFpjzu5');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'gtenman1p@xing.com', 'wilyw', 'Jonás', 'Martínez', 'Hernández', 'BCpJVV3B');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'obranscomb1q@stumbleupon.com', 'braveb', 'Miguel', 'Gil', 'Ayala', 'M20O6G0S');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'rdavidofski1r@dmoz.org', 'luckyd', 'Claudia', 'Mármol', 'Estrada', 'J870WpTP6');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'pcolloby1s@photobucket.com', 'sweet', 'Alicia', 'Pérez', 'Marín', 'b5LPc8m5');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'sickowics1t@opera.com', 'zest', 'Felipe', 'Vega', 'Parra', '4RmCI7n03');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'egilliland1u@bloglines.com', 'shysn', 'Leandro', 'Estévez', 'Ruiz', '6JU9wtN4r');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'llosano1v@technorati.com', 'sunny', 'Josué', 'Gamboa', 'Bernal', 'pXWaHFsPZl');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'ahattiff1w@boston.com', 'speedy23', 'Fernando', 'Silva', 'Estrada', 'LNhVosYj');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'pmackett1x@apache.org', 'bouncy', 'Marcos', 'Márquez', 'León', 'r47FQTjd');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'nbarca1y@tinyurl.com', 'cleverb', 'Jacobo', 'Cervantes', 'Delgado', 'Lb71UxlK3');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'pmarchant1z@census.gov', 'crafteo', 'Leonardo', 'Collado', 'Camacho', '4U779g7nS');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'lglavis20@whitehouse.gov', 'bright', 'Elena', 'Alarcón', 'Bravo', 'in5583385');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'trintoul21@imdb.com', 'sleepy', 'Magdalena', 'Delgado', 'Villar', 'cX5T0P8lH');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'acuel22@ted.com', 'giggly', 'Sandra', 'Ayala', 'Herrera', '0181V8oj');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'pwhate23@aol.com', 'potaxie', 'Rebeca', 'Correa', 'Moreno', 'hholb8MJ');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'wfilip24@imageshack.us', 'tiny', 'Pablo', 'Gallardo', 'Castro', 'ce026Nl8');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'dbotterman25@imgur.com', 'toreto2', 'Guillermo', 'Collado', 'Castañeda', 'Od75RdK9Q');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'ajenkison26@last.fm', 'magical', 'Gerardo', 'Gamboa', 'Blanco', 'EOra5osr');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'cchampain27@youku.com', 'sweetd', 'Florencia', 'Suárez', 'Castro', 'Y0TSsrhURF');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'zlandman28@google.pl', 'wisewh', 'María', 'Pardo', 'Herrera', '7f4cAKzkLI');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'jleftley29@networkadvertising.org', 'jolly', 'Antonio', 'Del Valle', 'Maldonado', 'eJekmWwACY');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'rstares2a@yandex.ru', 'merry', 'Juan', 'Vargas', 'Mora', 'BeVFQv1C');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'hflegg2b@linkedin.com', 'speedy1', 'Martín', 'Ortega', 'Granados', 'JvizZ7dx6');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'hstonier2c@netlog.com', 'funny', 'Pablo', 'Santiago', 'Romero', '0S73m7Sj');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'lrickford2d@prnewswire.com', 'shiny', 'Isaac', 'Vega', 'Pérez', 'Uf595153V');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'bpembery2e@yellowpages.com', 'dapper', 'Marta', 'Gamboa', 'Serrano', '7kkUmBd8b6');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'opennicott2f@g.co', 'tinyt', 'Ximena', 'Ortiz', 'Esteban', '71QZrzEv');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'bbattelle2g@fastcompany.com', 'fuzzy', 'Julián', 'Iglesias', 'Ramos', '7if0o8KgP');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'cheskey2h@cbc.ca', 'quick', 'Mario', 'Acosta', 'Navarro', 'Dr7DWwHK9');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'ejentzsch2i@ucsd.edu', 'topglobal', 'Magdalena', 'Andrade', 'Del Valle', '3UdTb2nrOL');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'aanscombe2j@usatoday.com', 'slender', 'Sergio', 'Garrido', 'Jiménez', 'Ne50sPh8');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'agerrad2k@nytimes.com', 'fastf', 'Francisco', 'Vega', 'Clemente', '73d58J68ss');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'ggreenstock2l@whitehouse.gov', 'jumpy', 'Dolores', 'Romero', 'Bonilla', 'hwkn1Oq6Z1');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'zfolliss2m@va.gov', 'amlo4t', 'Mario', 'Blanco', 'Carrasco', 'Fq6WVc2j');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'cduggan2n@arizona.edu', 'crafty', 'Sergio', 'Castañeda', 'Sanz', 'tQ9U1Dt7Gy');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'dgolborne2o@tmall.com', 'curioso', 'Natalia', 'Pacheco', 'Soler', 'S6127gpM6');
insert into usuario (usuario_id, correo, nombre_usuario, nombre, apellido_paterno, apellido_materno, contrasenia) values (usuario_seq.nextval, 'jgodden2p@craigslist.org', 'steve', 'Paola', 'Moreno', 'Marín', 'icB3PQ4YTn');

-- Inserciones en la tabla vivienda
Prompt Insertando datos en vivienda
--VENTA
Prompt VENTA
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 22.517585, 113.39277, '32025 Caliangt Avenue', 20, 'Casa con jardín zen y estanque', 0, 0, 1, to_date('23/10/2021','dd/mm/yyyy'), 4, 27);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 10.630446, 122.977964, '80 Erie Center', 3, 'Casa con jardín zen y estanque', 0, 0, 1, to_date('19/09/2018','dd/mm/yyyy'), 4, 12);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 51.653437, 39.183897, '39 Monica Drive', 16, 'Vivienda en urbanización privada', 0, 0, 1, to_date('05/03/2023','dd/mm/yyyy'), 4, 40);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, -22.9106154, 44.5266466, '733 Pleasure Park', 7, 'Apartamento con cocina equipada y parking', 0, 0, 1, to_date('05/07/2018','dd/mm/yyyy'), 4, 28);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 25.4166153, -100.1591213, '6076 Lien Avenue', 15, 'Penthouse con terraza y vista al mar', 0, 0, 1, to_date('19/04/2020','dd/mm/yyyy'), 3, 14);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 46.3899032, 16.6974271, '49849 Steensland Pass', 7, 'Residencia con patio y barbacoa', 0, 0, 1, to_date('28/05/2019','dd/mm/yyyy'), 4, 42);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 58.703557, 14.1362521, '6 Iowa Junction', 20, 'Residencia con patio y barbacoa', 0, 0, 1, to_date('20/02/2021','dd/mm/yyyy'), 3, 40);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 17.0852216, 120.8681069, '2 Riverside Trail', 7, 'Duplex con piscina comunitaria', 0, 0, 1, to_date('07/06/2020','dd/mm/yyyy'), 3, 25);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 14.622814, -61.030174, '7 Main Point', 2, 'Apartamento acogedor cerca de la playa', 0, 0, 1, to_date('17/04/2019','dd/mm/yyyy'), 3, 12);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 25.038296, 102.664376, '79356 Vernon Parkway', 20, 'Loft moderno en barrio artístico', 0, 0, 1, to_date('30/06/2022','dd/mm/yyyy'), 4, 9);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, -6.90572, 109.01489, '1 Lawn Avenue', 7, 'Estudio luminoso con balcón', 0, 0, 1, to_date('28/09/2022','dd/mm/yyyy'), 4, 15);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 18.5049101, -69.8296974, '8 Roxbury Lane', 2, 'Apartamento con cocina equipada y parking', 0, 0, 1, to_date('13/12/2019','dd/mm/yyyy'), 3, 2);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 33.5590518, 71.4915293, '14 Carpenter Trail', 17, 'Casa de campo con vistas panorámicas', 0, 0, 1, to_date('16/06/2021','dd/mm/yyyy'), 3, 36);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 45.5599168, -73.2004857, '30710 Valley Edge Hill', 2, 'Penthouse con terraza y vista al mar', 0, 0, 1, to_date('16/09/2018','dd/mm/yyyy'), 4, 7);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 49.7365816, 19.4856654, '22000 Union Point', 5, 'Casa familiar con cuatro habitaciones', 0, 0, 1, to_date('03/01/2023','dd/mm/yyyy'), 3, 45);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, -0.5388381, 37.4596409, '3885 Manitowish Lane', 19, 'Casa adosada en zona tranquila', 0, 0, 1, to_date('23/05/2022','dd/mm/yyyy'), 4, 40);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 7.4064275, -7.5572231, '07 Hallows Trail', 3, 'Casa rústica con chimenea', 0, 0, 1, to_date('28/01/2019','dd/mm/yyyy'), 3, 25);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, -6.8008183, 107.1781769, '48459 Service Center', 3, 'Apartamento con cocina equipada y parking', 0, 0, 1, to_date('18/11/2022','dd/mm/yyyy'), 3, 40);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, -7.6611598, 109.7976584, '73 Quincy Plaza', 3, 'Casa con acceso directo al lago', 0, 0, 1, to_date('15/08/2020','dd/mm/yyyy'), 4, 45);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, -23.3058194, -47.1367011, '10 Lyons Hill', 4, 'Penthouse con terraza y vista al mar', 0, 0, 1, to_date('20/08/2021','dd/mm/yyyy'), 3, 5);
--RENTA 
Prompt RENTA
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 55.0775116, 24.2604924, '95563 Sloan Crossing', 10, 'Casa con jardín zen y estanque', 1, 0, 0, to_date('09/01/2021','dd/mm/yyyy'), 3, 28);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 28.65638, 121.42076, '459 Anzinger Court', 2, 'Casa con acceso directo al lago', 1, 0, 0, to_date('12/12/2021','dd/mm/yyyy'), 4, 16);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, -6.8008183, 107.1781769, '90 Harbort Crossing', 7, 'Duplex con piscina comunitaria', 1, 0, 0, to_date('01/09/2020','dd/mm/yyyy'), 3, 28);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 54.6567593, 32.1804491, '00070 Springs Plaza', 7, 'Chalet de lujo con cinco dormitorios', 1, 0, 0, to_date('28/12/2019','dd/mm/yyyy'), 4, 21);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 49.3304143, 17.2726367, '284 Bultman Crossing', 18, 'Chalet de lujo con cinco dormitorios', 1, 0, 0, to_date('26/09/2020','dd/mm/yyyy'), 4, 32);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 35.8939566, 117.9249002, '5380 5th Alley', 19, 'Casa rústica con chimenea', 1, 0, 0, to_date('13/05/2019','dd/mm/yyyy'), 3, 34);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, -34.4765431, -58.7226377, '3375 Harbort Way', 14, 'Apartamento acogedor cerca de la playa', 1, 0, 0, to_date('25/07/2022','dd/mm/yyyy'), 4, 37);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 30.04952, 101.96231, '0 Bunker Hill Lane', 10, 'Casa familiar con cuatro habitaciones', 1, 0, 0, to_date('16/03/2023','dd/mm/yyyy'), 3, 20);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 42.4782102, 78.3955986, '07656 Heath Lane', 19, 'Casa familiar con cuatro habitaciones', 1, 0, 0, to_date('13/11/2019','dd/mm/yyyy'), 4, 40);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, -5.0938488, -81.0962172, '1346 Graedel Way', 11, 'Casa familiar con cuatro habitaciones', 1, 0, 0, to_date('01/08/2021','dd/mm/yyyy'), 4, 40);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 22.54921, 114.103143, '557 Blackbird Court', 10, 'Chalet en zona montañosa', 1, 0, 0, to_date('01/02/2019','dd/mm/yyyy'), 3, 29);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, -25.4809333, -64.9751483, '9 Northridge Way', 7, 'Villa con jardín y garaje', 1, 0, 0, to_date('25/03/2023','dd/mm/yyyy'), 3, 20);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, -14.8518869, -66.7486446, '14 Eggendart Avenue', 15, 'Casa rústica con chimenea', 1, 0, 0, to_date('16/08/2020','dd/mm/yyyy'), 4, 7);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 22.354385, 110.947043, '592 Beilfuss Park', 7, 'Chalet de lujo con cinco dormitorios', 1, 0, 0, to_date('07/08/2020','dd/mm/yyyy'), 3, 3);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 40.3984011, -8.7050402, '7573 1st Junction', 15, 'Apartamento con cocina equipada y parking', 1, 0, 0, to_date('29/05/2020','dd/mm/yyyy'), 3, 38);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, -7.666671, 111.8359916, '993 Corscot Alley', 19, 'Villa con jardín y garaje', 1, 0, 0, to_date('04/09/2021','dd/mm/yyyy'), 3, 9);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 41.3458989, 19.5657349, '0 Charing Cross Trail', 13, 'Residencia con patio y barbacoa', 1, 0, 0, to_date('25/01/2019','dd/mm/yyyy'), 3, 17);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 26.3358903, 127.875104, '07409 Oxford Circle', 18, 'Casa con acceso directo al lago', 1, 0, 0, to_date('23/12/2018','dd/mm/yyyy'), 3, 21);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 43.7041519, 43.3264539, '9931 Shelley Road', 4, 'Casa con jardín zen y estanque', 1, 0, 0, to_date('08/09/2021','dd/mm/yyyy'), 3, 39);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, -143.7041519, -33.432524, '314 Lomas Grande', 4, 'Casa familiar con cuatro habitaciones', 1, 0, 0, to_date('03/02/2020','dd/mm/yyyy'), 3, 1);
--VACACION
Prompt VACACION
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 10.3827887, -9.3118282, '7 Eagle Crest Point', 3, 'Residencia con patio y barbacoa', 0, 1, 0, to_date('27/10/2023','dd/mm/yyyy'), 3, 6);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 40.4095521, 49.7653156, '82 Maywood Pass', 20, 'Residencia con patio y barbacoa', 0, 1, 0, to_date('07/03/2023','dd/mm/yyyy'), 1, 8);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, -23.1096871, -47.7097103, '9 Swallow Place', 15, 'Duplex con piscina comunitaria', 0, 1, 0, to_date('27/12/2019','dd/mm/yyyy'), 3, 27);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 45.2110039, 14.5569253, '46054 Mariners Cove Point', 20, 'Loft moderno en barrio artístico', 0, 1, 0, to_date('05/05/2021','dd/mm/yyyy'), 3, 37);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 9.8759581, -84.0375168, '7834 Buell Terrace', 5, 'Casa con acceso directo al lago', 0, 1, 0, to_date('30/08/2021','dd/mm/yyyy'), 1, 45);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 59.379366, 13.503977, '67268 Trailsway Junction', 16, 'Casa adosada en zona tranquila', 0, 1, 0, to_date('06/05/2019','dd/mm/yyyy'), 3, 4);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 43.1619639, 45.1982495, '80 Algoma Drive', 12, 'Duplex con piscina comunitaria', 0, 1, 0, to_date('02/03/2021','dd/mm/yyyy'), 1, 42);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 34.4981065, 135.4073102, '021 Evergreen Lane', 18, 'Casa rústica con chimenea', 0, 1, 0, to_date('03/12/2017','dd/mm/yyyy'), 3, 44);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 26.641315, 100.222545, '9169 High Crossing Lane', 15, 'Casa rústica con chimenea', 0, 1, 0, to_date('10/08/2023','dd/mm/yyyy'), 1, 22);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 54.2825201, 30.990449, '26 Logan Pass', 20, 'Apartamento moderno en el centro de la ciudad', 0, 1, 0, to_date('18/03/2023','dd/mm/yyyy'), 3, 43);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 4.8271607, -75.6499025, '3 Bunting Plaza', 2, 'Apartamento acogedor cerca de la playa', 0, 1, 0, to_date('25/02/2021','dd/mm/yyyy'), 3, 18);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 50.4534011, 36.8469573, '8406 Scoville Alley', 5, 'Chalet en zona montañosa', 0, 1, 0, to_date('25/06/2018','dd/mm/yyyy'), 3, 28);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, -12.1339689, -38.4211223, '8 Colorado Street', 11, 'Vivienda en urbanización privada', 0, 1, 0, to_date('16/03/2021','dd/mm/yyyy'), 1, 9);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 9.3226016, 13.393389, '885 Eliot Point', 14, 'Casa adosada en zona tranquila', 0, 1, 0, to_date('17/09/2019','dd/mm/yyyy'), 3, 6);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 31.6903638, -106.4245478, '96 Saint Paul Hill', 6, 'Chalet en zona montañosa', 0, 1, 0, to_date('22/10/2019','dd/mm/yyyy'), 3, 39);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 26.6761327, 31.4945887, '4396 Pawling Avenue', 13, 'Casa rústica con chimenea', 0, 1, 0, to_date('02/01/2019','dd/mm/yyyy'), 3, 39);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 45.271697, -66.0549467, '7561 Anzinger Lane', 9, 'Apartamento moderno en el centro de la ciudad', 0, 1, 0, to_date('03/09/2023','dd/mm/yyyy'), 1, 12);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, -8.5774, 119.0069, '88570 Waubesa Street', 12, 'Chalet de lujo con cinco dormitorios', 0, 1, 0, to_date('03/11/2021','dd/mm/yyyy'), 1, 29);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 31.297414, 121.450653, '5 Lakewood Gardens Point', 3, 'Amplia casa con jardín y piscina', 0, 1, 0, to_date('15/05/2021','dd/mm/yyyy'), 3, 37);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 6.4387946, 100.1947477, '13158 Northland Avenue', 15, 'Loft moderno en barrio artístico', 0, 1, 0, to_date('17/01/2023','dd/mm/yyyy'), 3, 3);
--VACACION-RENTA
Prompt VACACION- RENTA
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 11.8088575, -0.5352356, '5335 Clemons Crossing', 19, 'Amplia casa con jardín y piscina', 1, 1, 0, to_date('09/06/2017','dd/mm/yyyy'), 3, 35);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 33.347316, 120.16366, '70164 Randy Point', 20, 'Loft moderno en barrio artístico', 1, 1, 0, to_date('08/12/2022','dd/mm/yyyy'), 3, 24);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, -2.4944583, 106.3228338, '137 Bunker Hill Point', 10, 'Casa de campo con vistas panorámicas', 1, 1, 0, to_date('11/10/2022','dd/mm/yyyy'), 1, 19);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 46.013979, 83.663731, '5 Surrey Crossing', 7, 'Estudio luminoso con balcón', 1, 1, 0, to_date('12/04/2020','dd/mm/yyyy'), 2, 21);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 45.030617, 21.0613022, '72901 Porter Avenue', 19, 'Casa adosada en zona tranquila', 1, 1, 0, to_date('10/02/2020','dd/mm/yyyy'), 3, 37);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 50.255556, 136.640833, '6 Bunting Crossing', 11, 'Penthouse con terraza y vista al mar', 1, 1, 0, to_date('03/12/2020','dd/mm/yyyy'), 1, 43);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 47.0163969, -68.1430029, '1110 Stone Corner Pass', 18, 'Apartamento moderno en el centro de la ciudad', 1, 1, 0, to_date('10/03/2021','dd/mm/yyyy'), 2, 10);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 22.8387258, 112.3810562, '72 Logan Junction', 7, 'Loft moderno en barrio artístico', 1, 1, 0, to_date('12/05/2020','dd/mm/yyyy'), 6, 21);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 10.6936663, 122.5655726, '60 Hooker Trail', 7, 'Casa de campo con vistas panorámicas', 1, 1, 0, to_date('04/03/2021','dd/mm/yyyy'), 1, 11);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 53.9867, 20.39746, '64887 Sutherland Parkway', 15, 'Residencia con patio y barbacoa', 1, 1, 0, to_date('11/02/2020','dd/mm/yyyy'), 2, 1);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, -6.5951, 111.0566, '9935 Sunnyside Avenue', 3, 'Residencia con patio y barbacoa', 1, 1, 0, to_date('03/05/2018','dd/mm/yyyy'), 3, 20);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 11.5951195, 109.0364038, '965 Luster Point', 13, 'Casa de campo con vistas panorámicas', 1, 1, 0, to_date('12/01/2021','dd/mm/yyyy'), 2, 32);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 9.4362547, 123.1893864, '12625 Corry Drive', 7, 'Penthouse con terraza y vista al mar', 1, 1, 0, to_date('05/11/2020','dd/mm/yyyy'), 1, 6);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 13.3913889, -16.6525, '0995 Eagle Crest Center', 6, 'Apartamento moderno en el centro de la ciudad', 1, 1, 0, to_date('01/10/2023','dd/mm/yyyy'), 6, 33);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 29.385634, -98.5254159, '2 Shopko Street', 10, 'Apartamento acogedor cerca de la playa', 1, 1, 0, to_date('10/09/2020','dd/mm/yyyy'), 6, 43);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 39.7380371, -105.0265195, '5 Independence Hill', 17, 'Chalet en zona montañosa', 1, 1, 0, to_date('04/08/2018','dd/mm/yyyy'), 3, 38);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 57.14667, 33.10753, '8702 Buena Vista Crossing', 18, 'Apartamento acogedor cerca de la playa', 1, 1, 0, to_date('10/05/2020','dd/mm/yyyy'), 1, 14);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, -25.283333, -69.766667, '4 Londonderry Drive', 6, 'Casa con acceso directo al lago', 1, 1, 0, to_date('02/05/2020','dd/mm/yyyy'), 1, 27);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, -13.4272965, -76.1642459, '459 Paget Drive', 9, 'Apartamento acogedor cerca de la playa', 1, 1, 0, to_date('11/08/2022','dd/mm/yyyy'), 3, 45);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 21.6936233, -78.6313624, '0 Prairie Rose Center', 3, 'Vivienda en urbanización privada', 1, 1, 0, to_date('10/01/2018','dd/mm/yyyy'), 3, 29);
--VACACION-VENTA
Prompt VACACION-VENTA
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 27.2711, 116.580186, '61 Bayside Street', 8, 'Amplia casa con jardín y piscina', 0, 1, 1, to_date('05/07/2022','dd/mm/yyyy'), 1, 30);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 14.2157645, 109.1166566, '6 Toban Plaza', 6, 'Duplex con piscina comunitaria', 0, 1, 1, to_date('01/03/2020','dd/mm/yyyy'), 6, 1);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 46.5720029, 16.2877346, '0 Spenser Trail', 17, 'Villa con jardín y garaje', 0, 1, 1, to_date('12/09/2018','dd/mm/yyyy'), 5, 15);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 44.5943255, 0.057855, '8 Messerschmidt Place', 9, 'Chalet de lujo con cinco dormitorios', 0, 1, 1, to_date('02/05/2019','dd/mm/yyyy'), 6, 8);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 34.1228075, 134.5990156, '1005 Arapahoe Trail', 19, 'Residencia con patio y barbacoa', 0, 1, 1, to_date('03/10/2021','dd/mm/yyyy'), 6, 26);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, -6.4937893, -43.7039903, '270 Prentice Lane', 4, 'Chalet en zona montañosa', 0, 1, 1, to_date('03/08/2021','dd/mm/yyyy'), 5, 21);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 47.7016459, 37.4209877, '769 Sherman Hill', 7, 'Casa de campo con vistas panorámicas', 0, 1, 1, to_date('02/09/2019','dd/mm/yyyy'), 4, 11);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 27.734109, 112.535036, '25190 Eliot Alley', 16, 'Chalet de lujo con cinco dormitorios', 0, 1, 1, to_date('03/12/2020','dd/mm/yyyy'), 5, 5);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 13.034203, 123.449929, '28311 Kim Terrace', 8, 'Apartamento acogedor cerca de la playa', 0, 1, 1, to_date('04/02/2020','dd/mm/yyyy'), 4, 16);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 13.9751921, -89.7544231, '21792 Scott Way', 15, 'Amplia casa con jardín y piscina', 0, 1, 1, to_date('10/04/2021','dd/mm/yyyy'), 6, 40);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 32.4237461, -104.2655282, '733 Loomis Trail', 5, 'Casa rústica con chimenea', 0, 1, 1, to_date('03/04/2019','dd/mm/yyyy'), 1, 4);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 41.117245, 121.128279, '859 Warbler Hill', 12, 'Duplex con piscina comunitaria', 0, 1, 1, to_date('09/04/2021','dd/mm/yyyy'), 1, 7);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 45.347492, 130.642301, '7 Parkside Circle', 10, 'Duplex con piscina comunitaria', 0, 1, 1, to_date('02/12/2018','dd/mm/yyyy'), 3, 28);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 49.7575973, 16.6635314, '38259 Cambridge Lane', 11, 'Chalet en zona montañosa', 0, 1, 1, to_date('02/10/2021','dd/mm/yyyy'), 4, 2);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, -7.2360801, 106.7175669, '6413 Debra Parkway', 19, 'Apartamento moderno en el centro de la ciudad', 0, 1, 1, to_date('10/05/2021','dd/mm/yyyy'), 5, 3);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 33.868434, 113.054801, '2167 Pankratz Court', 16, 'Chalet de lujo con cinco dormitorios', 0, 1, 1, to_date('03/06/2017','dd/mm/yyyy'), 6, 26);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, -34.5595896, -58.6022596, '173 Brown Parkway', 9, 'Estudio luminoso con balcón', 0, 1, 1, to_date('04/07/2021','dd/mm/yyyy'), 5, 43);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, -7.1550724, 108.1498006, '2 Bluejay Point', 8, 'Duplex con piscina comunitaria', 0, 1, 1, to_date('10/08/2020','dd/mm/yyyy'), 4, 42);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 45.0386871, 3.103119, '6 Twin Pines Street', 16, 'Chalet de lujo con cinco dormitorios', 0, 1, 1, to_date('01/09/2020','dd/mm/yyyy'), 1, 32);
insert into vivienda (vivienda_id, latitud, longitud, direccion, capacidad, descripcion, es_renta, es_vacacion, es_venta, fecha_status, status_vivienda_id, usuario_id) values (vivienda_seq.nextval, 13.952977, 121.341718, '1 Scofield Drive', 3, 'Loft moderno en barrio artístico', 0, 1, 1, to_date('10/06/2019','dd/mm/yyyy'), 6, 13);

--Inserciones en la tabla vivienda_imagen
Prompt PL/SQL insertando datos en vivienda_imagen
begin
  for vivienda_id in 1..99 loop
    insert into vivienda_imagen (numero_imagen, vivienda_id, imagen)
      values (1, vivienda_id, empty_blob());
    insert into vivienda_imagen (numero_imagen, vivienda_id, imagen)
      values (2, vivienda_id, empty_blob());
  end loop;
end;
/

-- Inserciones en la tabla vivienda_venta
Prompt Insertando datos en vivienda_venta
insert into vivienda_venta (vivienda_id, numero_catastral, folio_escritura, avaluo_propiedad_pdf, precio, clabe_pago, usuario_id) values (1, 'aryLpk1ey4J1Mm1r2w', '9BRy0CUv591MrOn8DN', empty_blob(), 4845890.81, '304367496153462062', null);
insert into vivienda_venta (vivienda_id, numero_catastral, folio_escritura, avaluo_propiedad_pdf, precio, clabe_pago, usuario_id) values (2, 'f0Q5ZKNuv133f8n508', '81I191ow9q5y3kPeD8', empty_blob(), 4522961.36, '706910463377490332', null);
insert into vivienda_venta (vivienda_id, numero_catastral, folio_escritura, avaluo_propiedad_pdf, precio, clabe_pago, usuario_id) values (3, 'DH55bPbluun6hX49fp', 'E93zRzG3bG1pZzLFFW', empty_blob(), 8668735.43, '799310020730423706', null);
insert into vivienda_venta (vivienda_id, numero_catastral, folio_escritura, avaluo_propiedad_pdf, precio, clabe_pago, usuario_id) values (4, 'mq8AfLQ32WiP46hMQk', '98rK6WYtnR75586n7H', empty_blob(), 7138660.5, '760100047554562736', null);
insert into vivienda_venta (vivienda_id, numero_catastral, folio_escritura, avaluo_propiedad_pdf, precio, clabe_pago, usuario_id) values (5, '7J1LNft1X0dUpJ0jGO', 'w3Vlb9p1D2B0U3KNFl', empty_blob(), 3986504.08, '267902268497739598', 54);
insert into vivienda_venta (vivienda_id, numero_catastral, folio_escritura, avaluo_propiedad_pdf, precio, clabe_pago, usuario_id) values (6, 'Sca515G0E784467Xy2', 'ynb9Qr5FD9Dg74IVz4', empty_blob(), 7648399.91, '859136833328580966', null);
insert into vivienda_venta (vivienda_id, numero_catastral, folio_escritura, avaluo_propiedad_pdf, precio, clabe_pago, usuario_id) values (7, 'gwqk0ucBb94BsTCQh0', 'Il580T94bh1l02q35J', empty_blob(), 5355593.71, '193084128102791223', null);
insert into vivienda_venta (vivienda_id, numero_catastral, folio_escritura, avaluo_propiedad_pdf, precio, clabe_pago, usuario_id) values (8, 'YUGJkfN2GH2549cI74', 'PnKCjOG3n5c18jJgmD', empty_blob(), 6330579.76, '084118481597418127', null);
insert into vivienda_venta (vivienda_id, numero_catastral, folio_escritura, avaluo_propiedad_pdf, precio, clabe_pago, usuario_id) values (9, 'Sw0lxivlzc1e9oL4ui', 'b3W6g14W4fs4yY6pte', empty_blob(), 8995332.73, '332632714143612233', null);
insert into vivienda_venta (vivienda_id, numero_catastral, folio_escritura, avaluo_propiedad_pdf, precio, clabe_pago, usuario_id) values (10, '6TW7g39pz00omcV55w', 'u9fJ0x5PLi5Oa0R911', empty_blob(), 7560664.17, '395043908317079007', null);
insert into vivienda_venta (vivienda_id, numero_catastral, folio_escritura, avaluo_propiedad_pdf, precio, clabe_pago, usuario_id) values (11, 'BSB3Sp4YDAtH7zL4N7', 'woRw4WN0xBHCJSE9ZF', empty_blob(), 2079617.32, '075672186606215094', null);
insert into vivienda_venta (vivienda_id, numero_catastral, folio_escritura, avaluo_propiedad_pdf, precio, clabe_pago, usuario_id) values (12, 'Q1zy601UQ207Lk5aT0', 's71PbJj685LS8aCVF7', empty_blob(), 7440454.09, '950648422620516957', null);
insert into vivienda_venta (vivienda_id, numero_catastral, folio_escritura, avaluo_propiedad_pdf, precio, clabe_pago, usuario_id) values (13, '9zu1k4cHL3n13LTYSf', 'A723R38DdMZ58COq5z', empty_blob(), 3879001.89, '499764905083342981', null);
insert into vivienda_venta (vivienda_id, numero_catastral, folio_escritura, avaluo_propiedad_pdf, precio, clabe_pago, usuario_id) values (14, 'AR7a955eODw0ZPm83A', '22FzzX9wYZCU61pOZd', empty_blob(), 5026061.47, '452262712013516416', null);
insert into vivienda_venta (vivienda_id, numero_catastral, folio_escritura, avaluo_propiedad_pdf, precio, clabe_pago, usuario_id) values (15, 'puv57U06vbtTJ40Kmc', 'aonl5PSm6Ykj38518l', empty_blob(), 9417092.1, '918429565526421160', null);
insert into vivienda_venta (vivienda_id, numero_catastral, folio_escritura, avaluo_propiedad_pdf, precio, clabe_pago, usuario_id) values (16, 'j184Rx4EH5IWmeo5bq', 'DGe95zSl5QamfZ5doR', empty_blob(), 8731240.31, '418543370007132207', null);
insert into vivienda_venta (vivienda_id, numero_catastral, folio_escritura, avaluo_propiedad_pdf, precio, clabe_pago, usuario_id) values (17, 'YGJnyUI6ta5199YFeB', 'JiJ9fkgqEh3o0vm8E0', empty_blob(), 1147082.71, '849980927993578238', null);
insert into vivienda_venta (vivienda_id, numero_catastral, folio_escritura, avaluo_propiedad_pdf, precio, clabe_pago, usuario_id) values (18, '7zRiShRcWQ4zu4Vsx4', '8o5r8035Fpfow5dBow', empty_blob(), 8721999.17, '678909665620912433', null);
insert into vivienda_venta (vivienda_id, numero_catastral, folio_escritura, avaluo_propiedad_pdf, precio, clabe_pago, usuario_id) values (19, 'MmHPf4369a4IwIL556', '340Z27q5BGvS8FD5R2', empty_blob(), 2568140.22, '186552704342998875', null);
insert into vivienda_venta (vivienda_id, numero_catastral, folio_escritura, avaluo_propiedad_pdf, precio, clabe_pago, usuario_id) values (20, 'ZWTH0j8KHFf8C66h1e', 'hojzYpU3Sy5dtdtCil', empty_blob(), 5139123.4, '764055504192357519', null);
insert into vivienda_venta (vivienda_id, numero_catastral, folio_escritura, avaluo_propiedad_pdf, precio, clabe_pago, usuario_id) values (21, '94HP3PZ5RWteX5e4xh', 'p1fOVP08Fjm88usMLn', empty_blob(), 3954619.11, '960183892954258798', null);
insert into vivienda_venta (vivienda_id, numero_catastral, folio_escritura, avaluo_propiedad_pdf, precio, clabe_pago, usuario_id) values (22, 'X79We8BviLd4HF1D3T', '44H8dBq6qW0hd7j0zo', empty_blob(), 2499910.26, '090606155271288939', null);
insert into vivienda_venta (vivienda_id, numero_catastral, folio_escritura, avaluo_propiedad_pdf, precio, clabe_pago, usuario_id) values (23, '9N7nY9ni5QkG6jmp18', '4r3ZED878yO3WW30vZ', empty_blob(), 2153276.64, '520965178548161897', 67);
insert into vivienda_venta (vivienda_id, numero_catastral, folio_escritura, avaluo_propiedad_pdf, precio, clabe_pago, usuario_id) values (24, 'G4d5BzzMLDLj34gSxn', '89V4uySkX6Ynbh188j', empty_blob(), 6600423.13, '759432189604521917', null);
insert into vivienda_venta (vivienda_id, numero_catastral, folio_escritura, avaluo_propiedad_pdf, precio, clabe_pago, usuario_id) values (25, 'g4OjSUnoR0AInfQOLF', 'vEkS3UMVoasQOwH871', empty_blob(), 8139598.9, '671196085736505871', null);
insert into vivienda_venta (vivienda_id, numero_catastral, folio_escritura, avaluo_propiedad_pdf, precio, clabe_pago, usuario_id) values (26, 'VWGx07raP60g8FOh4v', 'W28gKdPAOtTdrI57n1', empty_blob(), 9288668.81, '356943856575994065', null);
insert into vivienda_venta (vivienda_id, numero_catastral, folio_escritura, avaluo_propiedad_pdf, precio, clabe_pago, usuario_id) values (27, 'Z2e1b2EyZkl663567y', 'J28b4B63dri8EeW9PQ', empty_blob(), 5895482.88, '330638014693199698', 81);
insert into vivienda_venta (vivienda_id, numero_catastral, folio_escritura, avaluo_propiedad_pdf, precio, clabe_pago, usuario_id) values (28, 'CjCfs38tS3XHCyp8E3', 'xo84bBd8zIpv0oAN9m', empty_blob(), 8422761.38, '145688724948843721', 50);
insert into vivienda_venta (vivienda_id, numero_catastral, folio_escritura, avaluo_propiedad_pdf, precio, clabe_pago, usuario_id) values (29, '2k8nY8sZhD9s4WQ397', 'r8V2jYpu58846VM1t5', empty_blob(), 5871671.92, '506227332382073651', null);
insert into vivienda_venta (vivienda_id, numero_catastral, folio_escritura, avaluo_propiedad_pdf, precio, clabe_pago, usuario_id) values (30, 'oLLuCw64zrQ7SS46Cd', 'fam05G80431A0ycySt', empty_blob(), 7711964.32, '416861766770778854', null);
insert into vivienda_venta (vivienda_id, numero_catastral, folio_escritura, avaluo_propiedad_pdf, precio, clabe_pago, usuario_id) values (31, 'CA1H4mT41qLaW6N5xn', 'p460Qftg31R020Ay2S', empty_blob(), 3187105.22, '149876755612730451', null);
insert into vivienda_venta (vivienda_id, numero_catastral, folio_escritura, avaluo_propiedad_pdf, precio, clabe_pago, usuario_id) values (32, 'cx7nu9x1S5CMxql3X7', 'BB2zg6ak0bl3slM0wa', empty_blob(), 880514.99, '650633546932618595', 88);
insert into vivienda_venta (vivienda_id, numero_catastral, folio_escritura, avaluo_propiedad_pdf, precio, clabe_pago, usuario_id) values (33, 'uBGIffx412nP59OP8w', 'hJ9T69mu8Mf0z97e9u', empty_blob(), 4918723.71, '417943266403705141', null);
insert into vivienda_venta (vivienda_id, numero_catastral, folio_escritura, avaluo_propiedad_pdf, precio, clabe_pago, usuario_id) values (34, 'G1JQ44c1pDG1c0OwNN', 'kGV88P9SMfu27eu25b', empty_blob(), 1132080.25, '148054701688089661', 48);
insert into vivienda_venta (vivienda_id, numero_catastral, folio_escritura, avaluo_propiedad_pdf, precio, clabe_pago, usuario_id) values (35, 'Cq6De52BfIxf11Iosl', 'aHB75v4rY55ymQWSiy', empty_blob(), 4848294.41, '588182291322964780', null);
insert into vivienda_venta (vivienda_id, numero_catastral, folio_escritura, avaluo_propiedad_pdf, precio, clabe_pago, usuario_id) values (36, 'iQthPIDu2UMLGn5q3s', 'Wdv2G1643WC2vR67KE', empty_blob(), 8634144.34, '346683474848179736', null);
insert into vivienda_venta (vivienda_id, numero_catastral, folio_escritura, avaluo_propiedad_pdf, precio, clabe_pago, usuario_id) values (37, 'lGgEk55J6t744353F1', 'dR4H1PxDlINX89M9yX', empty_blob(), 8093345.25, '923611048091972334', null);
insert into vivienda_venta (vivienda_id, numero_catastral, folio_escritura, avaluo_propiedad_pdf, precio, clabe_pago, usuario_id) values (38, 'lFRodLoHG5o6LvYDD6', 'drixFjiic0W722Cg2s', empty_blob(), 3891858.35, '772757537371689810', null);
insert into vivienda_venta (vivienda_id, numero_catastral, folio_escritura, avaluo_propiedad_pdf, precio, clabe_pago, usuario_id) values (39, 'Iy50L27R5pzQUU9rJZ', '35A0L2vafL2m21Hg5r', empty_blob(), 7879722.72, '085654130281044746', null);
insert into vivienda_venta (vivienda_id, numero_catastral, folio_escritura, avaluo_propiedad_pdf, precio, clabe_pago, usuario_id) values (40, 'Mc5iLX004R2oezbPQk', 'HkPI6gHfPNSy1cJQvX', empty_blob(), 1459329.36, '307393006184664319', 64);

-- Inserciones en la tabla vivienda_renta
Prompt Insertando datos en vivienda_renta
insert into vivienda_renta (vivienda_id, renta_mensual, mes_deposito) values (21, 22731.04, 2);
insert into vivienda_renta (vivienda_id, renta_mensual, mes_deposito) values (22, 31915.23, 11);
insert into vivienda_renta (vivienda_id, renta_mensual, mes_deposito) values (23, 8398.79, 3);
insert into vivienda_renta (vivienda_id, renta_mensual, mes_deposito) values (24, 4399.06, 10);
insert into vivienda_renta (vivienda_id, renta_mensual, mes_deposito) values (25, 30226.54, 3);
insert into vivienda_renta (vivienda_id, renta_mensual, mes_deposito) values (26, 9079.63, 3);
insert into vivienda_renta (vivienda_id, renta_mensual, mes_deposito) values (27, 31582.31, 11);
insert into vivienda_renta (vivienda_id, renta_mensual, mes_deposito) values (28, 25793.38, 4);
insert into vivienda_renta (vivienda_id, renta_mensual, mes_deposito) values (29, 25203.26, 9);
insert into vivienda_renta (vivienda_id, renta_mensual, mes_deposito) values (30, 6903.84, 7);
insert into vivienda_renta (vivienda_id, renta_mensual, mes_deposito) values (31, 22701.6, 7);
insert into vivienda_renta (vivienda_id, renta_mensual, mes_deposito) values (32, 22847.64, 11);
insert into vivienda_renta (vivienda_id, renta_mensual, mes_deposito) values (33, 12221.17, 1);
insert into vivienda_renta (vivienda_id, renta_mensual, mes_deposito) values (34, 5378.0, 8);
insert into vivienda_renta (vivienda_id, renta_mensual, mes_deposito) values (35, 23079.12, 2);
insert into vivienda_renta (vivienda_id, renta_mensual, mes_deposito) values (36, 16732.74, 9);
insert into vivienda_renta (vivienda_id, renta_mensual, mes_deposito) values (37, 31867.53, 1);
insert into vivienda_renta (vivienda_id, renta_mensual, mes_deposito) values (38, 14751.45, 5);
insert into vivienda_renta (vivienda_id, renta_mensual, mes_deposito) values (39, 14122.54, 6);
insert into vivienda_renta (vivienda_id, renta_mensual, mes_deposito) values (40, 5723.12, 2);
insert into vivienda_renta (vivienda_id, renta_mensual, mes_deposito) values (61, 30149.44, 11);
insert into vivienda_renta (vivienda_id, renta_mensual, mes_deposito) values (62, 34133.47, 9);
insert into vivienda_renta (vivienda_id, renta_mensual, mes_deposito) values (63, 11114.97, 1);
insert into vivienda_renta (vivienda_id, renta_mensual, mes_deposito) values (64, 4727.88, 5);
insert into vivienda_renta (vivienda_id, renta_mensual, mes_deposito) values (65, 29322.11, 2);
insert into vivienda_renta (vivienda_id, renta_mensual, mes_deposito) values (66, 6207.35, 4);
insert into vivienda_renta (vivienda_id, renta_mensual, mes_deposito) values (67, 28945.88, 8);
insert into vivienda_renta (vivienda_id, renta_mensual, mes_deposito) values (68, 16782.27, 1);
insert into vivienda_renta (vivienda_id, renta_mensual, mes_deposito) values (69, 7860.19, 9);
insert into vivienda_renta (vivienda_id, renta_mensual, mes_deposito) values (70, 8107.45, 11);
insert into vivienda_renta (vivienda_id, renta_mensual, mes_deposito) values (71, 18008.98, 5);
insert into vivienda_renta (vivienda_id, renta_mensual, mes_deposito) values (72, 32842.91, 11);
insert into vivienda_renta (vivienda_id, renta_mensual, mes_deposito) values (73, 27331.43, 12);
insert into vivienda_renta (vivienda_id, renta_mensual, mes_deposito) values (74, 24237.25, 2);
insert into vivienda_renta (vivienda_id, renta_mensual, mes_deposito) values (75, 10797.68, 6);
insert into vivienda_renta (vivienda_id, renta_mensual, mes_deposito) values (76, 34175.12, 2);
insert into vivienda_renta (vivienda_id, renta_mensual, mes_deposito) values (77, 8908.61, 3);
insert into vivienda_renta (vivienda_id, renta_mensual, mes_deposito) values (78, 5620.51, 3);
insert into vivienda_renta (vivienda_id, renta_mensual, mes_deposito) values (79, 34518.81, 1);
insert into vivienda_renta (vivienda_id, renta_mensual, mes_deposito) values (80, 33825.48, 5);

-- Inserciones en la tabla vivienda_renta
Prompt Insertando datos en vivienda_vacacion
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (41, 4779.9, 21, 252.57);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (42, 1856.93, 23, 730.76);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (43, 7334.04, 12, 193.17);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (44, 2610.47, 11, 970.47);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (45, 3418.77, 15, 951.63);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (46, 3333.5, 23, 483.61);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (47, 9759.72, 15, 661.37);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (48, 2825.24, 24, 530.4);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (49, 7801.5, 25, 797.65);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (50, 8741.66, 22, 933.64);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (51, 9197.22, 29, 183.62);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (52, 3198.43, 13, 941.41);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (53, 3507.31, 29, 813.48);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (54, 3205.59, 18, 415.25);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (55, 8049.68, 9, 483.28);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (56, 7973.52, 22, 925.54);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (57, 916.57, 28, 748.33);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (58, 8252.98, 30, 869.75);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (59, 5227.11, 21, 980.02);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (60, 8279.05, 14, 776.81);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (61, 5299.69, 10, 214.23);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (62, 5377.77, 12, 598.29);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (63, 7301.05, 11, 130.01);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (64, 2673.96, 7, 728.42);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (65, 4802.41, 17, 300.59);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (66, 6006.69, 22, 973.3);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (67, 805.26, 23, 706.86);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (68, 3455.57, 10, 534.68);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (69, 2713.35, 7, 667.6);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (70, 2361.32, 16, 558.6);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (71, 9798.41, 17, 650.58);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (72, 2216.57, 23, 470.78);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (73, 7485.0, 8, 834.38);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (74, 5481.74, 30, 783.92);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (75, 3546.39, 21, 710.04);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (76, 9134.51, 23, 346.53);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (77, 2275.47, 28, 675.55);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (78, 2228.89, 13, 504.37);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (79, 8105.74, 28, 873.97);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (80, 2708.41, 17, 814.57);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (81, 5724.77, 17, 482.4);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (82, 3507.4, 28, 920.62);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (83, 2412.53, 13, 869.64);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (84, 8204.98, 14, 843.54);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (85, 2820.06, 8, 583.28);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (86, 1321.95, 24, 310.87);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (87, 1293.53, 27, 672.42);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (88, 2019.16, 22, 334.78);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (89, 1287.2, 8, 345.11);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (90, 4258.03, 10, 213.43);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (91, 5568.42, 16, 763.08);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (92, 656.85, 18, 625.5);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (93, 3528.85, 20, 176.62);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (94, 2258.15, 28, 313.83);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (95, 3010.09, 30, 496.5);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (96, 9107.84, 26, 795.1);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (97, 8735.02, 28, 977.18);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (98, 960.63, 8, 562.45);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (99, 5429.9, 22, 459.05);
insert into vivienda_vacacion (vivienda_id, costo_dia, maximo_dias, costo_aparto) values (100, 4885.49, 29, 982.96);

--Inserciones en la tabla vivienda_tipo_servicio
Prompt PL/SQL insertando datos en vivienda_tipo_servicio
begin
  for vivienda_id in 1..99 loop
    -- electricidad
    insert into vivienda_tipo_servicio (vivienda_tipo_servicio_id, tipo_servicio_id, vivienda_id)
      values (vivienda_tipo_servicio_seq.nextval, 1, vivienda_id);
    -- agua 
    insert into vivienda_tipo_servicio (vivienda_tipo_servicio_id, tipo_servicio_id, vivienda_id)
      values (vivienda_tipo_servicio_seq.nextval, 2, vivienda_id); 
    -- drenaje
    insert into vivienda_tipo_servicio (vivienda_tipo_servicio_id, tipo_servicio_id, vivienda_id)
      values (vivienda_tipo_servicio_seq.nextval, 3, vivienda_id); 
  if vivienda_id < 33 then
    -- gas
    insert into vivienda_tipo_servicio (vivienda_tipo_servicio_id, tipo_servicio_id, vivienda_id)
      values (vivienda_tipo_servicio_seq.nextval, 4, vivienda_id); 
    --telefono
    insert into vivienda_tipo_servicio (vivienda_tipo_servicio_id, tipo_servicio_id, vivienda_id)
      values (vivienda_tipo_servicio_seq.nextval, 5, vivienda_id);
  elsif vivienda_id > 33 and vivienda_id < 66 then
    --tv cable 
    insert into vivienda_tipo_servicio (vivienda_tipo_servicio_id, tipo_servicio_id, vivienda_id)
      values (vivienda_tipo_servicio_seq.nextval, 6, vivienda_id);
    --aire acondicionada
    insert into vivienda_tipo_servicio (vivienda_tipo_servicio_id, tipo_servicio_id, vivienda_id)
      values (vivienda_tipo_servicio_seq.nextval, 8, vivienda_id);
  else
    --internet 
    insert into vivienda_tipo_servicio (vivienda_tipo_servicio_id, tipo_servicio_id, vivienda_id)
      values (vivienda_tipo_servicio_seq.nextval, 16, vivienda_id); 
    --lavanderia
    insert into vivienda_tipo_servicio (vivienda_tipo_servicio_id, tipo_servicio_id, vivienda_id)
      values (vivienda_tipo_servicio_seq.nextval, 13, vivienda_id);
  end if;
  if vivienda_id in (34, 67, 23, 89, 45) then 
    -- calefaccion
    insert into vivienda_tipo_servicio (vivienda_tipo_servicio_id, tipo_servicio_id, vivienda_id)
      values (vivienda_tipo_servicio_seq.nextval, 15, vivienda_id);
    -- mantenimiento 
    insert into vivienda_tipo_servicio (vivienda_tipo_servicio_id, tipo_servicio_id, vivienda_id)
      values (vivienda_tipo_servicio_seq.nextval, 18, vivienda_id); 
  end if;
  end loop;
end;
/

--Inserciones en la tabla mensaje
Prompt Insertando datos en mensaje 
-- primer conversacion
insert into mensaje (mensaje_id, titulo, cuerpo, mensaje_viejo_id, vivienda_id, usuario_id)
values (mensaje_seq.nextval, 'Interés en alquiler de vivienda', 'Hola, estoy interesado en alquilar tu vivienda. ¿Podrías darme más detalles?', null, 70, 50);
insert into mensaje (mensaje_id, titulo, cuerpo, mensaje_viejo_id, vivienda_id, usuario_id)
values (mensaje_seq.nextval, 'Re: Interés en alquiler de vivienda', 'Hola, claro que sí. La vivienda está disponible para alquiler. ¿Cuándo te gustaría visitarla?', 1, 70, 1);
insert into mensaje (mensaje_id, titulo, cuerpo, mensaje_viejo_id, vivienda_id, usuario_id)
values (mensaje_seq.nextval, '2Re: Interés en alquiler de vivienda', 'Hola, gracias por la información. ¿Podríamos coordinar una visita el próximo fin de semana?', 2, 70, 50);
insert into mensaje (mensaje_id, titulo, cuerpo, mensaje_viejo_id, vivienda_id, usuario_id)
values (mensaje_seq.nextval, '3Re: Interés en alquiler de vivienda', 'Por supuesto, el sábado por la tarde estaré disponible. ¿Te parece bien a las 3 pm?', 3, 70, 1);

-- segunda conversacion
insert into mensaje (mensaje_id, titulo, cuerpo, mensaje_viejo_id, vivienda_id, usuario_id)
values (mensaje_seq.nextval, 'Interés en comprar vivienda', 'Hola, estoy interesado en comprar tu vivienda. ¿Podrías darme más detalles?', null, 90, 88);
insert into mensaje (mensaje_id, titulo, cuerpo, mensaje_viejo_id, vivienda_id, usuario_id)
values (mensaje_seq.nextval, 'Re: Interés en comprar vivienda', 'Hola, claro que sí. La vivienda está disponible para la venta. ¿Cuándo te gustaría visitarla?', 1, 90, 40);
insert into mensaje (mensaje_id, titulo, cuerpo, mensaje_viejo_id, vivienda_id, usuario_id)
values (mensaje_seq.nextval, '2Re: Interés en comprar vivienda', 'Hola, gracias por la información. ¿Podríamos coordinar una visita el próximo fin de semana?', 2, 90, 88);
insert into mensaje (mensaje_id, titulo, cuerpo, mensaje_viejo_id, vivienda_id, usuario_id)
values (mensaje_seq.nextval, '3Re: Interés en comprar vivienda', 'Por supuesto, el sábado por la tarde estaré disponible. ¿Te parece bien a las 4 pm?', 3, 90, 40);
insert into mensaje (mensaje_id, titulo, cuerpo, mensaje_viejo_id, vivienda_id, usuario_id)
values (mensaje_seq.nextval, '4Re: Interés en comprar vivienda', 'Perfecto, nos vemos el sábado a las 4 pm en la dirección. Gracias.', 4, 90, 88);
insert into mensaje (mensaje_id, titulo, cuerpo, mensaje_viejo_id, vivienda_id, usuario_id)
values (mensaje_seq.nextval, '5Re: Interés en comprar vivienda', 'Genial, hasta el sábado entonces. Estoy a tu disposición para cualquier otra pregunta.', 5, 90, 40);

--tercer conversacion
insert into mensaje (mensaje_id, titulo, cuerpo, mensaje_viejo_id, vivienda_id, usuario_id)
values (mensaje_seq.nextval, 'Interés en rentar vivienda', 'Hola, estoy interesado en rentar tu vivienda. ¿Podrías darme más detalles?', null, 26, 55);
insert into mensaje (mensaje_id, titulo, cuerpo, mensaje_viejo_id, vivienda_id, usuario_id)
values (mensaje_seq.nextval, 'Re: Interés en rentar vivienda', 'Hola, claro que sí. La vivienda está disponible para renta. ¿Cuándo te gustaría visitarla?', 1, 26, 34);
insert into mensaje (mensaje_id, titulo, cuerpo, mensaje_viejo_id, vivienda_id, usuario_id)
values (mensaje_seq.nextval, '2Re: Interés en rentar vivienda', 'Hola, gracias por la información. ¿Podríamos coordinar una visita el próximo fin de semana?', 2, 26, 55);
insert into mensaje (mensaje_id, titulo, cuerpo, mensaje_viejo_id, vivienda_id, usuario_id)
values (mensaje_seq.nextval, '3Re: Interés en rentar vivienda', 'Por supuesto, el sábado por la tarde estaré disponible. ¿Te parece bien a las 3 pm?', 3, 26, 34);
insert into mensaje (mensaje_id, titulo, cuerpo, mensaje_viejo_id, vivienda_id, usuario_id)
values (mensaje_seq.nextval, '4Re: Interés en rentar vivienda', 'Perfecto, nos vemos el sábado a las 3 pm en la dirección. Gracias.', 4, 26, 55); 

--cuarta conversacion
insert into mensaje (mensaje_id, titulo, cuerpo, mensaje_viejo_id, vivienda_id, usuario_id)
values (mensaje_seq.nextval, 'Disponibilidad de vivienda', 'Hola, estoy interesado en la vivienda. ¿Está disponible para renta o vacaciones?', null, 67, 66);
insert into mensaje (mensaje_id, titulo, cuerpo, mensaje_viejo_id, vivienda_id, usuario_id)
values (mensaje_seq.nextval, 'Re: Disponibilidad de vivienda', 'Hola, sí, la vivienda está disponible tanto para renta como para vacaciones. ¿Cuál es tu interés?', 1, 67, 10);
insert into mensaje (mensaje_id, titulo, cuerpo, mensaje_viejo_id, vivienda_id, usuario_id)
values (mensaje_seq.nextval, '2Re: Disponibilidad de vivienda', 'Entendido, necesito más detalles sobre la renta para vacaciones. ¿Puedes proporcionarme más información?', 2, 67, 66);
insert into mensaje (mensaje_id, titulo, cuerpo, mensaje_viejo_id, vivienda_id, usuario_id)
values (mensaje_seq.nextval, '3Re: Disponibilidad de vivienda', 'Por supuesto, ¿cuántos días planeas quedarte y cuándo te gustaría visitar la vivienda?', 3, 67, 10);
insert into mensaje (mensaje_id, titulo, cuerpo, mensaje_viejo_id, vivienda_id, usuario_id)
values (mensaje_seq.nextval, '4Re: Disponibilidad de vivienda', 'Gracias por la información. Estoy planeando una estancia de 7 días en dos semanas. ¿Podríamos agendar una visita?', 4, 67, 66);


--Inserciones en la tabla vivienda_renta_clabe
Prompt Insertando datos en vivienda_renta_clabe
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 35, 22);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 28, 29);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 26, 66);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 5, 77);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 19, 75);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 23, 37);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 26, 65);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 9, 35);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 17, 74);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 34, 39);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 38, 36);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 30, 32);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 26, 23);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 11, 25);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 13, 62);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 3, 76);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 31, 63);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 1, 79);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 36, 74);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 22, 35);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 25, 30);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 15, 68);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 31, 71);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 24, 33);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 11, 73);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 3, 65);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 3, 39);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 30, 27);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 34, 78);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 11, 25);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 8, 29);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 14, 27);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 32, 21);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 15, 77);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 7, 67);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 18, 79);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 23, 61);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 19, 73);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 32, 24);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 34, 65);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 10, 33);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 34, 33);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 35, 71);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 10, 67);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 28, 38);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 21, 30);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 12, 39);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 32, 30);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 21, 21);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 18, 74);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 33, 64);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 2, 30);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 8, 62);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 11, 63);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 20, 61);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 29, 37);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 9, 66);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 6, 27);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 17, 72);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 5, 22);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 8, 21);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 18, 66);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 18, 67);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 31, 38);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 6, 30);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 35, 39);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 10, 78);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 17, 24);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 34, 31);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 36, 78);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 36, 80);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 28, 75);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 30, 66);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 22, 39);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 20, 62);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 8, 28);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 12, 78);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 14, 66);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 2, 69);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 17, 25);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 11, 29);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 3, 30);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 30, 23);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 31, 35);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 32, 61);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 28, 31);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 8, 40);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 12, 74);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 28, 76);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 5, 30);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 15, 27);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 18, 21);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 14, 35);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 8, 73);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 36, 68);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 3, 79);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 8, 61);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 1, 62);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 22, 64);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 29, 73);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 5, 63);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 10, 65);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 2, 77);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 35, 79);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 38, 69);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 30, 67);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 37, 77);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 32, 73);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 20, 68);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 30, 63);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 17, 39);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 1, 36);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 19, 26);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 8, 69);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 14, 65);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 6, 79);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 14, 67);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 15, 64);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 2, 78);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 19, 24);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 35, 76);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 15, 80);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 1, 21);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 9, 25);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 9, 79);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 25, 34);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 7, 74);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 14, 37);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 32, 30);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 24, 63);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 14, 35);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 31, 22);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 31, 40);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 13, 64);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 30, 30);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 20, 23);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 31, 75);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 38, 77);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 22, 21);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 35, 74);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 36, 73);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 2, 32);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 23, 22);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 5, 79);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 15, 65);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 33, 71);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 23, 38);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 4, 72);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 11, 70);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 30, 29);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 28, 66);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 20, 68);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 37, 70);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 23, 30);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 34, 68);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 15, 74);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 28, 21);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 36, 76);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 13, 24);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 26, 22);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 23, 33);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 20, 70);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 21, 21);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 35, 63);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 35, 64);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 27, 21);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 23, 64);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 16, 74);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 23, 26);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 17, 30);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 20, 21);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 25, 38);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 25, 64);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 31, 80);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 32, 79);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 38, 67);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 7, 26);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 37, 76);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 9, 74);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 31, 78);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 27, 33);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 29, 75);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 24, 22);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 26, 77);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 17, 61);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 6, 39);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 33, 36);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 17, 21);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 35, 35);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 27, 24);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 8, 71);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 6, 24);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 8, 29);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 8, 75);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 9, 31);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 27, 31);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 28, 63);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 33, 61);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 5, 62);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 1, 25);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 31, 26);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 2, 28);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 36, 23);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 13, 32);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 31, 29);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 29, 38);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 31, 30);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 26, 39);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 35, 62);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 12, 22);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 12, 77);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 3, 35);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 23, 31);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 18, 76);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 8, 21);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 16, 66);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 5, 38);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 1, 68);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 3, 24);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 8, 33);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 22, 64);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 10, 21);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 10, 67);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 33, 39);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 18, 33);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 2, 79);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 11, 62);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 10, 29);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 10, 74);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 21, 23);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 21, 79);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 35, 79);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 27, 33);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 30, 73);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 19, 65);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 25, 27);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 34, 36);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 2, 75);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 11, 71);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 14, 78);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 32, 36);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 6, 34);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 4, 23);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 32, 74);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 9, 78);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 22, 32);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 5, 26);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 5, 30);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 20, 68);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 35, 61);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 29, 31);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 8, 32);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 2, 65);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 25, 26);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 32, 76);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 35, 69);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 29, 36);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 23, 72);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 11, 77);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 4, 28);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 7, 35);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 12, 31);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 34, 26);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 7, 21);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 36, 40);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 9, 66);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 35, 74);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 16, 76);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 13, 67);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 34, 40);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 38, 40);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 21, 32);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 10, 78);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 12, 72);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 5, 77);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 18, 78);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 35, 27);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 10, 61);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 23, 76);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 25, 66);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 24, 75);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 4, 68);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 38, 69);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 6, 32);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 28, 74);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 16, 66);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 32, 24);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 33, 75);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 26, 63);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 38, 68);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 20, 79);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 28, 35);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 4, 66);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 26, 30);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 36, 40);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 29, 22);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 10, 36);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 23, 72);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 5, 26);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 26, 27);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 20, 34);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 20, 61);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 20, 63);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 11, 38);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 32, 79);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 11, 27);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 38, 21);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 9, 78);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 37, 25);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 27, 39);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 7, 30);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 7, 65);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 4, 73);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 28, 75);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 10, 35);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 29, 32);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 37, 40);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 9, 71);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 14, 35);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 37, 24);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 20, 23);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 32, 26);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 15, 22);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 17, 71);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 5, 30);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 19, 80);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 12, 72);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 2, 76);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 5, 34);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 23, 70);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 14, 67);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 4, 72);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 17, 33);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 13, 32);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 35, 28);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 37, 38);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 20, 22);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 12, 69);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 26, 24);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 37, 61);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 24, 26);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 8, 64);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 15, 33);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 15, 38);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 12, 64);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 22, 27);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 8, 39);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 3, 74);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 2, 67);
insert into vivienda_renta_clabe (vivienda_renta_clabe_id, clabe_id, vivienda_id) values (vivienda_renta_clabe_seq.nextval, 19, 39);


--Inserciones en la tabla pago
Prompt Insertando datos en pago
--pagos 1 - 6 mensualidades 
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (1, 5, to_date('01/07/2023', 'dd/mm/yyyy'), 199325.20, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (2, 5, to_date('01/08/2023', 'dd/mm/yyyy'), 199325.20, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (3, 5, to_date('01/09/2023', 'dd/mm/yyyy'), 199325.20, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (4, 5, to_date('01/10/2023', 'dd/mm/yyyy'), 199325.20, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (5, 5, to_date('01/11/2023', 'dd/mm/yyyy'), 199325.20, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (6, 5, to_date('01/12/2023', 'dd/mm/yyyy'), 199325.20, empty_blob());

--pagos 2 - 24
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (1, 23, to_date('01/01/2018', 'dd/mm/yyyy'), 89719.86, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (2, 23, to_date('01/02/2018', 'dd/mm/yyyy'), 89719.86, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (3, 23, to_date('01/03/2018', 'dd/mm/yyyy'), 89719.86, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (4, 23, to_date('01/04/2018', 'dd/mm/yyyy'), 89719.86, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (5, 23, to_date('01/05/2018', 'dd/mm/yyyy'), 89719.86, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (6, 23, to_date('01/06/2018', 'dd/mm/yyyy'), 89719.86, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (7, 23, to_date('01/07/2018', 'dd/mm/yyyy'), 89719.86, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (8, 23, to_date('01/08/2018', 'dd/mm/yyyy'), 89719.86, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (9, 23, to_date('01/09/2018', 'dd/mm/yyyy'), 89719.86, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (10, 23, to_date('01/10/2018', 'dd/mm/yyyy'), 89719.86, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (11, 23, to_date('01/11/2018', 'dd/mm/yyyy'), 89719.86, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (12, 23, to_date('01/12/2018', 'dd/mm/yyyy'), 89719.86, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (13, 23, to_date('01/01/2019', 'dd/mm/yyyy'), 89719.86, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (14, 23, to_date('01/02/2019', 'dd/mm/yyyy'), 89719.86, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (15, 23, to_date('01/03/2019', 'dd/mm/yyyy'), 89719.86, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (16, 23, to_date('01/04/2019', 'dd/mm/yyyy'), 89719.86, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (17, 23, to_date('01/05/2019', 'dd/mm/yyyy'), 89719.86, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (18, 23, to_date('01/06/2019', 'dd/mm/yyyy'), 89719.86, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (19, 23, to_date('01/07/2019', 'dd/mm/yyyy'), 89719.86, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (20, 23, to_date('01/08/2019', 'dd/mm/yyyy'), 89719.86, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (21, 23, to_date('01/09/2019', 'dd/mm/yyyy'), 89719.86, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (22, 23, to_date('01/10/2019', 'dd/mm/yyyy'), 89719.86, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (23, 23, to_date('01/11/2019', 'dd/mm/yyyy'), 89719.86, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (24, 23, to_date('01/12/2019', 'dd/mm/yyyy'), 89719.86, empty_blob());

--pagos 3 - 32 mensualidades
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (1, 27, to_date('01/01/2021', 'dd/mm/yyyy'), 184234.46, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (2, 27, to_date('01/02/2021', 'dd/mm/yyyy'), 184234.46, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (3, 27, to_date('01/03/2021', 'dd/mm/yyyy'), 184234.46, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (4, 27, to_date('01/04/2021', 'dd/mm/yyyy'), 184234.46, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (5, 27, to_date('01/05/2021', 'dd/mm/yyyy'), 184234.46, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (6, 27, to_date('01/06/2021', 'dd/mm/yyyy'), 184234.46, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (7, 27, to_date('01/07/2021', 'dd/mm/yyyy'), 184234.46, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (8, 27, to_date('01/08/2021', 'dd/mm/yyyy'), 184234.46, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (9, 27, to_date('01/09/2021', 'dd/mm/yyyy'), 184234.46, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (10, 27, to_date('01/10/2021', 'dd/mm/yyyy'), 184234.46, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (11, 27, to_date('01/11/2021', 'dd/mm/yyyy'), 184234.46, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (12, 27, to_date('01/12/2021', 'dd/mm/yyyy'), 184234.46, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (13, 27, to_date('01/01/2022', 'dd/mm/yyyy'), 184234.46, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (14, 27, to_date('01/02/2022', 'dd/mm/yyyy'), 184234.46, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (15, 27, to_date('01/03/2022', 'dd/mm/yyyy'), 184234.46, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (16, 27, to_date('01/04/2022', 'dd/mm/yyyy'), 184234.46, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (17, 27, to_date('01/05/2022', 'dd/mm/yyyy'), 184234.46, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (18, 27, to_date('01/06/2022', 'dd/mm/yyyy'), 184234.46, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (19, 27, to_date('01/07/2022', 'dd/mm/yyyy'), 184234.46, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (20, 27, to_date('01/08/2022', 'dd/mm/yyyy'), 184234.46, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (21, 27, to_date('01/09/2022', 'dd/mm/yyyy'), 184234.46, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (22, 27, to_date('01/10/2022', 'dd/mm/yyyy'), 184234.46, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (23, 27, to_date('01/11/2022', 'dd/mm/yyyy'), 184234.46, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (24, 27, to_date('01/12/2022', 'dd/mm/yyyy'), 184234.46, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (25, 27, to_date('01/01/2023', 'dd/mm/yyyy'), 184234.46, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (26, 27, to_date('01/02/2023', 'dd/mm/yyyy'), 184234.46, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (27, 27, to_date('01/03/2023', 'dd/mm/yyyy'), 184234.46, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (28, 27, to_date('01/04/2023', 'dd/mm/yyyy'), 184234.46, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (29, 27, to_date('01/05/2023', 'dd/mm/yyyy'), 184234.46, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (30, 27, to_date('01/06/2023', 'dd/mm/yyyy'), 184234.46, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (31, 27, to_date('01/07/2023', 'dd/mm/yyyy'), 184234.46, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (32, 27, to_date('01/08/2023', 'dd/mm/yyyy'), 184234.46, empty_blob());

--pagos 4 - 60 mensualidades
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (1, 28, to_date('01/01/2023', 'dd/mm/yyyy'), 140379.36, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (2, 28, to_date('01/02/2023', 'dd/mm/yyyy'), 140379.36, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (3, 28, to_date('01/03/2023', 'dd/mm/yyyy'), 140379.36, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (4, 28, to_date('01/04/2023', 'dd/mm/yyyy'), 140379.36, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (5, 28, to_date('01/05/2023', 'dd/mm/yyyy'), 140379.36, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (6, 28, to_date('01/06/2023', 'dd/mm/yyyy'), 140379.36, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (7, 28, to_date('01/07/2023', 'dd/mm/yyyy'), 140379.36, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (8, 28, to_date('01/08/2023', 'dd/mm/yyyy'), 140379.36, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (9, 28, to_date('01/09/2023', 'dd/mm/yyyy'), 140379.36, empty_blob());

--pagos 5 - 48 mensualidades
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (1, 32, to_date('01/01/2022', 'dd/mm/yyyy'), 18344.06, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (2, 32, to_date('01/02/2022', 'dd/mm/yyyy'), 18344.06, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (3, 32, to_date('01/03/2022', 'dd/mm/yyyy'), 18344.06, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (4, 32, to_date('01/04/2022', 'dd/mm/yyyy'), 18344.06, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (5, 32, to_date('01/05/2022', 'dd/mm/yyyy'), 18344.06, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (6, 32, to_date('01/06/2022', 'dd/mm/yyyy'), 18344.06, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (7, 32, to_date('01/07/2022', 'dd/mm/yyyy'), 18344.06, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (8, 32, to_date('01/08/2022', 'dd/mm/yyyy'), 18344.06, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (9, 32, to_date('01/09/2022', 'dd/mm/yyyy'), 18344.06, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (10, 32, to_date('01/10/2022', 'dd/mm/yyyy'), 18344.06, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (11, 32, to_date('01/11/2022', 'dd/mm/yyyy'), 18344.06, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (12, 32, to_date('01/12/2022', 'dd/mm/yyyy'), 18344.06, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (13, 32, to_date('01/01/2023', 'dd/mm/yyyy'), 18344.06, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (14, 32, to_date('01/02/2023', 'dd/mm/yyyy'), 18344.06, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (15, 32, to_date('01/03/2023', 'dd/mm/yyyy'), 18344.06, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (16, 32, to_date('01/04/2023', 'dd/mm/yyyy'), 18344.06, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (17, 32, to_date('01/05/2023', 'dd/mm/yyyy'), 18344.06, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (18, 32, to_date('01/06/2023', 'dd/mm/yyyy'), 18344.06, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (19, 32, to_date('01/07/2023', 'dd/mm/yyyy'), 18344.06, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (20, 32, to_date('01/08/2023', 'dd/mm/yyyy'), 18344.06, empty_blob());

--pagos 6 - 120 mensualidades
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (1, 34, to_date('01/01/2023', 'dd/mm/yyyy'), 9434.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (2, 34, to_date('01/02/2023', 'dd/mm/yyyy'), 9434.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (3, 34, to_date('01/03/2023', 'dd/mm/yyyy'), 9434.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (4, 34, to_date('01/04/2023', 'dd/mm/yyyy'), 9434.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (5, 34, to_date('01/05/2023', 'dd/mm/yyyy'), 9434.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (6, 34, to_date('01/06/2023', 'dd/mm/yyyy'), 9434.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (7, 34, to_date('01/07/2023', 'dd/mm/yyyy'), 9434.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (8, 34, to_date('01/08/2023', 'dd/mm/yyyy'), 9434.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (9, 34, to_date('01/09/2023', 'dd/mm/yyyy'), 9434.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (10, 34, to_date('01/10/2023', 'dd/mm/yyyy'), 9434.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (11, 34, to_date('01/11/2023', 'dd/mm/yyyy'), 9434.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (12, 34, to_date('01/12/2023', 'dd/mm/yyyy'), 9434.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (13, 34, to_date('01/01/2024', 'dd/mm/yyyy'), 9434.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (14, 34, to_date('01/02/2024', 'dd/mm/yyyy'), 9434.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (15, 34, to_date('01/03/2024', 'dd/mm/yyyy'), 9434.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (16, 34, to_date('01/04/2024', 'dd/mm/yyyy'), 9434.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (17, 34, to_date('01/05/2024', 'dd/mm/yyyy'), 9434.00, empty_blob());

--pagos 7 - 96 mensualidades 
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (1, 40, to_date('01/01/2021', 'dd/mm/yyyy'), 15234.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (2, 40, to_date('01/02/2021', 'dd/mm/yyyy'), 15234.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (3, 40, to_date('01/03/2021', 'dd/mm/yyyy'), 15234.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (4, 40, to_date('01/04/2021', 'dd/mm/yyyy'), 15234.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (5, 40, to_date('01/05/2021', 'dd/mm/yyyy'), 15234.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (6, 40, to_date('01/06/2021', 'dd/mm/yyyy'), 15234.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (7, 40, to_date('01/07/2021', 'dd/mm/yyyy'), 15234.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (8, 40, to_date('01/08/2021', 'dd/mm/yyyy'), 15234.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (9, 40, to_date('01/09/2021', 'dd/mm/yyyy'), 15234.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (10, 40, to_date('01/10/2021', 'dd/mm/yyyy'), 15234.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (11, 40, to_date('01/11/2021', 'dd/mm/yyyy'), 15234.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (12, 40, to_date('01/12/2021', 'dd/mm/yyyy'), 15234.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (13, 40, to_date('01/01/2022', 'dd/mm/yyyy'), 15234.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (14, 40, to_date('01/02/2022', 'dd/mm/yyyy'), 15234.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (15, 40, to_date('01/03/2022', 'dd/mm/yyyy'), 15234.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (16, 40, to_date('01/04/2022', 'dd/mm/yyyy'), 15234.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (17, 40, to_date('01/05/2022', 'dd/mm/yyyy'), 15234.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (18, 40, to_date('01/06/2022', 'dd/mm/yyyy'), 15234.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (19, 40, to_date('01/07/2022', 'dd/mm/yyyy'), 15234.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (20, 40, to_date('01/08/2022', 'dd/mm/yyyy'), 15234.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (21, 40, to_date('01/09/2022', 'dd/mm/yyyy'), 15234.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (22, 40, to_date('01/10/2022', 'dd/mm/yyyy'), 15234.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (23, 40, to_date('01/11/2022', 'dd/mm/yyyy'), 15234.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (24, 40, to_date('01/12/2022', 'dd/mm/yyyy'), 15234.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (25, 40, to_date('01/01/2023', 'dd/mm/yyyy'), 15234.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (26, 40, to_date('01/02/2023', 'dd/mm/yyyy'), 15234.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (27, 40, to_date('01/03/2023', 'dd/mm/yyyy'), 15234.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (28, 40, to_date('01/04/2023', 'dd/mm/yyyy'), 15234.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (29, 40, to_date('01/05/2023', 'dd/mm/yyyy'), 15234.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (30, 40, to_date('01/06/2023', 'dd/mm/yyyy'), 15234.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (31, 40, to_date('01/07/2023', 'dd/mm/yyyy'), 15234.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (32, 40, to_date('01/08/2023', 'dd/mm/yyyy'), 15234.00, empty_blob());
insert into pago (mensualidad, vivienda_id, fecha, importe, deposito_pdf)
values (33, 40, to_date('01/09/2023', 'dd/mm/yyyy'), 15234.00, empty_blob());


commit; 