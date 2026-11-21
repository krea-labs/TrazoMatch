USE TrazoMatch;

/* ===== 1. CUENTAS (10 ARTISTAS: 1-10 | 10 EMPRESAS: 11-20) ===== */
INSERT INTO T_Cuenta (idCuenta, correo, contraseña, tipoUsuario, fechaCreación, teléfono) VALUES
(1,  'valeria.trazo@mail.com',   'PassArt01!', 1, '2025-01-10 09:15:00', '981100001'),
(2,  'mateo.lienzo@mail.com',    'PassArt02!', 1, '2025-01-12 10:30:00', '981100002'),
(3,  'camila.chroma@mail.com',   'PassArt03!', 1, '2025-01-15 11:00:00', '981100003'),
(4,  'diego.pincel@mail.com',    'PassArt04!', 1, '2025-01-18 14:20:00', '981100004'),
(5,  'lucia.boceto@mail.com',    'PassArt05!', 1, '2025-01-20 16:45:00', '981100005'),
(6,  'tomas.vector@mail.com',    'PassArt06!', 1, '2025-02-01 08:50:00', '981100006'),
(7,  'sofia.acuarela@mail.com',  'PassArt07!', 1, '2025-02-05 12:10:00', '981100007'),
(8,  'bruno.grafica@mail.com',   'PassArt08!', 1, '2025-02-10 17:05:00', '981100008'),
(9,  'elena.nuevo1@mail.com',    'PassArt09!', 1, '2025-02-14 09:00:00', '981100009'),
(10, 'hugo.nuevo2@mail.com',     'PassArt10!', 1, '2025-02-18 15:30:00', '981100010'),
(11, 'contacto@andesbrew.pe',    'EmpClave1!', 2, '2025-01-11 10:00:00', '992200011'),
(12, 'hola@urbangames.io',       'EmpClave2!', 2, '2025-01-14 11:20:00', '992200012'),
(13, 'marcas@kawsayfoods.com',   'EmpClave3!', 2, '2025-01-19 13:40:00', '992200013'),
(14, 'editorial@surlibros.pe',   'EmpClave4!', 2, '2025-01-25 15:10:00', '992200014'),
(15, 'creativos@novatech.pe',    'EmpClave5!', 2, '2025-02-02 09:45:00', '992200015'),
(16, 'info@solarisstudio.com',   'EmpClave6!', 2, '2025-02-06 11:55:00', '992200016'),
(17, 'compras@modaperu.pe',      'EmpClave7!', 2, '2025-02-11 16:00:00', '992200017'),
(18, 'equipo@ecoenvases.pe',     'EmpClave8!', 2, '2025-02-15 10:25:00', '992200018'),
(19, 'hola@ritmoindie.fm',       'EmpClave9!', 2, '2025-02-19 14:50:00', '992200019'),
(20, 'admin@nexorobotics.ai',    'EmpClave0!', 2, '2025-02-22 18:15:00', '992200020');

/* ===== 2. ARTISTAS ===== */
INSERT INTO T_Artista (idArtista, nombreArtista, apellidoArtista, dni, nombreArtístico, biografía, estáVerificado) VALUES
(1,  'Valeria', 'Quispe',   '45120001', 'ValeTrazo',     'Ilustradora editorial y botánica con enfoque en flora andina.', TRUE),
(2,  'Mateo',   'Rojas',    '45120002', 'MateoLienzo',   'Pintor al óleo especializado en paisajes urbanos nocturnos.', TRUE),
(3,  'Camila',  'Mendoza',  '45120003', 'CamilaChroma',  'Artista digital enfocada en arte conceptual y ciencia ficción.', TRUE),
(4,  'Diego',   'Salazar',  '45120004', 'DiegoPincel',   'Grabador y muralista con estética geométrica contemporánea.', TRUE),
(5,  'Lucía',   'Paredes',  '45120005', 'LucíaBoceto',   'Ilustradora infantil y creadora de personajes expresivos.', FALSE),
(6,  'Tomás',   'Herrera',  '45120006', 'TomásVector',   'Diseñador gráfico e ilustrador de portadas y carteles.', TRUE),
(7,  'Sofía',   'Castro',   '45120007', 'SofíaAcuarela', 'Acuarelista de retratos y escenas costeras minimalistas.', FALSE),
(8,  'Bruno',   'Delgado',  '45120008', 'BrunoGráfica',  'Creador de arte tipográfico y composiciones retro-futuristas.', FALSE),
(9,  'Elena',   'Vargas',   '45120009', 'ElenaInicia',   'Artista emergente preparando su primer catálogo de obras.', FALSE),
(10, 'Hugo',    'Navarro',  '45120010', 'HugoBocetos',   'Ilustrador en etapa de curaduría antes de publicar obras.', FALSE);

