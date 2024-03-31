/*SOBRE COUNT*/

-- Count se encarga de contar, es decir, en el siguiente ejemplo vamos a decirle que nos cuente 
-- las ediciones que sean la 1.
SELECT COUNT(*)  FROM Biblioteca b 
WHERE edicion = 1;

-- Nos indica que hay 12 ediciones con el numero 1