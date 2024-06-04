-- calcular lo recaudado diario
SELECT 
    fecha, SUM(precio) AS "Recaudado"
FROM 
    turno
JOIN 
    tarea ON turno._id = tarea.turno
ORDER BY 
    fecha;


-- Historial trabajos por vehiculo
SELECT 
    v.dominio AS "Dominio",
    t.fecha AS "Fecha",
    t.hora AS "Hora",
    t.km AS "Kilómetros",
    ta.descripcion AS "Descripción de la Tarea",
    ta.precio AS "Precio"
FROM 
    vehiculo v
JOIN 
    turno t ON v.dominio = t.dominio
JOIN 
    tarea ta ON t._id = ta.turno
ORDER BY 
    v.dominio, t.fecha, t.hora;


-- El dia del mes que realizo mas turnos
SELECT 
    fecha AS "Fecha con más turnos realizados",
    COUNT(*) AS "Cantidad de Turnos"
FROM 
    turno
GROUP BY 
    fecha
ORDER BY 
    COUNT(*) DESC
LIMIT 10;



 
SELECT
    vehiculo.dominio AS "Dominio del vehículo",
    turno.km AS "Kilómetros del último turno"
FROM
    vehiculo
JOIN
    turno ON turno.dominio = vehiculo.dominio
