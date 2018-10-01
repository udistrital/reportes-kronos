/*
SELECT dis.*
FROM financiera.registro_presupuestal rp
INNER JOIN financiera.registro_presupuestal_disponibilidad_apropiacion rpdis
ON rp.id = rpdis.registro_presupuestal
INNER JOIN financiera.disponibilidad_apropiacion disapr
ON rpdis.disponibilidad_apropiacion = disapr.id
INNER JOIN financiera.disponibilidad dis
ON dis.id = disapr.disponibilidad
INNER JOIN financiera.apropiacion apr
ON apr.id = disapr.apropiacion
INNER JOIN financiera.rubro rub
ON rub.id = apr.rubro
WHERE rp.vigencia = 2018
AND rub.unidad_ejecutora = 1
AND disapr.fuente_financiamiento = 0
AND rp.numero_registro_presupuestal = 20

SELECT * 
FROM financiera.registro_presupuestal rp
INNER JOIN financiera.registro_presupuestal_disponibilidad_apropiacion rpdis
ON rp.id = rpdis.registro_presupuestal
INNER JOIN financiera.disponibilidad_apropiacion disapr
ON rpdis.disponibilidad_apropiacion = disapr.id
INNER JOIN financiera.apropiacion apr
ON apr.id = disapr.apropiacion
INNER JOIN financiera.rubro rub
ON rub.id = apr.rubro
LIMIT 10;

SELECT * FROM financiera.disponibilidad_apropiacion LIMIt 10;
SELECT * FROM financiera.registro_presupuestal LIMIt 10;
SELECT * FROM financiera.registro_presupuestal_disponibilidad_apropiacion LIMIt 10;

SELECT * 
FROM 
financiera.disponibilidad_apropiacion diapr, financiera.apropiacion apr, financiera.disponibilidad dis
financiera.rubro rub, administrativa.solicitud_disponibilidad soldis, administrativa.necesidad nec,
financiera.registro_presupuestal_disponibilidad_apropiacion rpdis, financiera.registro_presupuestal rp
WHERE apr.id = diapr.apropiacion 
AND dis.id = diapr.dsisponibilidad
AND rub.id = apr.rubro
AND soldis.necesidad = nec.id
AND rpdis.disponibilidad_apropiacion = diapr.id
AND rp.id = rpdis.registro_presupuestal
AND rp.vigencia = 2018
AND rub.unidad_ejecutora = 1
AND diapr.fuente_financiamiento = 0
AND rp.numero_registro_presupuestal = 2
LIMIT 10
*/