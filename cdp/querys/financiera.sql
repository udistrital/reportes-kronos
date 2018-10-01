SELECT rub.codigo, rub.nombre, diapr.valor, dis.numero_disponibilidad
FROM financiera.disponibilidad dis 
INNER JOIN financiera.disponibilidad_apropiacion diapr 
ON dis.id = diapr.disponibilidad
INNER JOIN financiera.apropiacion apr 
ON diapr.apropiacion = apr.id
INNER JOIN financiera.rubro rub 
ON rub.id = apr.rubro
WHERE dis.vigencia = 2018
AND diapr.fuente_financiamiento = 0
AND rub.unidad_ejecutora = 1
AND dis.solicitud = 98301
/*

SELECT * FROM financiera.disponibilidad WHERE vigencia = 2018; --solicitud
--SELECT * FROM administrativa.solicitud_disponibilidad WHERE id = 101353;
--SELECT * FROM administrativa.necesidad WHERE numero = 0;
SELECT * FROM financiera.apropiacion;
SELECT * FROM financiera.rubro;
SELECT * FROM financiera.disponibilidad_apropiacion;
SELECT * FROM financiera.fuente_financiamiento;
*/