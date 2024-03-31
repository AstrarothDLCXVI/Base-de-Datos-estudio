/*SOBRE NULL*/

-- El null aparece en las tablas, significa que no se ha introducido ningun valor en esa columna/s

-- En el siguiente ejemplo lo vas a poder ver mas claro
SELECT * FROM Biblioteca b 
WHERE autor is NULL ;

-- Utilizamos el is porque le estamos diciendo que es null, no igual a null, recordar que no es un valor como un nombre o un numero.


-- Tambien podemos decirle que no queremos que aparezcan los autores los cuales no tienen null, para ello
-- utilizaremos el NOT;
SELECT * FROM Biblioteca b 
WHERE autor is NOT NULL ;