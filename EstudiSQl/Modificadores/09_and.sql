/*SOBRE EL AND*/

-- El AND nos permite hacer varios jungar varias peticiones del where, por ejemplo;
SELECT * FROM Biblioteca b 
WHERE año_publicacion > 1900 and año_publicacion < 2000;

-- Le estamos indicando que los años de publicacion sean mayores a 1900 y menor al 2000.

-- Recordad que en una consulta no puede haber 2 where.