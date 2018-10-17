SELECT nec.*, molsec.nombre
FROM 
financiera.disponibilidad_apropiacion diapr, financiera.apropiacion apr, financiera.disponibilidad dis,
financiera.rubro rub, administrativa.solicitud_disponibilidad soldis, administrativa.necesidad nec,
financiera.registro_presupuestal_disponibilidad_apropiacion rpdis, financiera.registro_presupuestal rp,
administrativa.modalidad_seleccion molsec
WHERE apr.id = diapr.apropiacion 
AND dis.id = diapr.disponibilidad
AND rub.id = apr.rubro
AND soldis.id = dis.solicitud
AND soldis.necesidad = nec.id
AND molsec.id = nec.modalidad_seleccion
AND rpdis.disponibilidad_apropiacion = diapr.id
AND rpdis.registro_presupuestal = rp.id 
AND rp.vigencia = 2018
AND rub.unidad_ejecutora = 1
AND diapr.fuente_financiamiento = 0
AND rp.numero_registro_presupuestal = 21
LIMIT 10;


/*
SELECT * FROM administrativa.modalidad_seleccion LIMIT 10;
*/