/* ===== 3. REDES SOCIALES ===== */
INSERT INTO T_RedSocial (idArtista, nombreRedSocial, link) VALUES
(1, 'Instagram', 'https://instagram.com/valetrazo'),
(1, 'Behance',   'https://behance.net/valetrazo'),
(2, 'Instagram', 'https://instagram.com/mateolienzo'),
(3, 'ArtStation','https://artstation.com/camilachroma'),
(3, 'Instagram', 'https://instagram.com/camilachroma'),
(4, 'Instagram', 'https://instagram.com/diegopincel'),
(5, 'Instagram', 'https://instagram.com/luciaboceto'),
(6, 'Behance',   'https://behance.net/tomasvector'),
(7, 'Instagram', 'https://instagram.com/sofiaacuarela'),
(8, 'Dribbble',  'https://dribbble.com/brunografica');

/* ===== 4. EMPRESAS ===== */
INSERT INTO T_Empresa (idEmpresa, razónSocial, ruc, nombreRepresentante, apellidoRepresentante) VALUES
(11, 'Cervecería Artesanal Andes S.A.C.', '20601100011', 'Carlos',   'Espinoza'),
(12, 'Urban Games Studio E.I.R.L.',       '20601100012', 'Andrea',   'Morales'),
(13, 'Kawsay Foods S.A.',                 '20601100013', 'Jorge',    'Huamán'),
(14, 'Editorial Sur Libros S.A.C.',       '20601100014', 'Patricia', 'Ríos'),
(15, 'NovaTech Soluciones S.A.C.',        '20601100015', 'Daniel',   'Chávez'),
(16, 'Solaris Media Group S.A.',          '20601100016', 'Paola',    'Núñez'),
(17, 'Moda Perú Textil S.A.C.',           '20601100017', 'Ricardo',  'Silva'),
(18, 'EcoEnvases Sostenibles E.I.R.L.',   '20601100018', 'Claudia',  'Mendoza'),
(19, 'Ritmo Indie Producciones S.A.C.',   '20601100019', 'Miguel',   'Flores'),
(20, 'Nexo Robotics Perú S.A.C.',         '20601100020', 'Valeria',  'Cárdenas');

/* ===== 5. PORTAFOLIOS (1 POR ARTISTA) ===== */
INSERT INTO T_Portafolio (idPortafolio, idArtista, descripciónPortafolio) VALUES
(1,  1,  'Colección botánica, herbario andino y piezas editoriales.'),
(2,  2,  'Óleos sobre lienzo de calles, neblina y luces de ciudad.'),
(3,  3,  'Entornos futuristas, naves y mundos de ciencia ficción.'),
(4,  4,  'Composición geométrica, linograbado y murales urbanos.'),
(5,  5,  'Personajes tiernos y escenas para cuentos infantiles.'),
(6,  6,  'Gráfica vectorial, afiches culturales y portadas.'),
(7,  7,  'Acuarelas ligeras sobre papel de algodón.'),
(8,  8,  'Gráfica experimental, tipografía y estética ochentera.'),
(9,  9,  'Portafolio inicial en construcción.'),
(10, 10, 'Espacio reservado para futuras publicaciones.');

/* ===== 6. OBRAS (10 POR CADA ARTISTA DEL 1 AL 8 = 80 OBRAS; ARTISTAS 9 Y 10 SIN OBRAS) ===== */
INSERT INTO T_Obra (idPortafolio, nombreObra, descripción, tipoTécnica, estilo, paletaColores, urlImagen, esLicenciable, precioBase, fechaCreación) VALUES
-- Portafolio 1 (Artista 1 - 10 obras)
(1, 'Cantuta del Alba',       'Ilustración botánica de cantuta en flor.',               'Ilustración Digital', 'Botánico',      'Rojo, Naranja, Verde',    'https://cdn.trazomatch.pe/obras/01_cantuta.png',    TRUE,  450.00, '2025-01-22 10:00:00'),
(1, 'Helecho de Niebla',      'Estudio de helechos de bosque nublado.',               'Tinta y Acuarela',    'Realista',      'Verde Oliva, Gris',       'https://cdn.trazomatch.pe/obras/02_helecho.png',   TRUE,  380.00, '2025-01-23 11:00:00'),
(1, 'Orquídea Silvestre',     'Detalle de orquídea amazónica.',                      'Ilustración Digital', 'Botánico',      'Magenta, Verde',          'https://cdn.trazomatch.pe/obras/03_orquidea.png',  TRUE,  500.00, '2025-01-24 12:00:00'),
(1, 'Hojas de Quinua',        'Patrón editorial inspirado en granos andinos.',       'Vector',              'Minimalista',   'Ocre, Beige, Marrón',     'https://cdn.trazomatch.pe/obras/04_quinua.png',    TRUE,  320.00, '2025-01-25 13:00:00'),
(1, 'Lámina de Semillas',     'Catálogo visual de semillas nativas.',                'Tinta China',         'Científico',    'Negro, Crema',            'https://cdn.trazomatch.pe/obras/05_semillas.png',  FALSE, NULL,   '2025-01-26 14:00:00'),
(1, 'Cactus del Valle',       'Ilustración de cactáceas de altura.',                 'Ilustración Digital', 'Botánico',      'Verde Jade, Terracota',   'https://cdn.trazomatch.pe/obras/06_cactus.png',    TRUE,  410.00, '2025-01-27 15:00:00'),
(1, 'Rama de Eucalipto',      'Composición vertical para empaque natural.',           'Acuarela',            'Orgánico',      'Verde Azulado, Blanco',   'https://cdn.trazomatch.pe/obras/07_eucalipto.png', TRUE,  360.00, '2025-01-28 16:00:00'),
(1, 'Flor de Papa Nativa',    'Estudio cromático de flores de papa.',                'Ilustración Digital', 'Botánico',      'Violeta, Amarillo, Verde','https://cdn.trazomatch.pe/obras/08_papa.png',      TRUE,  390.00, '2025-01-29 10:30:00'),
(1, 'Herbario Sur I',         'Boceto preliminar para libro botánico.',              'Lápiz y Tinta',       'Boceto',        'Grafito, Sepia',          'https://cdn.trazomatch.pe/obras/09_herbario1.png', FALSE, NULL,   '2025-01-30 09:15:00'),
(1, 'Bosque de Queñuales',    'Paisaje arbóreo de gran altitud.',                   'Ilustración Digital', 'Editorial',     'Marrón, Verde, Azul',     'https://cdn.trazomatch.pe/obras/10_quennual.png', TRUE,  550.00, '2025-02-01 11:20:00'),

