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


-- Tabla venta
CREATE TABLE venta (
    _id SERIAL PRIMARY KEY,
    fecha DATE,
    barra INTEGER REFERENCES barra(_id)
);

-- Tabla trago
CREATE TABLE trago (
    _id SERIAL PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    volumen_ml INTEGER NOT NULL,
    precio DECIMAL(10,2) NOT NULL
);


-- Tabla detalle_venta
CREATE TABLE detalle_venta (
    _id SERIAL PRIMARY KEY,
    cantidad INTEGER,
    venta INTEGER REFERENCES venta(_id),
    trago INTEGER REFERENCES trago(_id)
);



-- Tabla bebida
CREATE TABLE bebida (
    _id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    cantidad_ml INTEGER NOT NULL
);


-- Tabla detalle del trago
CREATE TABLE detalle_trago (
    _id SERIAL PRIMARY KEY,
    cantidad DECIMAL(10,2) NOT NULL DEFAULT 0,
    bebida INTEGER REFERENCES bebida(_id),
    trago INTEGER REFERENCES trago(_id)
);