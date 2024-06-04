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
    total DECIMAL(10,2) DEFAULT 0,
    punto_venta INTEGER REFERENCES punto_venta(_id)
);

-- Tabla detalle venta
CREATE TABLE detalle_venta (
    _id SERIAL PRIMARY KEY,
    cantidad INTEGER NOT NULL,
    subtotal DECIMAL(10,2) DEFAULT 0,
    producto INTEGER REFERENCES producto(_id),
    venta INTEGER REFERENCES venta(_id)
);
