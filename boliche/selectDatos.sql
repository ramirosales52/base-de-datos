

-- Cuanto se recaudo en cada barra.
SELECT 
  b.nombre AS "Barra",
   SUM(dv.cantidad * dv.precio) AS "Recaudado"
FROM 
  barra b
JOIN 
  venta v ON b._id = v.barra
JOIN 
  detalle_venta dv ON v._id = dv.venta
GROUP BY 
  b._id, b.nombre,
WHERE 
  v.fecha = CURRENT_DATE;

-- Cual es el monto recaudado entre las barras.
SELECT 
  SUM(dv.cantidad * dv.precio) AS "Total recaudado"
FROM 
  barra b
JOIN 
  venta v ON b._id = v.barra
JOIN 
  detalle_venta dv ON v._id = dv.venta
WHERE 
  v.fecha = CURRENT_DATE;


-- En que o cuales barras se produjo el mayor monto recaudado.
SELECT 
  b.nombre AS "Barra con mayor recaudación",
  SUM(dv.cantidad * dv.precio) AS "Recaudado"
FROM 
  barra b
JOIN 
  venta v ON b._id = v.barra
JOIN 
  detalle_venta dv ON v._id = dv.venta
GROUP BY 
  b.nombre
ORDER BY 
  SUM(dv.cantidad * dv.precio) DESC
LIMIT 1;


-- Cuales fueron las 5 bebidas que mas se vendieron.
SELECT 
  t.nombre AS "Bebidas más vendidas", 
  SUM(dv.cantidad) AS "Cantidad Vendida"
FROM 
  detalle_venta dv
JOIN 
  trago t ON dv.trago = t._id
GROUP BY 
  t.nombre
ORDER BY 
  SUM(dv.cantidad) DESC
LIMIT 5;

-- Cuantas litros de bebidas se deben reponer.
SELECT
  b.nombre AS "Bebida",
  SUM(dv.cantidad * dt.cantidad) * 0.001 AS "Cantidad a reponer en litros"
FROM 
  detalle_venta dv
JOIN
  trago t ON dv.trago = t._id
JOIN
  detalle_trago dt ON t._id = dt.trago
JOIN
  bebida b ON dt.bebida = b._id
GROUP BY
  b.nombre
ORDER BY
  b.nombre;


