SELECT nec.objeto, molsec.nombre nombre_modalidad
FROM 
financiera.registro_presupuestal rp,
financiera.registro_presupuestal_disponibilidad_apropiacion rpdisa,
financiera.disponibilidad_apropiacion disapr,
financiera.apropiacion apr,
financiera.rubro rub,
financiera.disponibilidad dis,
financiera.disponibilidad_proceso_externo dispre,
administrativa.solicitud_disponibilidad soldis,
administrativa.necesidad nec,
administrativa.modalidad_seleccion molsec
WHERE 
rp.id = rpdisa.registro_presupuestal 
AND rpdisa.disponibilidad_apropiacion = disapr.id
AND disapr.apropiacion = apr.id
AND apr.rubro = rub.id
AND disapr.disponibilidad = dis.id
AND dispre.disponibilidad = dis.id
AND dispre.proceso_externo = soldis.id
AND soldis.necesidad = nec.id
AND nec.modalidad_seleccion = molsec.id
AND rub.unidad_ejecutora = 1
AND rp.numero_registro_presupuestal = 2824
AND rp.vigencia = 2018;

/*
SELECT * FROM financiera.registro_presupuestal WHERE numero_registro_presupuestal = 2824 AND vigencia = 2018;
SELECT * FROM financiera.registro_presupuestal_disponibilidad_apropiacion WHERE registro_presupuestal = 2824;
SELECT * FROM financiera.disponibilidad_apropiacion WHERE id = 57987;
SELECT * FROM financiera.apropiacion WHERE id = 25249;
SELECT * FROM financiera.rubro WHERE id = 23907;
SELECT * FROM financiera.disponibilidad WHERE id = 9807;
SELECT * FROM financiera.disponibilidad_proceso_externo WHERE disponibilidad = 9807;
SELECT * FROM financiera.solicitud_proceso_externo;
SELECT * FROM administrativa.solicitud_disponibilidad WHERE id = 9807;
SELECT * FROM administrativa.necesidad WHERE id = 9807;
SELECT * FROM administrativa.modalidad_seleccion WHERE id = 8;


*/