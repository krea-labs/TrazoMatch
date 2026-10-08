Create Database TrazoMatch;
Use TrazoMatch;

Create Table cuenta (
	id_cuenta Int auto_increment Not Null Unique,
    correo varchar(25) Not Null Unique,
    contrasena varchar(25) Not Null,
    tipo_usuario Int Not Null, 
-- Tipo de Usuario: 1 (Segmento 1: Empresas), 2 (Segmento 2: [Artistas, Diseñadores Graficos, etc])
    fecha_creacion Datetime Not Null,
    Primary Key (id_cuenta)
) ENGINE=INNODB;

Create Table artista (
	id_artista Int auto_increment Not Null Unique, -- Primary Foreign Key
    nombre varchar(25) Not Null,
    apellido varchar(25) Not Null,
    nombre_artistico varchar(25) Not Null Unique,
    biografia text,
    telefono Int Not Null,
    Primary Key (id_artista),
    Foreign Key (id_artista) References cuenta(id_cuenta)
) ENGINE=INNODB;

Create Table portafolio (
	id_portafolio Int auto_increment Not Null Unique,
    id_artista Int Not Null Unique,
    descripcion text,
    Primary key (id_portafolio),
    Foreign Key (id_artista) References artista(id_artista)
);

Create Table obra (
	id_obra Int auto_increment Not Null Unique,
    id_portafolio Int Not Null Unique,
    nombre varchar(25) Not Null,
    descripcion text,
    tipo_tecnica varchar(30) Not Null,
    estilo varchar(30) Not Null,
    paleta_colores varchar(30) Not Null,
    imagen varbinary(256) Not Null,
    es_licenciable Bool Not Null,
    precio_base Float,
    fecha_creacion Datetime Not Null,
    Primary Key (id_obra),
    Foreign Key (id_portafolio) References portafolio(id_portafolio)
);

Create Table red_social (
	id_red_social Int auto_increment Not Null Unique,
    id_artista Int Not Null Unique,
    nombre varchar(25) Not Null,
    url varchar(225) Not Null,
    Primary Key (id_red_social),
    Foreign Key (id_artista) References artista(id_artista)
);

Create Table empresa (
	id_empresa Int auto_increment Not Null Unique, -- Primary Foreign Key
    razon_social varchar(100) Not Null,
    ruc varchar(11) Not Null Unique,
    nombre_representante varchar(25) Not Null,
    apellido_representante varchar(25) Not Null,
    telefono Int Not Null Unique,
    Primary Key (id_empresa),
    Foreign Key (id_empresa) References cuenta(id_cuenta)
) ENGINE=INNODB;

Create Table licencia (
	id_licencia Int auto_increment Not Null Unique,
    id_empresa Int Not Null Unique,
    tipo_licencia varchar(25) Not Null,
    documento_legal varbinary(255) Not Null Unique,
    fecha_emision Datetime Not Null,
    Primary Key (id_licencia),
    Foreign Key (id_empresa) References empresa(id_empresa)
);

Create Table detalle_licencia (
	id_licencia Int Not Null Unique,
    id_obra Int Not Null Unique,
    Foreign Key (id_licencia) References licencia(id_licencia),
    Foreign Key (id_obra) References obra(id_obra)
) ENGINE=INNODB;

Create Table resena (
	id_artista Int Not Null Unique, -- Primary Foreign Key
    id_empresa Int Not Null Unique, -- Primary Foreign Key
    calificacion Int Not Null,
    comentario Text,
    fecha_resena Datetime Not Null,
    Foreign Key (id_artista) References artista(id_artista),
    Foreign Key (id_empresa) References empresa(id_empresa)
) ENGINE=INNODB;

Create Table encargo (
	id_encargo Int auto_increment Not Null Unique,
    id_empresa Int Not Null Unique,
    id_artista Int Not Null Unique,
    nombre varchar(25) Not Null,
    descripcion Text,
    estado Int Not Null, -- Estado: 1 (pendiente), 2 (en proceso), 3 (Finalizado)
    Primary Key (id_encargo),
    Foreign Key (id_empresa) References empresa(id_empresa),
    Foreign Key (id_artista) References artista(id_artista)
);

Create Table pago (
	id_pago Int auto_increment Not Null Unique,
    id_licencia Int Not Null Unique,
    id_encargo Int Not Null Unique,
    monto Float Not Null,
    metodo_pago varchar(25) Not Null,
    estado_pago Int Not Null, -- Estado Pago: 1 (pendiente), 2 (procesando), 3 (Pagado), 4 (pago rechazado)
    fecha_pago Datetime Not Null,
    Primary Key (id_pago),
    Foreign Key (id_licencia) References licencia(id_licencia),
    Foreign key (id_encargo) References encargo(id_encargo)
);

-- In case we need to modified something DO NOT RUN
Drop Database TrazoMatch;

Drop Table artista;
Drop Table cuenta;
Drop Table detalle_licencia;
Drop Table empresa;
Drop Table encargo;
Drop Table licencia;
Drop Table obra;
Drop Table pago;
Drop Table portafolio;
Drop Table red_social;
Drop Table resena;
