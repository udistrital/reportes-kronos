SELECT ingcon.*, rub.codigo
FROM financiera.ingreso ing ,
financiera.estado_ingreso esting ,
financiera.ingreso_concepto ingcon ,
financiera.unidad_ejecutora ue ,
financiera.rubro rub
WHERE
esting.codigo_abreviacion = 'EI04' AND
ing.unidad_ejecutora = ue.id AND
ingcon.ingreso = ing.id AND
rub.unidad_ejecutora = ue.id AND 
ing.vigencia = 2018 AND 
ue.id = 1 AND
rub.codigo = '4-1';

/*
SELECT * FROM financiera.estado_ingreso;
*/
