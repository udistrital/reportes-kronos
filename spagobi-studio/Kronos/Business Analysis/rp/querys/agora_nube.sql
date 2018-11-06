SELECT *
FROM agora.informacion_proveedor WHERE id_proveedor = 3146;

SELECT * 
FROM agora.informacion_persona_natural WHERE num_documento_persona = '53021099';

SELECT * 
FROM agora.informacion_persona_juridica WHERE num_nit_empresa = '899999230';

SELECT info_proveedor.* 
FROM agora.informacion_persona_natural info_natural, 
agora.informacion_persona_juridica info_juridica,
agora.informacion_proveedor info_proveedor
WHERE 
info_natural.num_documento_persona = info_proveedor.num_documento
OR info_juridica.num_nit_empresa = info_proveedor.num_documento
AND info_proveedor.id_proveedor = 3146;

SELECT *
FROM agora.parametro_estandar ;

/*
SELECT * FROM agora.tipo_entidad;


CREATE OR REPLACE FUNCTION infoProveedor()
RETURNS character varying AS $tipopersona$
DECLARE
	tipopersona character varying;
	num_documento numeric(10);
	proveedor agora.informacion_proveedor;
BEGIN
   SELECT tipopersona INTO tipopersona, num_documento INTO num_documento
   FROM agora.informacion_proveedor WHERE id_proveedor = 3146;
   
   RETURN tipopersona;
END;
$tipopersona$ LANGUAGE plpgsql;

SELECT * FROM infoProveedor();

*/