-- Portafolio 2 (Artista 2 - 10 obras)
(2, 'Lluvia en Barranco',     'Reflejos de faroles sobre asfalto mojado.',          'Óleo sobre Lienzo',   'Impresionista', 'Azul Marino, Ámbar',      'https://cdn.trazomatch.pe/obras/11_barranco.png',  TRUE,  850.00, '2025-01-20 18:00:00'),
(2, 'Tranvía de Medianoche',  'Escena nocturna con luces cálidas.',                 'Óleo sobre Lienzo',   'Costumbrista',  'Dorado, Negro, Rojo',     'https://cdn.trazomatch.pe/obras/12_tranvia.png',   TRUE,  920.00, '2025-01-22 18:30:00'),
(2, 'Neblina en el Malecón',  'Acantilado envuelto en bruma vespertina.',            'Óleo sobre Lienzo',   'Atmosférico',   'Gris Perla, Celeste',     'https://cdn.trazomatch.pe/obras/13_malecon.png',   TRUE,  780.00, '2025-01-24 17:15:00'),
(2, 'Café de la Esquina',     'Interior iluminado desde una ventana.',               'Óleo sobre Lienzo',   'Realista',      'Marrón, Cálido, Crema',   'https://cdn.trazomatch.pe/obras/14_cafe.png',      TRUE,  690.00, '2025-01-26 19:00:00'),
(2, 'Puente Antiguo',          'Arcos de piedra bajo cielo nublado.',                 'Óleo sobre Lienzo',   'Clásico',       'Ocre, Gris, Azul',        'https://cdn.trazomatch.pe/obras/15_puente.png',    FALSE, NULL,   '2025-01-28 16:40:00'),
(2, 'Farola Solitaria',       'Luz intensa sobre calle empedrada.',                  'Óleo sobre Lienzo',   'Nocturno',      'Amarillo, Carbón',        'https://cdn.trazomatch.pe/obras/16_farola.png',    TRUE,  640.00, '2025-01-30 20:10:00'),
(2, 'Mercado al Amanecer',    'Primeros puestos abriendo con neón.',                'Óleo sobre Lienzo',   'Urbano',        'Naranja, Azul, Blanco',   'https://cdn.trazomatch.pe/obras/17_mercado.png',   TRUE,  810.00, '2025-02-02 07:50:00'),
(2, 'Callejón de Sombras',    'Contrastes marcados de luz y sombra.',               'Óleo sobre Lienzo',   'Expresionista', 'Negro, Siena, Gris',      'https://cdn.trazomatch.pe/obras/18_callejon.png',  FALSE, NULL,   '2025-02-04 18:25:00'),
(2, 'Buses en Av. Arequipa',  'Tránsito nocturno con estelas de luz.',               'Óleo sobre Lienzo',   'Contemporáneo', 'Rojo, Blanco, Negro',     'https://cdn.trazomatch.pe/obras/19_buses.png',     TRUE,  760.00, '2025-02-06 21:00:00'),
(2, 'Atardecer en el Puerto',   'Barcos anclados bajo cielo anaranjado.',             'Óleo sobre Lienzo',   'Paisajismo',    'Naranja, Violeta, Azul',  'https://cdn.trazomatch.pe/obras/20_puerto.png',    TRUE,  890.00, '2025-02-08 17:45:00'),

