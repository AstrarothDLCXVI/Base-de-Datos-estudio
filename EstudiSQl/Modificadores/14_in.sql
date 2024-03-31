/*SOBRE IN*/

-- IN se encarga de filtrar el valor, si hay 2 libros que se llaman igual te los va a filtrar los 2, ademas no entiende de 
-- mayusculas o minusculas

SELECT * FROM Biblioteca b 
WHERE b.autor  in ('J.K. Rowling');

-- Recuerda escribir el valor exacto y utilizar where

-- Tambien podemos decirle que filtre mas de un valor;
SELECT * FROM Biblioteca b 
WHERE autor  in ('J.K. Rowling', 'Fyodor Dostoevsky');

-- Y asi os filtraria todos los datos de estos autores aunque se repita
