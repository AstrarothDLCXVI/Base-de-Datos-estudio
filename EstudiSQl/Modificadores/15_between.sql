/*SOBRE BETWEEN*/

-- Con between podemos buscar por rangos, por ejemplo, vamos a buscar los libros que tenga año entre 1970 y 1990
SELECT * FROM Biblioteca b 
WHERE año_publicacion BETWEEN 1970 and 1990;