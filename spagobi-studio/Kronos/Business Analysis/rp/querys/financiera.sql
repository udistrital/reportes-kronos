SELECT rub.codigo, rub.nombre, rpdis.valor, rp.numero_registro_presupuestal, 
(SUM(disapr.valor) - SUM(rpdis.valor)) SALDO_CDP, 
(SUM(rpdis.valor) - SUM(op.valor_base)) SALDO_RP, 
dis.numero_disponibilidad, dis.solicitud, tcfi.nombre tipo_compromiso, 
rp.numero_compromiso, rp.beneficiario, fue.nombre fuente_nombre, 
fue.codigo fuente_codigo

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
LEFT OUTER JOIN financiera.orden_pago_registro_presupuestal oprp
ON oprp.registro_presupuestal = rp.id
LEFT OUTER JOIN financiera.orden_pago op
ON op.id = oprp.orden_pago

WHERE rp.vigencia = 2018
AND rub.unidad_ejecutora = 1
AND rp.numero_registro_presupuestal = 2

GROUP BY rub.codigo, rub.nombre, rpdis.valor, rp.numero_registro_presupuestal, 
dis.numero_disponibilidad, dis.solicitud, tcfi.nombre , 
rp.numero_compromiso, rp.beneficiario, fue.nombre , 
fue.codigo ;

SELECT * FROM financiera.orden_pago LIMIT 10;
SELECT * FROM financiera.orden_pago_registro_presupuestal LIMIT 10;
DELETE FROM financiera.orden_pago WHERE consecutivo = 25;
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

-- CONSULTA DEL REPORTE
SELECT rub.codigo, rub.nombre, rpdis.valor, rp.numero_registro_presupuestal, 
dis.numero_disponibilidad, dis.solicitud, tcfi.nombre tipo_compromiso, 
rp.numero_compromiso, rp.beneficiario, fue.nombre fuente_nombre, 
fue.codigo fuente_codigo

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
LEFT OUTER JOIN financiera.orden_pago_registro_presupuestal oprp
ON oprp.registro_presupuestal = rp.id
LEFT OUTER JOIN financiera.orden_pago op
ON op.id = oprp.orden_pago
						 
WHERE rp.vigencia = 2018
AND rub.unidad_ejecutora = 1
AND rp.numero_registro_presupuestal = 2;

-- PRUEBA PARA SALDO DE RP
SELECT (SUM(rpcdp.valor)-SUM(op.valor_base)) AS RP_DISPONIBLE,
SUM(rpcdp.valor) AS total_rp, SUM(op.valor_base) AS total_op,
rpcdp.valor, op.valor_base
FROM financiera.registro_presupuestal rp 
LEFT JOIN financiera.orden_pago_registro_presupuestal oprp
ON rp.id = oprp.registro_presupuestal
LEFT JOIN financiera.orden_pago op
ON op.id = oprp.orden_pago
INNER JOIN financiera.registro_presupuestal_disponibilidad_apropiacion rpcdp
ON rp.id = rpcdp.registro_presupuestal
INNER JOIN financiera.disponibilidad_apropiacion cdpapr
ON cdpapr.id = rpcdp.disponibilidad_apropiacion
INNER JOIN financiera.apropiacion apr
ON apr.id = cdpapr.apropiacion
INNER JOIN financiera.rubro rub
ON rub.id = apr.rubro
WHERE rp.numero_registro_presupuestal = 2824
AND rp.vigencia = 2018
AND rub.unidad_ejecutora = 1
GROUP BY rpcdp.valor, op.valor_base, op.id, rp.id;

SELECT * FROM financiera.disponibilidad_apropiacion LIMIt 10;
SELECT * FROM financiera.registro_presupuestal LIMIt 10;
SELECT * FROM financiera.registro_presupuestal_disponibilidad_apropiacion LIMIt 10;
SELECT * FROM financiera.compromiso_financiero limit 10;
SELECT * FROM financiera.tipo_compromiso_financiero LIMIT 10;
*/