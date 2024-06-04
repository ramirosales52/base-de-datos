-- calcular totales y subtotales
UPDATE detalle_venta
SET subtotal = cantidad *(
  SELECT precio
  FROM bebida
  WHERE bebida._id = detalle_venta.bebida
);

UPDATE venta
SET total = (
  SELECT SUM(subtotal)
  FROM detalle_venta
  WHERE detalle_venta.venta = venta._id
);


-- Cuanto se recaudo en cada barra.
SELECT 
  b.nombre AS "Barra",
  '$ ' || SUM(v.total) AS "Recaudado"
FROM venta v
JOIN barra b ON v.barra = b._id
GROUP BY b.nombre
ORDER BY b.nombre;

-- Cual es el monto recaudado entre las barras.
SELECT 
  '$ ' || SUM(total) AS "Recaudacion Total"
FROM venta;

-- En que o cuales barras se produjo el mayor monto recaudado.
WITH recaudacion_por_barra AS (
    SELECT 
      barra,
      SUM(total) AS recaudado
    FROM venta
    GROUP BY barra
)
SELECT 
  b.nombre AS "Barra con más recaudación",
  '$ ' || r.recaudado AS "Recaudado"
FROM recaudacion_por_barra r
JOIN barra b ON r.barra = b._id
WHERE r.recaudado = (SELECT MAX(recaudado) FROM recaudacion_por_barra);

-- Cuales fueron las 5 bebidas que mas se vendieron.
SELECT 
  b.nombre AS "Bebidas más vendidas", 
  SUM(dv.cantidad) AS "Cantidad Vendida"
FROM detalle_venta dv
JOIN bebida b ON dv.bebida = b._id
GROUP BY b.nombre
ORDER BY SUM(dv.cantidad) DESC
LIMIT 5;

-- Cuantas litros de bebidas se deben reponer.
SELECT 
  nombre AS "Bebidas reponer",
  litros - cantidad_disponible || ' l' AS "Litros a Reponer"
FROM bebida;

