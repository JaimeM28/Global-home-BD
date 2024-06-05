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

