/* ===== CREACIÓN DE LA BASE DE DATOS ===== */

CREATE DATABASE IF NOT EXISTS TrazoMatch;
USE TrazoMatch;

/* ===== CREACIÓN DE LAS TABLAS ===== */

CREATE TABLE IF NOT EXISTS T_Cuenta (
    idCuenta INTEGER AUTO_INCREMENT NOT NULL UNIQUE PRIMARY KEY,
    correo VARCHAR(50) NOT NULL UNIQUE,
    contraseña VARCHAR(20) NOT NULL,
    tipoUsuario INTEGER NOT NULL DEFAULT 1 CHECK (tipoUsuario IN (1, 2)),
    fechaCreación DATETIME NOT NULL DEFAULT (SYSDATE()),
    teléfono VARCHAR(15) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS T_Artista (
    idArtista INTEGER NOT NULL UNIQUE PRIMARY KEY, /* No se usa AUTO_INCREMENT, porque es el mismo id que idCuenta */
    nombreArtista VARCHAR(20) NOT NULL,
    apellidoArtista VARCHAR(20) NOT NULL,
    dni VARCHAR(8) NOT NULL UNIQUE,
    nombreArtístico VARCHAR(30) NOT NULL UNIQUE,
    biografía TEXT,
    estáVerificado  BOOLEAN NOT NULL DEFAULT FALSE,
    FOREIGN KEY(idArtista) REFERENCES T_Cuenta(idCuenta)
);

CREATE TABLE IF NOT EXISTS T_RedSocial (
    idRedSocial INTEGER AUTO_INCREMENT NOT NULL UNIQUE PRIMARY KEY,
    idArtista INTEGER NOT NULL,
    nombreRedSocial VARCHAR(30)  NOT NULL,
    link VARCHAR(200) UNIQUE NOT NULL,
    FOREIGN KEY(idArtista) REFERENCES T_Artista(idArtista)
);

CREATE TABLE IF NOT EXISTS T_Empresa (
    idEmpresa INTEGER NOT NULL UNIQUE PRIMARY KEY, /* No se usa AUTO_INCREMENT, porque es el mismo id que idCuenta */
    razónSocial VARCHAR(100) NOT NULL,
    ruc VARCHAR(11) NOT NULL UNIQUE,
    nombreRepresentante VARCHAR(20) NOT NULL,
    apellidoRepresentante VARCHAR(20) NOT NULL,
    FOREIGN KEY(idEmpresa) REFERENCES T_Cuenta(idCuenta)
);

CREATE TABLE IF NOT EXISTS T_Portafolio (
    idPortafolio INTEGER AUTO_INCREMENT NOT NULL UNIQUE PRIMARY KEY,
    idArtista INTEGER NOT NULL,
    descripciónPortafolio TEXT,
    FOREIGN KEY(idArtista) REFERENCES T_Artista(idArtista)
);

CREATE TABLE IF NOT EXISTS T_Obra (
    idObra INTEGER AUTO_INCREMENT NOT NULL UNIQUE PRIMARY KEY,
    idPortafolio INTEGER NOT NULL,
    nombreObra VARCHAR(100) NOT NULL,
    descripción TEXT,
    tipoTécnica VARCHAR(30) NOT NULL,
    estilo VARCHAR(30) NOT NULL,
    paletaColores VARCHAR(50) NOT NULL,
    urlImagen VARCHAR(500) NOT NULL,
    esLicenciable BOOLEAN NOT NULL,
    precioBase DECIMAL(10, 2), /* Precio opcional, solo si es licenciable */
    fechaCreación DATETIME NOT NULL DEFAULT (SYSDATE()),
    FOREIGN KEY(idPortafolio) REFERENCES T_Portafolio(idPortafolio)
);

CREATE TABLE IF NOT EXISTS T_Licencia (
    idLicencia INTEGER AUTO_INCREMENT NOT NULL UNIQUE PRIMARY KEY,
    idEmpresa INTEGER NOT NULL,
    tipoLicencia VARCHAR(50) NOT NULL,
    urlDocumentoLegal VARCHAR(500) NOT NULL UNIQUE,
    fechaEmisión DATETIME NOT NULL DEFAULT (SYSDATE()),
    fechaVencimiento DATETIME, /* Puede ser NULL si es una licencia de tiempo indefinido */
    FOREIGN KEY(idEmpresa) REFERENCES T_Empresa(idEmpresa)
);

CREATE TABLE IF NOT EXISTS T_DetalleLicencia (
    idLicencia INTEGER NOT NULL,
    idObra INTEGER NOT NULL,
    PRIMARY KEY (idLicencia, idObra),
    FOREIGN KEY(idLicencia) REFERENCES T_Licencia(idLicencia),
    FOREIGN KEY(idObra) REFERENCES T_Obra(idObra)
);

CREATE TABLE IF NOT EXISTS T_Encargo (
    idEncargo INTEGER AUTO_INCREMENT NOT NULL UNIQUE PRIMARY KEY,
    idEmpresa INTEGER NOT NULL,
    idArtista INTEGER NOT NULL,
    nombreEncargo VARCHAR(100) NOT NULL,
    descripciónEncargo TEXT NOT NULL,
    estadoEncargo VARCHAR(20) NOT NULL DEFAULT 'En proceso' CHECK (estadoEncargo IN ('Aceptado', 'En proceso', 'En revisión', 'Terminado', 'Cancelado')),
    FOREIGN KEY(idEmpresa) REFERENCES T_Empresa(idEmpresa),
    FOREIGN KEY (idArtista) REFERENCES T_Artista (idArtista)
);

CREATE TABLE IF NOT EXISTS T_Pago (
    idPago INTEGER AUTO_INCREMENT NOT NULL UNIQUE PRIMARY KEY,
    idLicencia INTEGER,
    idEncargo INTEGER,
    monto DECIMAL(10, 2) NOT NULL,
    métodoPago VARCHAR(30) NOT NULL,
    estadoPago VARCHAR(30) NOT NULL DEFAULT 'Pendiente' CHECK (estadoPago IN ('Completado', 'Pendiente', 'Rechazado')),
    fechaPago DATETIME NOT NULL DEFAULT (SYSDATE()),
    FOREIGN KEY(idLicencia) REFERENCES T_Licencia(idLicencia),
    FOREIGN KEY(idEncargo) REFERENCES T_Encargo(idEncargo)
);

CREATE TABLE IF NOT EXISTS T_Reseña (
    idEmpresa INTEGER NOT NULL,
    idArtista INTEGER NOT NULL,
    calificación INTEGER NOT NULL,
    comentario TEXT,
    fechaReseña DATETIME NOT NULL DEFAULT (SYSDATE()),
    PRIMARY KEY (idEmpresa, idArtista),
    FOREIGN KEY(idArtista) REFERENCES T_Artista(idArtista),
    FOREIGN KEY(idEmpresa) REFERENCES T_Empresa(idEmpresa)
);