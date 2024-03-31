/*SOBRE MIN y MAX*/

-- Son el minimo y el maximo

-- En la siguiente consulta nos va a mostrar el año del libro mas reciente, es decir, el año mas alto.
SELECT MAX(año_publicacion)  FROM Biblioteca b; 

-- En la siguiente consulta nos va a mostrar el año del libro mas antiguo, es decir, el año mas bajo.
SELECT MIN(año_publicacion)  FROM Biblioteca b; 
