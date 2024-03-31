/*SOBRE HAVING*/

-- Having es como un where pero para aplicarlo en una consulta grupal
SELECT edicion  FROM Biblioteca b
group by edicion HAVING edicion > 2;