--SELECT * FROM administrativa.necesidad LIMIT 10;
SELECT * FROM administrativa.detalle_servicio_necesidad LIMIT 10;
/*
SELECT * 
FROM administrativa.solicitud_disponibilidad soldis
INNER JOIN administrativa.necesidad nec
ON soldis.necesidad = nec.id
WHERE soldis.id = 98301;

SELECT * FROM financiera.disponibilidad WHERE vigencia = 2018; --solicitud
--SELECT * FROM administrativa.solicitud_disponibilidad WHERE id = 101353;
--SELECT * FROM administrativa.necesidad WHERE numero = 0;
SELECT * FROM financiera.apropiacion;
SELECT * FROM financiera.rubro;
SELECT * FROM financiera.fuente_financiamiento;
SELECT * FROM financiera.disponibilidad_apropiacion;
*/