-- Portafolio 3 (Artista 3 - 10 obras)
(3, 'Ciudad Orbital 09',      'Estación espacial sobre planeta desértico.',          'Arte Digital 3D',     'Sci-Fi',        'Cian, Naranja, Negro',    'https://cdn.trazomatch.pe/obras/21_orbital.png',   TRUE,  950.00, '2025-01-25 14:00:00'),
(3, 'Mercado Cibernético',    'Puestos holográficos en callejón futuro.',           'Ilustración Digital', 'Cyberpunk',     'Neón Rosa, Azul Eléctrico','https://cdn.trazomatch.pe/obras/22_ciber.png',    TRUE,  880.00, '2025-01-27 15:20:00'),
(3, 'Explorador de Dunas',    'Viajero con traje térmico en dunas rojas.',           'Ilustración Digital', 'Concept Art',   'Rojo Óxido, Arena, Azul', 'https://cdn.trazomatch.pe/obras/23_dunas.png',     TRUE,  720.00, '2025-01-29 16:10:00'),
(3, 'Núcleo de Energía',      'Reactor luminoso en cámara subterránea.',             'Arte Digital 3D',     'Sci-Fi',        'Turquesa, Gris Metálico', 'https://cdn.trazomatch.pe/obras/24_nucleo.png',    TRUE,  670.00, '2025-01-31 11:40:00'),
(3, 'Puerta Estelar',         'Estructura monumental en órbita lunar.',             'Ilustración Digital', 'Espacial',      'Blanco, Plata, Negro',    'https://cdn.trazomatch.pe/obras/25_puerta.png',    FALSE, NULL,   '2025-02-02 13:00:00'),
(3, 'Dron de Reconocimiento', 'Diseño industrial de dron autónomo.',               'Concept Art',         'Industrial',    'Blanco, Naranja, Gris',   'https://cdn.trazomatch.pe/obras/26_dron.png',      TRUE,  600.00, '2025-02-04 09:50:00'),
(3, 'Jardín Hidropónico',     'Cultivos bajo domo de cristal en Marte.',            'Ilustración Digital', 'Solarpunk',     'Verde Brillante, Dorado', 'https://cdn.trazomatch.pe/obras/27_domo.png',      TRUE,  840.00, '2025-02-06 14:30:00'),
(3, 'Torre de Comunicaciones','Antena colosal entre nubes eléctricas.',             'Ilustración Digital', 'Sci-Fi',        'Púrpura, Amarillo, Negro','https://cdn.trazomatch.pe/obras/28_torre.png',     TRUE,  750.00, '2025-02-08 15:00:00'),
(3, 'Estudio de Exo-Traje',   'Bocetos técnicos de armadura ligera.',              'Concept Art',         'Técnico',       'Gris, Naranja',           'https://cdn.trazomatch.pe/obras/29_exotraje.png',  FALSE, NULL,   '2025-02-10 10:15:00'),
(3, ' Horizonte de Sucesos',  'Agujero negro distorsionando estrellas.',             'Arte Digital 3D',     'Cósmico',       'Dorado, Negro, Violeta',  'https://cdn.trazomatch.pe/obras/30_horizonte.png', TRUE,  990.00, '2025-02-12 17:20:00'),

-- Portafolio 4 (Artista 4 - 10 obras)
(4, 'Tensión Geométrica I',   'Intersección de planos y diagonales.',               'Linograbado',         'Geométrico',    'Negro, Rojo Bermellón',   'https://cdn.trazomatch.pe/obras/31_tension1.png',  TRUE,  520.00, '2025-01-26 11:00:00'),
(4, 'Ritmo Andino Abstracto', 'Secuencia rítmica inspirada en textiles.',            'Serigrafía',          'Abstracto',     'Ocre, Negro, Blanco',     'https://cdn.trazomatch.pe/obras/32_ritmo.png',     TRUE,  580.00, '2025-01-28 12:15:00'),
(4, 'Mural del Sol',          'Propuesta mural de formas circulares.',               'Acrílico sobre Muro', 'Muralismo',     'Amarillo, Terracota, Azul','https://cdn.trazomatch.pe/obras/33_mural.png',    TRUE,  1100.00,'2025-01-30 14:40:00'),
(4, 'Equilibrio Asimétrico',  'Bloques sólidos en balance visual.',                  'Linograbado',         'Minimalista',   'Negro, Gris Claro',       'https://cdn.trazomatch.pe/obras/34_equilibrio.png',TRUE,  470.00, '2025-02-01 10:20:00'),
(4, 'Laberinto de Líneas',    'Trama densa de líneas paralelas.',                   'Grabado en Metal',    'Op-Art',        'Negro, Blanco',           'https://cdn.trazomatch.pe/obras/35_laberinto.png', FALSE, NULL,   '2025-02-03 16:00:00'),
(4, 'Portal Escalonado',      'Referencia geométrica a arquitectura prehispánica.', 'Serigrafía',          'Geométrico',    'Terracota, Negro, Crema', 'https://cdn.trazomatch.pe/obras/36_portal.png',    TRUE,  630.00, '2025-02-05 11:50:00'),
(4, 'Círculos Concéntricos',  'Gradación de anillos cromáticos.',                   'Acrílico',            'Cinético',      'Azul, Verde, Amarillo',   'https://cdn.trazomatch.pe/obras/37_circulos.png',  TRUE,  540.00, '2025-02-07 15:10:00'),
(4, 'Matriz Urbana',          'Cuadrícula rítmica de edificios estilizados.',       'Linograbado',         'Constructivista','Rojo, Negro, Marfil',     'https://cdn.trazomatch.pe/obras/38_matriz.png',    TRUE,  490.00, '2025-02-09 13:30:00'),
(4, 'Prueba de Estado II',    'Grabado experimental con textura de papel.',        'Linograbado',         'Experimental',  'Negro, Sepia',            'https://cdn.trazomatch.pe/obras/39_prueba2.png',   FALSE, NULL,   '2025-02-11 09:40:00'),
(4, 'Fuerza Centrípeta',      'Composición radial dinámica.',                       'Serigrafía',          'Geométrico',    'Naranja, Negro, Gris',    'https://cdn.trazomatch.pe/obras/40_fuerza.png',    TRUE,  610.00, '2025-02-13 17:00:00'),

