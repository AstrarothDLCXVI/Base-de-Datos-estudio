/*SOBRE CASE*/

-- En el case podemos decidir en base a un resultado que va a parsar, por ejemplo;

-- Aqui hemos pedido que si el año del libro es menor a 1900 que diga que el escritor es antiguo, si es mayor el escritor es moderno
	
SELECT *, -- recuerda la coma antes del case, y el case siempre dentro del select
CASE 
	-- When dice que cuando pase algo, then, haga esto, es decir, si se cumple el when tambien se va a cumplir el then
	when año_publicacion < 1900 then "Escritor antiguo"
	else "Escritor moderno"
	-- Si no se cumple lo anterior pasamos a else, es como un if/else en programacion
	
END AS Tipo_de_escritor -- Con el as le damos un alias, es decir, el mensaje se va a mostrar en ese alias
FROM Biblioteca b; 