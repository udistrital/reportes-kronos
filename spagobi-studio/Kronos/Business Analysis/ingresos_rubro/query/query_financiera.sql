SELECT DISTINCT ON (rub.id)
ing.id, ing.fecha_ingreso, rub.id, rub.codigo
FROM 
financiera.ingreso ing
INNER JOIN financiera.ingreso_concepto ingcon
ON ingcon.ingreso = ing.id
INNER JOIN financiera.concepto_tesoral contes
ON ingcon.concepto = contes.id
INNER JOIN financiera.rubro rub
ON contes.rubro = rub.id
WHERE 
ing.fecha_ingreso BETWEEN '2018-01-10' AND '2018-09-30'
ORDER BY rub.id, rub.codigo;

/*
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

SELECT * FROM financiera.ingreso;
SELECT * FROM financiera.estado_ingreso;
SELECT * FROM financiera.rubro;
*/
