-- Cuanto dinero se recaudo en cada punto de venta.
SELECT 
  pv.nombre AS "Punto de Venta",
  '$ ' || SUM(v.total) AS "Recaudado"
FROM venta v
JOIN punto_venta pv ON v.punto_venta = pv._id
GROUP BY pv.nombre
ORDER BY pv.nombre;

-- Cual es el mayor monto recaudado entre los mostradores.
SELECT 
  '$ ' || SUM(total) AS "Recaudacion Total"
FROM venta;

--  En cual o cuales mostradores se produjeron estas mayores recaudaciones.
WITH recaudacion_por_pv AS (
    SELECT 
      punto_venta,
      SUM(total) AS recaudado
    FROM venta
    GROUP BY punto_venta
)
SELECT 
  pv.nombre AS "Punto de Venta",
  '$ ' || r.recaudado AS "Recaudado"
FROM recaudacion_por_pv r
JOIN punto_venta pv ON r.punto_venta = pv._id
WHERE r.recaudado = (SELECT MAX(recaudado) FROM recaudacion_por_pv);

-- Cuales fueron los 3 productos que mas se vendieron.
SELECT 
  p.nombre AS "Producto", 
  SUM(dv.cantidad) AS "Cantidad Vendida"
FROM detalle_venta dv
JOIN producto p ON dv.producto = p._id
GROUP BY p.nombre
ORDER BY SUM(dv.cantidad) DESC
LIMIT 3;

-- Cuanto kg de harina se consumió, entre las ventas realizadas.
SELECT 
  SUM(dv.cantidad * p.consumo_harina_kg) || ' kg' AS "Harina Consumida"
FROM detalle_venta dv
JOIN producto p ON dv.producto = p._id;