-- Portafolio 5 (Artista 5 - 10 obras)
(5, 'Zorro Curioso',         'Pequeño zorro observando una mariposa.',             'Ilustración Digital', 'Infantil',      'Naranja, Verde, Celeste', 'https://cdn.trazomatch.pe/obras/41_zorro.png',     TRUE,  350.00, '2025-01-28 09:30:00'),
(5, 'Nube Dormilona',         'Nube con gorro nocturno sobre estrellas.',            'Ilustración Digital', 'Infantil',      'Celeste, Amarillo, Lila', 'https://cdn.trazomatch.pe/obras/42_nube.png',      TRUE,  300.00, '2025-01-30 10:00:00'),
(5, 'Búho Lector',            'Búho sosteniendo un libro abierto.',                'Lápices de Color',    'Cuento',        'Marrón, Dorado, Verde',   'https://cdn.trazomatch.pe/obras/43_buho.png',      TRUE,  370.00, '2025-02-01 11:15:00'),
(5, 'Tren de Juguetes',       'Locomotora de madera con bloques coloridos.',         'Ilustración Digital', 'Infantil',      'Rojo, Azul, Amarillo',    'https://cdn.trazomatch.pe/obras/44_tren.png',      TRUE,  340.00, '2025-02-03 12:45:00'),
(5, 'Boceto de Dragón Bebé',  'Pruebas de expresión para personaje.',                'Lápiz',               'Boceto',        'Gris',                    'https://cdn.trazomatch.pe/obras/45_dragon.png',    FALSE, NULL,   '2025-02-05 14:20:00'),
(5, 'Picnic en el Bosque',    'Animales compartiendo frutas sobre mantel.',         'Ilustración Digital', 'Infantil',      'Verde, Rosa, Amarillo',   'https://cdn.trazomatch.pe/obras/46_picnic.png',    TRUE,  420.00, '2025-02-07 15:50:00'),
(5, 'Ballena de Papel',       'Ballena azul rodeada de burbujas.',                  'Acuarela Digital',    'Fantasía',      'Azul, Turquesa, Blanco',  'https://cdn.trazomatch.pe/obras/47_ballena.png',   TRUE,  390.00, '2025-02-09 16:10:00'),
(5, 'Casa del Árbol',         'Refugio colorido en las ramas altas.',               'Ilustración Digital', 'Infantil',      'Marrón, Verde, Rojo',     'https://cdn.trazomatch.pe/obras/48_casa.png',      TRUE,  410.00, '2025-02-11 10:30:00'),
(5, 'Conejito Saltarín',      'Salto alegre sobre flores de campo.',               'Lápices de Color',    'Tierno',        'Blanco, Rosa, Verde',     'https://cdn.trazomatch.pe/obras/49_conejito.png',  FALSE, NULL,   '2025-02-13 11:05:00'),
(5, 'Viaje en Globo',         'Globo aerostático sobre montañas suaves.',           'Ilustración Digital', 'Aventura',      'Coral, Celeste, Crema',   'https://cdn.trazomatch.pe/obras/50_globo.png',     TRUE,  440.00, '2025-02-15 13:20:00'),

