/*HECHO POR ASTRAROTH*/

NOTA EXAMEN; 10

SELECT * FROM IMDB i;
SELECT * FROM earning e ;
SELECT * FROM genre g ;

-- 1.	Escribe una consulta SQL para mostrar el nombre y la duración de todas las películas que tienen un rating en IMDb mayor a 8.

SELECT Title, Runtime  FROM IMDB i
WHERE Rating > 8
;  



-- 2.	Escribe una consulta SQL para mostrar las películas del año 2016.

SELECT Title  FROM IMDB i 
WHERE Title LIKE '%2016%'
;



-- 3.	Escribe una consulta SQL para mostrar el género con menos presupuesto medio.

SELECT g.genre, i.Budget  FROM genre g 
join IMDB i on g.Movie_id = i.Movie_id 
where i.Budget  is NOT NULL 
order by i.Budget  ASC  LIMIT 1;



-- 4.	Escribe una consulta SQL para los generos con más de 40 películas (No puede aparecer nulo como género)

SELECT g.genre , COUNT(*) as total  FROM IMDB i 
join genre g ON i.Movie_id = g.Movie_id 
where g.genre is not null
GROUP by g.genre 
HAVING total > 40
;



-- 5.	Escribe una consulta SQL para mostrar los géneros con más de 5 peliculas con puntuación por encima de la media.

SELECT AVG(Rating) as media  FROM IMDB i ;


SELECT g.genre , COUNT(*) as total FROM IMDB i 
join genre g on i.Movie_id = g.Movie_id 
WHERE g.genre is not NULL and i.Rating > 7.8
GROUP by g.genre 
HAVING total > 5
;



-- 6.	Escribe una consulta SQL para mostrar el título de las películas que tienen una media mayor que la media de alguno de sus géneros.

SELECT AVG(i.Rating) as media, i.Title  FROM IMDB i 
join genre g on i.Movie_id = g.Movie_id 
WHERE g.genre is not null
GROUP BY g.genre 
ORDER BY media DESC  
;


-- 7.	Escribe una consulta SQL para mostrar cada uno de los géneros y el porcentaje de películas total que son de ese género. 
-- (Ejemplo: Acción - 60%, Comedia – 55%)

SELECT g.genre, (COUNT(i.Title)* 100 / SUM(COUNT(i.Title)) over())  as porcentaje  FROM IMDB i 
join genre g on i.Movie_id = g.Movie_id 
WHERE g.genre is not NULL 
GROUP by g.genre ;


-- 8.	Se quiere crear unos premios FESACine, para ello se necesita crear una tabla PREMIOS que incluya nombre del premio, 
-- año del premio e id de la película que recibe el premio. Insertar el primer FESACito a película del año (2014) para Interstellar.

CREATE table premios (
	id int PRIMARY KEY,
	nombre_premio varchar(255),
	anio_premio varchar(255)
);

INSERT into premios (id, nombre_premio, anio_premio)
values (1, 'Interstellar', '2014');

SELECT * FROM premios p ;



-- 9.Se quiere realizar una nominación a la película del año 2015, para ello añadiremos a la tabla IMDB, una columna llamada nominada, 
-- en la que el valor será “SI”, si la película es del año 2015 y su puntuación está por encima de la media de todas las películas y “NO” 
-- para el resto de las películas.

ALTER TABLE examen1.IMDB ADD nominada VARCHAR(255) NOT NULL;


UPDATE IMDB 
SET nominada = 'No'
;


UPDATE IMDB 
SET nominada = 'Si'
WHERE Title LIKE '%2015%' 
;
