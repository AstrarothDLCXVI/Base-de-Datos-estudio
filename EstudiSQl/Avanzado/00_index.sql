/*SOBRE INDEX*/

-- Un indice nos sirve para hacer busquedas mas rapidas y con mejor rendimiento, normalmente esta asociado a las busquedas mas comunes que realizas
CREATE index idx_name on Usuarios (nombre);

-- Si queremos que el indice sea unico debemos usar unique
CREATE unique index idx_name on Usuarios (nombre);

-- Para borrar un indice utilizamos drop
DROP index idx_name on Usuarios;

-- IMPORTANTE; por buenas practicas se escribe idx_nombre_del_archivo.