-- Portafolio 6 (Artista 6 - 10 obras)
(6, 'Afiche Festival Indie',  'Cartel tipográfico y geométrico para festival.',     'Vector',              'Cartelismo',    'Amarillo, Negro, Magenta','https://cdn.trazomatch.pe/obras/51_festival.png',  TRUE,  480.00, '2025-02-02 10:00:00'),
(6, 'Portada Vinilo Sur',     'Arte de carátula de alto contraste.',               'Vector',              'Editorial',     'Naranja, Negro, Blanco',  'https://cdn.trazomatch.pe/obras/52_vinilo.png',    TRUE,  550.00, '2025-02-04 11:30:00'),
(6, 'Ciclo de Cine Clásico',  'Serie de íconos vectoriales de cine.',              'Vector',              'Minimalista',   'Rojo, Negro, Crema',      'https://cdn.trazomatch.pe/obras/53_cine.png',      TRUE,  430.00, '2025-02-06 12:00:00'),
(6, 'Feria del Libro Lima',   'Composición limpia con tipografía display.',        'Vector',              'Gráfico',       'Azul, Naranja, Blanco',   'https://cdn.trazomatch.pe/obras/54_feria.png',     TRUE,  460.00, '2025-02-08 14:15:00'),
(6, 'Grilla Experimental',    'Estudio de proporciones y módulos.',                'Vector',              'Suizo',         'Negro, Gris, Rojo',       'https://cdn.trazomatch.pe/obras/55_grilla.png',    FALSE, NULL,   '2025-02-10 15:40:00'),
(6, 'Semana del Diseño',      'Identidad visual en formato de póster.',             'Vector',              'Moderno',       'Verde Lima, Negro',       'https://cdn.trazomatch.pe/obras/56_diseno.png',    TRUE,  510.00, '2025-02-12 09:50:00'),
(6, 'Olas de Sonido',         'Representación visual de frecuencias musicales.',    'Vector',              'Abstracto',     'Violeta, Cian, Negro',    'https://cdn.trazomatch.pe/obras/57_ondas.png',     TRUE,  420.00, '2025-02-14 11:10:00'),
(6, 'Arquitectura en Línea',  'Fachadas icónicas trazadas en línea limpia.',       'Vector',              'Line Art',      'Negro, Amarillo Mostaza', 'https://cdn.trazomatch.pe/obras/58_fachadas.png',  TRUE,  470.00, '2025-02-16 14:00:00'),
(6, 'Boceto de Logotipo',     'Pruebas geométricas sin color final.',              'Vector',              'Boceto',        'Negro, Blanco',           'https://cdn.trazomatch.pe/obras/59_logo.png',      FALSE, NULL,   '2025-02-18 16:25:00'),
(6, 'Edición Especial Jazz',  'Póster inspirado en portadas de jazz clásico.',     'Vector',              'Retro',         'Azul Cobalto, Dorado',    'https://cdn.trazomatch.pe/obras/60_jazz.png',      TRUE,  530.00, '2025-02-20 17:30:00'),

-- Portafolio 7 (Artista 7 - 10 obras)
(7, 'Playa de Punta Hermosa', 'Acuarela suave de olas llegando a la orilla.',      'Acuarela',            'Costero',       'Turquesa, Arena, Blanco', 'https://cdn.trazomatch.pe/obras/61_playa.png',     TRUE,  360.00, '2025-02-06 09:00:00'),
(7, 'Retrato con Sombrero',   'Retrato luminoso con lavados translúcidos.',         'Acuarela',            'Retrato',       'Siena, Ocre, Celeste',    'https://cdn.trazomatch.pe/obras/62_retrato.png',   TRUE,  410.00, '2025-02-08 10:20:00'),
(7, 'Barcas en Mancora',      'Embarcaciones artesanales sobre agua clara.',       'Acuarela',            'Paisajismo',    'Azul Claro, Coral',       'https://cdn.trazomatch.pe/obras/63_barcas.png',    TRUE,  390.00, '2025-02-10 11:40:00'),
(7, 'Taza de Té en la Tarde', 'Bodegón sencillo con luz natural.',                 'Acuarela',            'Minimalista',   'Crema, Verde Suave',      'https://cdn.trazomatch.pe/obras/64_te.png',        TRUE,  290.00, '2025-02-12 15:00:00'),
(7, 'Mancha de Agua I',       'Prueba de pigmentos y humedad en papel.',           'Acuarela',            'Abstracto',     'Azul, Rosa, Violeta',     'https://cdn.trazomatch.pe/obras/65_mancha1.png',   FALSE, NULL,   '2025-02-14 16:15:00'),
(7, 'Acantilado al Sol',      'Rocas iluminadas por el sol de la tarde.',          'Acuarela',            'Naturalista',   'Terracota, Azul, Arena',  'https://cdn.trazomatch.pe/obras/66_acantilado.png',TRUE,  400.00, '2025-02-16 12:30:00'),
(7, 'Gaviotas en Vuelo',      'Aves sobre horizonte marino sereno.',               'Acuarela',            'Minimalista',   'Gris Plata, Celeste',     'https://cdn.trazomatch.pe/obras/67_gaviotas.png',  TRUE,  310.00, '2025-02-18 14:10:00'),
(7, 'Ventana al Mar',         'Vista interior hacia un balcón costero.',           'Acuarela',            'Poético',       'Blanco, Azul, Madera',    'https://cdn.trazomatch.pe/obras/68_ventana.png',   TRUE,  380.00, '2025-02-20 09:45:00'),
(7, 'Estudio de Sombras',     'Boceto rápido de figura humana.',                   'Acuarela',            'Boceto',        'Sepia, Gris',             'https://cdn.trazomatch.pe/obras/69_sombras.png',   FALSE, NULL,   '2025-02-22 11:00:00'),
(7, 'Atardecer Tropical',     'Cielo degradado sobre palmeras.',                   'Acuarela',            'Paisajismo',    'Rosa, Naranja, Violeta',  'https://cdn.trazomatch.pe/obras/70_tropical.png',  TRUE,  430.00, '2025-02-24 17:50:00'),

