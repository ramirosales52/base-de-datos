-- Insertar datos en la tabla punto_venta
INSERT INTO punto_venta (nombre) VALUES
  ('Tienda 1'),
  ('Tienda 2'),
  ('Tienda 3'),
  ('Tienda 4');

-- Insertar datos en la tabla producto
INSERT INTO producto (nombre, consumo_harina_kg, precio_kg) VALUES
  ('Ravioles', 0.2, 1100),
  ('Tallarines', 0.25, 1200),
  ('Sorrentinos', 0.35, 1500),
  ('Ñoquis', 0.15, 1800);

-- Insertar datos en la tabla venta
INSERT INTO venta (fecha, punto_venta) VALUES
  ('2024-05-28', 1),
  ('2024-05-28', 2),
  ('2024-05-27', 3),
  ('2024-05-27', 3),
  ('2024-05-26', 4),
  ('2024-05-25', 4);

-- Insertar datos en la tabla detalle_venta
INSERT INTO detalle_venta (venta, producto, cantidad) VALUES
  (1, 1, 2),
  (1, 2, 4),
  (1, 3, 1),
  (1, 4, 2),

  (2, 1, 3),
  (2, 2, 4),

  (3, 1, 2),
  (3, 3, 1),
  (3, 4, 2),

  (4, 3, 3),
  (4, 4, 1),

  (5, 2, 1),

  (6, 1, 1),
  (6, 2, 1),
  (6, 3, 3);
