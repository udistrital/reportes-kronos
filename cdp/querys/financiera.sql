
SELECT * FROM financiera.disponibilidad;
/*
SELECT rub.codigo, rub.nombre, 
diapr.valor, dis.numero_disponibilidad, diapr.fuente_financiamiento
FROM financiera.disponibilidad dis 
INNER JOIN financiera.disponibilidad_apropiacion diapr 
ON dis.id = diapr.disponibilidad
INNER JOIN financiera.apropiacion apr 
ON diapr.apropiacion = apr.id
INNER JOIN financiera.rubro rub 
ON rub.id = apr.rubro
INNER JOIN financiera.disponibilidad_proceso_externo dispe
ON dispe.disponibilidad = dis.id
INNER JOIN financiera.fuente_financiamiento fue
ON fue.id = diapr.fuente_financiamiento
WHERE dis.vigencia = 2018
AND diapr.fuente_financiamiento = 98
AND rub.unidad_ejecutora = 1
AND dispe.proceso_externo = 12;

SELECT * FROM financiera.disponibilidad_proceso_externo WHERE proceso_externo = 12;
SELECT * FROM financiera.disponibilidad WHERE id = 101348;
SELECT * FROM financiera.disponibilidad_apropiacion WHERE disponibilidad = 101348; --fuente: 98
SELECT * FROM financiera.apropiacion WHERE id = 44529; 
SELECT * FROM financiera.rubro WHERE id = 31834; --unidad_ejecutora: 1
SELECT * FROM financiera.fuente_financiamiento;
SELECT * FROM financiera.fuente_financiamiento WHERE id = 98;
*/