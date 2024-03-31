/*SOBRE TRIGGER*/

-- Para entenderlo voy a poner un ejemplo;
-- imagina que cambias el correo de un usuario por otro nuevo, con el trigger podemos hacer que cuando se ejecute
-- esa accion nos guarde el correo antiguo en otra tabla para que no perdamos su informacion.

delimiter $
CREATE trigger tg_email
-- Decimos que despues de utilizar el update a la tabla usuario inicie el trigger
after UPDATE ON Usuarios 

-- indica que el trigger se ejecutará una vez por cada fila afectada por la operación
FOR EACH ROW 

BEGIN
	-- Si el correo antiguo en la tabla de usuarios es disto al nuevo que ha introducido, entonces, inserta el id de la tabla usuarios
	-- junto al correo antiguo en la tabla email_history en las columnas (user_id, email)
	if OLD.correo <> new.correo THEN  
	INSERT INTO email_history (user_id, email)
	values (old.id, old.correo);

	end if;
END;

$
delimiter ;

UPDATE Usuarios
SET correo = 'paquito@example.com' 
WHERE id = 1;
