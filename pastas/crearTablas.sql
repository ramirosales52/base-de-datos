-- Crear la base de datos
DROP DATABASE IF EXISTS fabrica_pastas;
CREATE DATABASE fabrica_pastas;

-- Conectar a la base de datos
\c fabrica_pastas;

-- CREAR TABLAS

-- Tabla punto de venta
CREATE TABLE punto_venta (
    _id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

-- Tabla producto
CREATE TABLE producto (
    _id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    consumo_harina_kg DECIMAL(10,2) NOT NULL,
    precio_kg DECIMAL(10,2) NOT NULL
);

-- Tabla venta
CREATE TABLE venta (
    _id SERIAL PRIMARY KEY,
    fecha DATE,
    punto_venta INTEGER REFERENCES punto_venta(_id)
);

-- Tabla detalle venta
CREATE TABLE detalle_venta (
    _id SERIAL PRIMARY KEY,
    cantidad INTEGER NOT NULL,
    producto INTEGER REFERENCES producto(_id),
    venta INTEGER REFERENCES venta(_id)
);

CREATE TABLE unidad_medida (
    _id SERIAL PRIMARY KEY,
    nombre VARCHAR(30)d NOT NULL
);

CREATE TABLE ingrediente (
    _id SERIAL PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    cantidad DECIMAL(10,2)  NOT NULL DEFAULT 0,
    unidad_medida INTEGER REFERENCES unidad_medida(_id),
    producto INTEGER REFERENCES producto(_id)
);