-- Portafolio 8 (Artista 8 - 10 obras)
(8, 'Synthwave 1984',         'Rejilla luminosa y horizonte retro.',               'Ilustración Digital', 'Retro-Futurista','Magenta, Cian, Negro',   'https://cdn.trazomatch.pe/obras/71_synth.png',     TRUE,  450.00, '2025-02-11 13:00:00'),
(8, 'Tipografía Cinética',    'Letras deformadas en composición dinámica.',        'Tipografía',          'Experimental',  'Blanco, Negro, Rojo',     'https://cdn.trazomatch.pe/obras/72_tipo.png',      TRUE,  370.00, '2025-02-13 14:20:00'),
(8, 'Cassette Nostalgia',     'Cinta de casete estilizada con estética pop.',     'Ilustración Digital', 'Retro',         'Amarillo, Rosa, Azul',    'https://cdn.trazomatch.pe/obras/73_cassette.png',  TRUE,  330.00, '2025-02-15 15:30:00'),
(8, 'Glitch Monocromo',       'Interferencia digital sobre retrato abstracto.',    'Arte Digital',        'Glitch',        'Blanco, Negro, Gris',     'https://cdn.trazomatch.pe/obras/74_glitch.png',    TRUE,  390.00, '2025-02-17 16:00:00'),
(8, 'Prueba Tipográfica',     'Muestra de glifos en borrador.',                   'Tipografía',          'Boceto',        'Negro, Blanco',           'https://cdn.trazomatch.pe/obras/75_glifos.png',    FALSE, NULL,   '2025-02-19 10:10:00'),
(8, 'Arcade de Barrio',       'Máquina recreativa con colores saturados.',         'Pixel Art',           'Retro',         'Púrpura, Amarillo, Cian', 'https://cdn.trazomatch.pe/obras/76_arcade.png',    TRUE,  420.00, '2025-02-21 12:40:00'),
(8, 'Poster Frecuencia FM',   'Gráfica audiorítmica para estación radial.',       'Ilustración Digital', 'Gráfico',       'Verde Neón, Negro',       'https://cdn.trazomatch.pe/obras/77_fm.png',        TRUE,  360.00, '2025-02-23 15:15:00'),
(8, 'Chrome Sphere',          'Esfera cromada reflejando entorno cuadriculado.',   'Arte Digital 3D',     'Y2K',           'Plateado, Azul, Rosa',    'https://cdn.trazomatch.pe/obras/78_chrome.png',    TRUE,  440.00, '2025-02-25 17:00:00'),
(8, 'Boceto de Trama',        'Patrón geométrico sin acabado final.',             'Ilustración Digital', 'Boceto',        'Gris, Blanco',            'https://cdn.trazomatch.pe/obras/79_trama.png',     FALSE, NULL,   '2025-02-27 09:20:00'),
(8, 'Pulso Electrónico',      'Ondas y bloques de alto contraste.',                'Ilustración Digital', 'Electrónico',   'Rojo, Negro, Amarillo',   'https://cdn.trazomatch.pe/obras/80_pulso.png',     TRUE,  410.00, '2025-03-01 11:45:00');

/* ===== 7. LICENCIAS Y DETALLE DE LICENCIA ===== */
INSERT INTO T_Licencia (idLicencia, idEmpresa, tipoLicencia, urlDocumentoLegal, fechaEmisión, fechaVencimiento) VALUES
(1, 11, 'Comercial - Empaques',  'https://docs.trazomatch.pe/licencias/lic_001.pdf', '2025-03-01 10:00:00', '2026-03-01 10:00:00'),
(2, 12, 'Uso en Videojuego',     'https://docs.trazomatch.pe/licencias/lic_002.pdf', '2025-03-05 11:30:00', NULL),
(3, 13, 'Campaña Digital',       'https://docs.trazomatch.pe/licencias/lic_003.pdf', '2025-03-10 14:00:00', '2025-09-10 14:00:00'),
(4, 14, 'Editorial - Portada',   'https://docs.trazomatch.pe/licencias/lic_004.pdf', '2025-03-15 16:20:00', NULL),
(5, 15, 'Corporativa Interna',   'https://docs.trazomatch.pe/licencias/lic_005.pdf', '2025-03-20 09:15:00', '2026-03-20 09:15:00'),
(6, 16, 'Promocional - Eventos', 'https://docs.trazomatch.pe/licencias/lic_006.pdf', '2025-03-25 13:45:00', '2025-12-31 23:59:59'),
(7, 17, 'Textil y Merchandising','https://docs.trazomatch.pe/licencias/lic_007.pdf', '2025-04-01 10:50:00', '2026-04-01 10:50:00'),
(8, 19, 'Portada Musical',       'https://docs.trazomatch.pe/licencias/lic_008.pdf', '2025-04-05 18:10:00', NULL);

