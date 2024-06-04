-- Crear la base de datos
DROP DATABASE IF EXISTS boliche;
CREATE DATABASE boliche;

-- Conectar a la base de datos
\c boliche;

-- Crear las tablas

-- Tabla pista
CREATE TABLE pista (
    _id SERIAL PRIMARY KEY,
    nombre VARCHAR(100)
);

-- Tabla empleado
CREATE TABLE empleado (
    _id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    nro_documento BIGINT NOT NULL,
    telefono BIGINT NOT NULL
);

-- Tabla barra
CREATE TABLE barra (
    _id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    empleado INTEGER REFERENCES empleado(_id)
);

-- Tabla bebida
CREATE TABLE bebida (
    _id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    precio DECIMAL(10, 2),
    litros DECIMAL(10, 2),
    cantidad_disponible DECIMAL(10, 2)
);

-- Tabla venta
CREATE TABLE venta (
    _id SERIAL PRIMARY KEY,
    fecha DATE,
    barra INTEGER REFERENCES barra(_id)
);

-- Tabla detalle_venta
CREATE TABLE detalle_venta (
    _id SERIAL PRIMARY KEY,
    cantidad INTEGER,
    venta INTEGER REFERENCES venta(_id),
    bebida INTEGER REFERENCES bebida(_id)
);
