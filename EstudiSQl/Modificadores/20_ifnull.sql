/*SOBRE IFNULL*/

-- Simple, a una o varias columnas le cambiamos el valor de null a uno que nosotros queramos

SELECT autor , IFNULL(autor, "paquitos") as autor  FROM Biblioteca b 