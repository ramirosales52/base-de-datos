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
INSERT INTO bebida (nombre, precio, litros, cantidad_disponible) VALUES
  ('Cerveza', 3.00, 30.00, 12.00),
  ('Whisky', 7.00, 12.00, 7.00),
  ('Coca', 2.00, 50.00, 35.00),
  ('Agua', 2.00, 50.00, 20.00),
  ('Vino', 4.00, 50.00, 40.00),
  ('Vodka', 5.00, 30.00, 20.00);

-- Insertar datos en la tabla venta
INSERT INTO venta (fecha, barra) VALUES
  ('2024-05-27', 1),
  ('2024-05-28', 2),
  ('2024-05-29', 3),
  ('2024-05-29', 4),
  ('2024-05-30', 4),
  ('2024-05-31', 4);

-- Insertar datos en la tabla detalle_venta
INSERT INTO detalle_venta (venta, bebida, cantidad) VALUES
  (1, 1, 1),
  (1, 2, 2),

  (2, 1, 1),

  (3, 2, 2),
  (3, 3, 2),

  (4, 3, 4),
  (4, 4, 1),

  (5, 6, 1),
  
  (6, 1, 1),
  (6, 2, 1),
  (6, 4, 3);
