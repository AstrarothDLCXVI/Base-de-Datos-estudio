/*SOBRE RIGHT JOIN*/

-- Es lo contrario al left, en el right te muestra los de la derecha
-- El right se centra en la tabla de la derecha
SELECT * FROM  Usuarios u 
right join InformacionPersonal ip  on u.id = ip.id  