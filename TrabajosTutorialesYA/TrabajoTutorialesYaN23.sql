CREATE TABLE alumnos(
apellido VARCHAR(20),
nombre VARCHAR(20),
documento CHAR(8),
domicilio VARCHAR(30),
fechaingreso DATE,
fechanacimiento DATE
);

SET datestyle TO 'European';

INSERT INTO alumnos (apellido,nombre,documento,domicilio,fechaingreso,fechanacimiento)
VALUES ('Gonzalez','Ana','22222222','Colon 123','10-08-1990','15/02/1972');
INSERT INTO alumnos (apellido,nombre,documento,domicilio,fechaingreso,fechanacimiento)
VALUES ('Juarez','Bernardo','25555555','Sucre 456','03-03-1991','15/02/1972');
INSERT INTO alumnos (apellido,nombre,documento,domicilio,fechaingreso,fechanacimiento)
VALUES ('Perez','Laura','26666666','Bulnes 345','03-03-91',null);

SELECT * FROM alumnos
WHERE fechaingreso<'1-1-91';

SELECT * FROM alumnos
WHERE fechanacimiento IS NULL;

SELECT fechanacimiento FROM alumnos;