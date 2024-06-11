-- Insertar datos en la tabla pista
INSERT INTO pista (nombre) VALUES
  ('Pista 1'),
  ('Pista 2'),
  ('Pista 3'),
  ('Pista 4'),
  ('Pista 5');

-- Insertar datos en la tabla empleado
INSERT INTO empleado (nombre, nro_documento, telefono) VALUES 
  ('Juan Pérez', 12345678, 1111111111),
  ('María García', 87654321, 2222222222),
  ('Carlos López', 56789012, 3333333333),
  ('Jose Gonzalez', 321654987, 4444444444);

-- Insertar datos en la tabla barra
INSERT INTO barra (nombre, empleado) VALUES 
  ('Barra 1', 1),
  ('Barra 2', 2),
  ('Barra 3', 3),
  ('Barra 4', 4);

-- Insertar datos en la tabla bebida
INSERT INTO bebida (nombre, cantidad_ml) VALUES
  ('Whisky', 1000),
  ('Gin', 800),
  ('Agua tónica', 1000),
  ('Coca Cola', 2500),
  ('Fernet', 1000),
  ('Jugo de naranja', 3000),
  ('Vodka', 750),
  ('Ron', 1000),
  ('Licor de melón', 1000);

-- Insertar datos en la tabla venta
INSERT INTO venta (fecha, barra) VALUES
  ('2024-05-27', 1),
  ('2024-05-28', 2),
  ('2024-05-29', 3),
  ('2024-05-29', 4),
  ('2024-05-30', 4),
  ('2024-05-31', 4);

INSERT INTO trago (nombre, volumen_ml, precio) VALUES
('Fernet con coca', 300, 3000),
('Whiscola', 100, 2000),
('Gin tonic', 100, 1500),
('Destornillador', 100, 1000),
('Vodka y melón', 150, 2000);


-- Insertar datos en la tabla detalle_venta
INSERT INTO detalle_venta (venta, trago, cantidad) VALUES
  (1, 1, 1),
  (1, 2, 2),

  (2, 4, 1),

  (3, 2, 2),
  (3, 3, 2),

  (4, 3, 4),
  (4, 5, 1),

  (5, 1, 1),
  
  (6, 1, 1),
  (6, 4, 1),
  (6, 3, 3);



INSERT INTO detalle_trago (cantidad, bebida, trago) VALUES
(200, 4, 1),
(100, 5, 1),

(30, 1, 2),
(70, 4, 2),

(30, 2, 3),
(70, 3, 3),

(60, 7, 4),
(100, 6, 4),

(60, 7, 5),
(90, 9, 5);