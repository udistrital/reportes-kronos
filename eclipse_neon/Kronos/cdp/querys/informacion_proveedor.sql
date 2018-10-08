SELECT * FROM agora.informacion_proveedor WHERE id_proveedor = 5023;
SELECT id_proveedor, nom_proveedor FROM agora.informacion_proveedor 
WHERE tipopersona = 'NATURAL' AND nom_proveedor != '' AND id_proveedor = 5023; 