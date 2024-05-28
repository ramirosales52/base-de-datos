-- Insertar datos de ejemplo (opcional)
INSERT INTO tipo_documento (nombre) VALUES 
  ('DNI'), 
  ('Pasaporte');
INSERT INTO provincia (nombre) VALUES 
  ('Buenos Aires'), 
  ('Córdoba'), 
  ('Santa Fe');
INSERT INTO localidad (nombre) VALUES
  ('Mar del Plata'),
  ('Rosario'),
  ('Córdoba');

-- Ejemplo de inserción de datos
INSERT INTO chofer (nombre, telefono, nro_doc, tipo_doc, localidad, provincia) VALUES 
  ('Juan Perez', 1123456789, 12345678, 1, 1, 1),
  ('Carlos Gimenez', 1234556789, 453456789, 2, 3, 2);

INSERT INTO modelo (nombre) VALUES 
  ('Modelo A'),
  ('Modelo B'),
  ('Modelo C');
INSERT INTO marca (nombre, modelo) VALUES 
  ('Marca A', 1),
  ('Marca B', 2),
  ('Marca B', 3);

INSERT INTO titular (nombre, telefono, nro_doc, tipo_doc, localidad, provincia) VALUES
  ('Carlos Gomez', 1098765432, 11234555, 1, 1, 1),
  ('Juan Garcia', 1098765432, 11222321, 2, 3, 2),
  ('Jose Rodriguez', 1098762332, 11122321, 1, 2, 3);

INSERT INTO vehiculo (dominio, marca, titular) VALUES 
  ('ABC123', 1, 1),
  ('AAA456', 2, 2),
  ('BBB789', 2, 3);

INSERT INTO turno (fecha, hora, km, km_acumulados, dominio, chofer) VALUES
  ('2024-05-21', '10:00', 50000, 50000, 'ABC123', 1),
  ('2024-06-02', '11:00', 10000, 20000, 'AAA456', 1),
  ('2024-06-28', '12:00', 15000, 30000, 'BBB789', 2);

INSERT INTO tarea (descripcion, precio, turno) VALUES
  ('Cambio de aceite', 1500.00, 1),
  ('Balanceo', 3000.00, 2),
  ('Cambio de filtros', 2000.00, 3);

INSERT INTO caja_diaria (fecha, ingreso, egreso) VALUES  
  ('2024-05-21', 1500.00, 0),
  ('2024-06-02', 3000.00, 1000),
  ('2024-06-28', 2000.00, 500);

