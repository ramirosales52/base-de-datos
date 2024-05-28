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
INSERT INTO venta (fecha, punto_venta, total ) VALUES
  ('2024-05-28', 1, 12100),
  ('2024-05-28', 2, 8100),
  ('2024-05-27', 3, 7300),
  ('2024-05-27', 3, 6300),
  ('2024-05-26', 4, 1200),
  ('2024-05-25', 4, 6800);

-- Insertar datos en la tabla detalle_venta
INSERT INTO detalle_venta (venta, producto, cantidad, subtotal) VALUES
  (1, 1, 2, 2200),
  (1, 2, 4, 4800),
  (1, 3, 1, 1500),
  (1, 4, 2, 3600),

  (2, 1, 3, 3300),
  (2, 2, 4, 4800),

  (3, 1, 2, 2200),
  (3, 3, 1, 1500),
  (3, 4, 2, 3600),

  (4, 3, 3, 4500),
  (4, 4, 1, 1800),

  (5, 2, 1, 1200),

  (6, 1, 1, 1100),
  (6, 2, 1, 1200),
  (6, 3, 3, 1500);
