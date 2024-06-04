-- Crear la base de datos
DROP DATABASE IF EXISTS taller_mecanico;
CREATE DATABASE taller_mecanico;

-- Conectar a la base de datos
\c taller_mecanico;

-- Crear las tablas

-- Tabla tipo_documento
CREATE TABLE tipo_documento (
    _id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

-- Tabla localidad
CREATE TABLE localidad (
    _id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

-- Tabla provincia
CREATE TABLE provincia (
    _id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

-- Tabla chofer
CREATE TABLE chofer (
    _id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    telefono BIGINT NOT NULL,
    nro_doc BIGINT NOT NULL,
    tipo_doc INTEGER REFERENCES tipo_documento(_id),
    localidad INTEGER REFERENCES localidad(_id),
    provincia INTEGER REFERENCES provincia(_id)
);

-- Tabla modelo
CREATE TABLE modelo (
    _id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

-- Tabla marca
CREATE TABLE marca (
    _id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    modelo INTEGER REFERENCES modelo(_id)
);

-- Tabla titular
CREATE TABLE titular (
    _id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    telefono BIGINT NOT NULL,
    nro_doc BIGINT NOT NULL,
    tipo_doc INTEGER REFERENCES tipo_documento(_id),
    localidad INTEGER REFERENCES localidad(_id),
    provincia INTEGER REFERENCES provincia(_id)
);

-- Tabla vehiculo
CREATE TABLE vehiculo (
    dominio VARCHAR(10) PRIMARY KEY,
    marca INTEGER REFERENCES marca(_id),
    titular INTEGER REFERENCES titular(_id)
);

-- Tabla turno
CREATE TABLE turno (
    _id SERIAL PRIMARY KEY,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
    km INTEGER NOT NULL,
    dominio VARCHAR(10) REFERENCES vehiculo(dominio),
    chofer INTEGER REFERENCES chofer(_id)
);

-- Tabla tarea
CREATE TABLE tarea (
    _id SERIAL PRIMARY KEY,
    descripcion VARCHAR(255) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    turno INTEGER REFERENCES turno(_id)
);