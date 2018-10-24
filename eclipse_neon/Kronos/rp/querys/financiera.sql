SELECT rp.id, dis.id, 
rub.codigo, rub.nombre, rpdis.valor, rp.numero_registro_presupuestal, 
dis.numero_disponibilidad, dis.solicitud, tcfi.nombre, rp.numero_compromiso, rp.beneficiario,
fue.nombre WHEN null THEN 0, fue.codigo WHEN null THEN 0

FROM financiera.registro_presupuestal rp
INNER JOIN financiera.registro_presupuestal_disponibilidad_apropiacion rpdis
ON rp.id = rpdis.registro_presupuestal
INNER JOIN financiera.disponibilidad_apropiacion disapr
ON rpdis.disponibilidad_apropiacion = disapr.id

LEFT OUTER JOIN financiera.fuente_financiamiento fue
ON fue.id = disapr.fuente_financiamiento

INNER JOIN financiera.compromiso_financiero cpfi
ON cpfi.id = rp.tipo_compromiso
INNER JOIN financiera.tipo_compromiso_financiero tcfi
ON tcfi.id = cpfi.tipo_compromiso_financiero
INNER JOIN financiera.disponibilidad dis
ON dis.id = disapr.disponibilidad
INNER JOIN financiera.apropiacion apr
ON apr.id = disapr.apropiacion
INNER JOIN financiera.rubro rub
ON rub.id = apr.rubro
WHERE rp.vigencia = 2018
AND rub.unidad_ejecutora = 1
--AND disapr.fuente_financiamiento = 0
AND rp.numero_registro_presupuestal = 2;

/*
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
SELECT * FROM financiera.compromiso_financiero limit 10;
SELECT * FROM financiera.tipo_compromiso_financiero LIMIT 10;
*/