/*SOBRE CONCAT*/

-- Con CONCAT podemos concatenar cadenas, es decir, podemos juntar valores de una celda o fila

-- Por ejemplo, vamos a juntar el nombre del libro con su autor
SELECT CONCAT(nombre_libro, autor)  FROM Biblioteca b ;

-- Asi podemos separar los valores
SELECT CONCAT(nombre_libro, " ",autor)  FROM Biblioteca b ;