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
rub.id = 33041; --rubro 4-1

/*
SELECT * FROM financiera.estado_ingreso;
*/
