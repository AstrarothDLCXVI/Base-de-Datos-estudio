/*SOBRE EL NOT*/

-- El not nos sirve para negar, es decir, en el siguiente ejemplo decimos que nos de las columnas, pero
-- que no incluya las edicines 3
SELECT * FROM Biblioteca b 
WHERE NOT edicion = 3;