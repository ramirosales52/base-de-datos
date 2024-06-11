
-- Cuánto dinero se recaudó en cada punto de venta
SELECT 
  pv.nombre AS "Punto de venta",
  SUM(dv.cantidad * dv.precio) AS "Recaudado"
FROM 
  punto_venta pv
JOIN 
  venta v ON pv._id = v.punto_venta
JOIN 
  detalle_venta dv ON v._id = dv.venta
GROUP BY 
  pv._id, pv.nombre
WHERE
  v.fecha = CURRENT_DATE;

-- Mayor monto recaudado entre los mostradores
SELECT 
  SUM(dv.cantidad * dv.precio) AS "Total recaudado"
FROM 
  punto_venta pv
JOIN 
  venta v ON pv._id = v.punto_venta
JOIN 
  detalle_venta dv ON v._id = dv.venta
WHERE
  v.fecha = CURRENT_DATE;

-- Mostradores con mayores recaudaciones
SELECT 
  pv.nombre AS "Punto de venta con mayor recaudación",
  SUM(dv.cantidad * dv.precio) AS "Recaudado"
FROM 
  punto_venta pv
JOIN 
  venta v ON pv._id = v.punto_venta
JOIN 
  detalle_venta dv ON v._id = dv.venta
GROUP BY 
  pv.nombre
ORDER BY 
  SUM(dv.cantidad * dv.precio) DESC
LIMIT 1;

-- Cuales fueron los 3 productos que mas se vendieron.
SELECT 
  p.nombre AS "Productos más vendidos", 
  SUM(dv.cantidad) AS "Cantidad Vendida"
FROM detalle_venta dv
JOIN producto p ON dv.producto = p._id
GROUP BY p.nombre
ORDER BY SUM(dv.cantidad) DESC
LIMIT 3;

-- Cuanto kg de harina se consumió, entre las ventas realizadas.
SELECT 
  SUM(dv.cantidad * di.cantidad) || ' kg' AS "Harina Total consumida"
FROM 
  detalle_venta dv
JOIN 
  producto p ON dv.producto = p._id
JOIN 
  detalle_ingrediente di ON di.producto = p._id
JOIN 
  ingrediente i ON di.ingrediente = i._id
WHERE 
  i.nombre = 'Harina';
