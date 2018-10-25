SELECT nec.objeto, nec.numero, nec.vigencia, dpnec.jefe_dependencia_solicitante,
soldis.fecha_solicitud
FROM administrativa.necesidad nec 
INNER JOIN administrativa.dependencia_necesidad dpnec 
ON nec.id = dpnec.necesidad
INNER JOIN administrativa.so
licitud_disponibilidad soldis
ON nec.id = soldis.necesidad
AND soldis.id = 2131;

SELECT * FROM administrativa.solicitud_disponibilidad WHERE id = 2131;
SELECT * FROM administrativa.necesidad WHERE id = 2131;
SELECT * FROM administrativa.dependencia_necesidad dpnec WHERE necesidad = 2131; 

/*
SELECT * FROM administrativa.solicitud_disponibilidad WHERE id = 12;

SELECT nec.id, nec.numero, dpnec.id, dpnec.necesidad, 
dpnec.jefe_dependencia_solicitante, soldis.id, soldis.necesidad
FROM administrativa.necesidad nec 
INNER JOIN administrativa.dependencia_necesidad dpnec 
ON nec.id = dpnec.necesidad
INNER JOIN administrativa.solicitud_disponibilidad soldis
ON nec.id = soldis.necesidad
WHERE nec.vigencia = 2018
AND soldis.id = 12;

SELECT * FROM core.jefe_dependencia WHERE id = 6;
SELECT id,nombre FROM oikos.dependencia WHERE id = 122;

--SELECT * FROM administrativa.estado_necesidad;
--SELECT * FROM administrativa.necesidad WHERE id = 99423;
--SELECT * FROM administrativa.dependencia_necesidad LIMIT 10;
*/