/*SOBRE LEFT JOIN*/

-- En el inner hemos visto que nos mostraba los usuarios que tenian dni, en este caso nos muestra eso y los que no tienen tambien.
-- El left se centra mas en la tabla de la izquierda
SELECT * FROM  Usuarios u 
left join InformacionPersonal ip  on u.id = ip.id  
;
