/*USO DE OREDER BY*/

-- Quiero ordenar los libros por año de publicadion, para ello utilizaremos order by

-- ASC; ascendente
SELECT * FROM Biblioteca b 
order by año_publicacion ASC ;

-- DESC; descendente
SELECT * FROM Biblioteca b 
order by año_publicacion DESC  ;