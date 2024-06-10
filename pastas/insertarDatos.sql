-- Insertar datos en la tabla punto_venta
INSERT INTO punto_venta (nombre) VALUES
  ('Tienda 1'),
  ('Tienda 2'),
  ('Tienda 3'),
  ('Tienda 4');

-- Insertar datos en la tabla producto
INSERT INTO producto (nombre, precio) VALUES
  ('Ravioles de carne', 1100),
  ('Tallarines', 1200),
  ('Sorrentinos de jamón y queso', 1500),
  ('Ñoquis', 1800);

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

INSERT INTO unidad_medida (nombre) VALUES
('ml'),
('kg'),
('unidad');

INSERT INTO ingrediente (nombre) VALUES
('Harina'), 
('Huevo'),
('Carne'),
('Sal'), 
('Aceite de oliva'), 
('Agua'),
('Jamon'),
('Queso'),
('Atado de brocoli'),
('Ajo'),
('Aceite'),
('Papa');         

INSERT INTO detalle_ingrediente (cantidad, unidad_medida, ingrediente, producto) VALUES
(1, 2, 1, 1),
(4, 3, 2, 1),
(0.5, 2, 3, 1),
(0.05, 2, 4, 1),
(0.02, 1, 5, 1),
(200, 1, 6, 1),

(0.4, 2, 1, 2),
(4, 3, 2, 2),
(0.02, 1, 5, 2),
(1, 3, 9, 2),
(2, 3, 10, 2),
(0.05, 2, 4, 2),

(0.5, 2, 1, 3),
(0.04, 1, 11, 3),
(0.02, 2, 4, 3),
(0.2, 2, 7, 3),
(0.3, 2, 8, 3),
(1, 3, 2, 3),

(1, 2, 12, 4),
(0.3, 2, 1, 4),
(1, 3, 2, 4),
(0.05, 2, 4, 4)
;