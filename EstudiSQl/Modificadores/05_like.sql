/*USO DE LIKE*/

-- Quiero sacar todos los libros de harry potter, pero en vez de escribir uno a uno voy a filtrar el nombre
SELECT nombre_libro  FROM Biblioteca b 
WHERE nombre_libro LIKE 'Harry%';

-- Recordar que para que un like funcione necesita un where

-- El % se utiliza para indicar que detras de harry hay mas datos

/*SOBRE EL %*/

-- En esta forma le estamos diciendo que tiene texto detras
SELECT nombre_libro  FROM Biblioteca b
WHERE nombre_libro LIKE '%castigo';

-- En esta forma le estamos indicando que tiene datos tando delante como detras
SELECT nombre_libro  FROM Biblioteca b 
WHERE nombre_libro LIKE '%Potter%';


