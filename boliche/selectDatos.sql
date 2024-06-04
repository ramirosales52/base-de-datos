

-- Cuanto se recaudo en cada barra.
SELECT 
  b.nombre AS "Barra",
   SUM(dv.cantidad * bd.precio) AS "Recaudado"
FROM 
  barra b
JOIN 
  venta v ON b._id = v.barra
JOIN 
  detalle_venta dv ON v._id = dv.venta
JOIN 
  bebida bd ON dv.bebida = bd._id
GROUP BY 
  b._id, b.nombre;

-- Cual es el monto recaudado entre las barras.
SELECT 
  SUM(dv.cantidad * bd.precio) AS "Total recaudado"
FROM 
  barra b
JOIN 
  venta v ON b._id = v.barra
JOIN 
  detalle_venta dv ON v._id = dv.venta
JOIN 
  bebida bd ON dv.bebida = bd._id;


-- En que o cuales barras se produjo el mayor monto recaudado.
SELECT 
  b.nombre AS "Barra con mayor recaudación",
  SUM(dv.cantidad * bd.precio) AS "Recaudado"
FROM 
  barra b
JOIN 
  venta v ON b._id = v.barra
JOIN 
  detalle_venta dv ON v._id = dv.venta
JOIN 
  bebida bd ON dv.bebida = bd._id
GROUP BY 
  b.nombre
ORDER BY 
  SUM(dv.cantidad * bd.precio) DESC
LIMIT 1;


-- Cuales fueron las 5 bebidas que mas se vendieron.
SELECT 
  b.nombre AS "Bebidas más vendidas", 
  SUM(dv.cantidad) AS "Cantidad Vendida"
FROM 
  detalle_venta dv
JOIN 
  bebida b ON dv.bebida = b._id
GROUP BY 
  b.nombre
ORDER BY 
  SUM(dv.cantidad) DESC
LIMIT 5;

-- Cuantas litros de bebidas se deben reponer.
SELECT 
  nombre AS "Bebidas reponer",
  litros - cantidad_disponible || ' l' AS "Litros a Reponer"
FROM bebida;

