/*SOBRE GROUP BY*/

-- GROUP BY agrupa valores, es decir, solo nos muestra una copia de un valor en la misma columna

-- Ejemplo, aqui pedimos que agrupe los nombre, por lo que solo nos muestra un solo nombre de cada
SELECT * FROM Biblioteca b 
group by autor  ; 