INSERT INTO T_DetalleLicencia (idLicencia, idObra) VALUES
(1, 1),
(1, 7),
(2, 21),
(2, 22),
(3, 4),
(3, 8),
(4, 10),
(5, 31),
(6, 51),
(7, 61),
(7, 63),
(8, 71);

/* ===== 8. ENCARGOS ===== */
INSERT INTO T_Encargo (idEncargo, idEmpresa, idArtista, nombreEncargo, descripciónEncargo, estadoEncargo) VALUES
(1,  11, 1, 'Etiqueta Edición Andina',    'Ilustración botánica para lata de cerveza artesanal.',       'Terminado'),
(2,  12, 3, 'Arte Conceptual Nivel 4',    'Escenario futurista para misión principal del juego.',        'En proceso'),
(3,  13, 1, 'Serie de Granos Ancestrales', 'Cuatro piezas ilustrativas para línea orgánica.',          'Terminado'),
(4,  14, 5, 'Ilustraciones Cuento Bosque',  'Seis escenas infantiles para colección escolar.',           'En revisión'),
(5,  15, 4, 'Mural Oficina Central',      'Diseño geométrico para sala de innovación.',               'Aceptado'),
(6,  16, 6, 'Afiche Aniversario Media',   'Cartel promocional para evento anual.',                     'Terminado'),
(7,  17, 7, 'Colección Verano Costero',   'Acuarelas para estampados de temporada.',                  'En proceso'),
(8,  18, 2, 'Cuadro Institucional',       'Pintura urbana para recepción corporativa.',                'Terminado'),
(9,  19, 8, 'Identidad Visual Álbum',     'Arte de portada y contraportada para EP indie.',            'En revisión'),
(10, 20, 3, 'Ilustración Robótica',       'Concept art de brazo robótico para presentación.',          'Cancelado');

/* ===== 9. PAGOS ===== */
INSERT INTO T_Pago (idPago, idLicencia, idEncargo, monto, métodoPago, estadoPago, fechaPago) VALUES
(1,  1,    NULL, 810.00,  'Transferencia Bancaria', 'Completado', '2025-03-01 10:15:00'),
(2,  2,    NULL, 1830.00, 'Tarjeta de Crédito',     'Completado', '2025-03-05 11:45:00'),
(3,  3,    NULL, 710.00,  'Transferencia Bancaria', 'Completado', '2025-03-10 14:20:00'),
(4,  4,    NULL, 550.00,  'Tarjeta Corporativa',    'Completado', '2025-03-15 16:35:00'),
(5,  NULL, 1,    600.00,  'Transferencia Bancaria', 'Completado', '2025-03-18 12:00:00'),
(6,  NULL, 2,    500.00,  'Tarjeta de Crédito',     'Pendiente',  '2025-03-22 09:30:00'),
(7,  5,    NULL, 520.00,  'Transferencia Bancaria', 'Completado', '2025-03-20 09:40:00'),
(8,  6,    NULL, 480.00,  'Yape / Plin Empresa',    'Pendiente',  '2025-03-25 14:00:00'),
(9,  NULL, 3,    900.00,  'Transferencia Bancaria', 'Completado', '2025-03-28 17:10:00'),
(10, 7,    NULL, 750.00,  'Tarjeta de Crédito',     'Completado', '2025-04-01 11:15:00'),
(11, NULL, 6,    520.00,  'Transferencia Bancaria', 'Completado', '2025-04-03 15:50:00'),
(12, 8,    NULL, 450.00,  'Tarjeta de Débito',      'Rechazado',  '2025-04-05 18:20:00');

/* ===== 10. RESEÑAS (PK: idEmpresa, idArtista) ===== */
INSERT INTO T_Reseña (idEmpresa, idArtista, calificación, comentario, fechaReseña) VALUES
(11, 1, 5, 'Excelente nivel de detalle y entrega puntual en el encargo.',              '2025-03-20 18:00:00'),
(13, 1, 5, 'Las ilustraciones botánicas elevaron mucho la presentación del producto.', '2025-03-30 10:15:00'),
(12, 3, 4, 'Muy buen arte conceptual, comunicación clara durante el avance.',          '2025-03-26 16:40:00'),
(14, 5, 4, 'Personajes muy expresivos, solo faltaron pequeños ajustes de color.',      '2025-04-02 12:20:00'),
(15, 4, 5, 'Propuesta geométrica sólida y bien adaptada al espacio.',               '2025-03-24 11:05:00'),
(16, 6, 5, 'Entrega rápida y diseño gráfico impecable para el evento.',              '2025-04-04 17:30:00'),
(18, 2, 5, 'La pintura al óleo transmite exactamente la atmósfera buscada.',         '2025-04-06 09:50:00'),
(19, 8, 3, 'Buen estilo retro, aunque los tiempos de revisión se extendieron.',       '2025-04-07 19:10:00');