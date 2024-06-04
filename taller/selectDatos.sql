--calcular total de las tareas
UPDATE caja
SET ingreso = (
    SELECT SUM(precio)
    FROM tarea
    WHERE tarea.fecha = caja.fecha
);



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

-- Caja diaria
SELECT 
    fecha AS "Fecha",
    SUM(ingreso) AS "Ingreso Total",
    SUM(egreso) AS "Egreso Total",
    SUM(ingreso) - SUM(egreso) AS "Balance"
FROM 
    caja
GROUP BY 
    fecha
ORDER BY 
    fecha;

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


-- Saber la cantidad de km desde el ultimo turno por la garantia
-- WITH UltimoTurno AS (
--     SELECT 
--         dominio, 
--         MAX(fecha) AS ultima_fecha
--     FROM 
--         turno
--     GROUP BY 
--         dominio
-- )
-- SELECT 
--     t.dominio AS "Dominio",
--     t.km AS "Kilómetros del Último Turno",
--     t.km_acumulados AS "Kilómetros Acumulados"
-- FROM 
--     turno t
-- JOIN 
--     UltimoTurno ut ON t.dominio = ut.dominio AND t.fecha = ut.ultima_fecha;

SELECT
    vehiculo.dominio AS "Dominio del vehículo",
    turno.km AS "Kilómetros del último turno"
FROM
    vehiculo
JOIN
    turno ON turno.dominio = vehiculo.dominio
