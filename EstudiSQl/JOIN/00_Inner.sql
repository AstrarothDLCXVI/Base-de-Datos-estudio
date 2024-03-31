/*SOBRE INNER JOIN*/

-- Nos sirve para obtener los datos de ambas tablas, es decir, vamos a unir varias tamblas.

-- Ejemplo, aqui como podeis ver me muestra tanto los usuarios como su informacion
SELECT * FROM  Usuarios u 
inner join  InformacionPersonal ip 
;

-- Ahora, esto es un inner join, estamos uniendo las primary key de las 2 tablas, ahora si nos muestra bien la informacion
SELECT * FROM  Usuarios u 
inner join InformacionPersonal ip  on u.id = ip.id  
;


-- si lo anterior lo escribimos asi;
SELECT * FROM  Usuarios u 
join InformacionPersonal ip  on u.id = ip.id  
;
-- es lo mismo


-- Recordad, el inner join nos va a traer los usuarios que tengan el campo que estas pidiendo
-- un inner join en el caso anterior solo te va a mostrar los usuarios con id, si el usuario no tiene id no te lo va a mostar


-- Otras formas de usarlo;

SELECT * FROM Usuarios u 
join InformacionPersonal ip on u.id  = ip.id  
WHERE u.id > 3;


SELECT * FROM Usuarios u 
join InformacionPersonal ip on u.id  = ip.id
ORDER BY ip.fecha_nacimiento ASC  
limit 1;


-- Se pueden unir mas de un join
select * FROM Usuarios u 
join InformacionPersonal ip on u.id = ip.id 
join LenguajesProgramacion lp on u.id = lp.id ;