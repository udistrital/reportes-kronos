SELECT ing.fecha_ingreso, doc.fecha_documento, doc.num_documento, ingcon.valor_agregado
FROM financiera.ingreso ing ,
financiera.estado_ingreso esting ,
financiera.ingreso_concepto ingcon ,
financiera.documento_generador doc ,
financiera.unidad_ejecutora ue ,
financiera.rubro rub
WHERE
esting.codigo_abreviacion = 'EI04' AND
ing.unidad_ejecutora = ue.id AND
ingcon.ingreso = ing.id AND
ing.documento_generador = doc.id AND
rub.unidad_ejecutora = ue.id AND
ing.vigencia = 2018 AND
ue.id = 1 AND
rub.id = 33021;
-- rubros id: 33041 4-1, id 33021 2-1-001-09-00-00-0000-01

/*
SELECT * FROM financiera.estado_ingreso;
SELECT * FROM financiera.rubro;

SELECT DISTINCT ON (rub.id) 
rub.id rubro,
ing.id, ing.fecha_ingreso, rub.codigo
FROM 
financiera.ingreso ing
INNER JOIN financiera.fuente_financiamiento fue
ON ing.fuente_financiamiento = fue.id
INNER JOIN financiera.fuente_financiamiento_apropiacion fueapr
ON fueapr.fuente_financiamiento = fue.id
INNER JOIN financiera.apropiacion apr
ON fueapr.apropiacion = apr.id
INNER JOIN financiera.rubro rub
ON apr.rubro = rub.id
WHERE 
ing.fecha_ingreso BETWEEN ? AND ?
ORDER BY rub.id, rub.codigo DESC ;
*/
