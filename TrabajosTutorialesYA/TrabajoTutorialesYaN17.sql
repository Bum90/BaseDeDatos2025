CREATE TABLE alumnos(
apellido VARCHAR(30),
nombre VARCHAR(20),
documento CHAR(8),
domicilio VARCHAR(30),
fechaingreso DATE,
fechanacimiento DATE
);

INSERT INTO alumnos (apellido,nombre,documento,domicilio,fechaingreso,fechanacimiento)
VALUES ('Gonzalez','Ana','22222222','Colon 123','20-08-1990','15/02/1972');
INSERT INTO alumnos (apellido,nombre,documento,domicilio,fechaingreso,fechanacimiento)
VALUES ('Juarez','Bernardo','25555555','Sucre 456','03-03-1991','15/02/1972');
INSERT INTO alumnos (apellido,nombre,documento,domicilio,fechaingreso,fechanacimiento)
VALUES ('Perez','Laura','26666666','Bulnes 345','03-03-91',null);
/*INSERT INTO alumnos (apellido,nombre,documento,domicilio,fechaingreso,fechanacimiento)
VALUES ('Lopez','Carlos','27777777','Sarmiento 1254','03-15-1990',null);*/
--Da error ya que no reconoce el mes 15--

SELECT * FROM alumnos
WHERE fechaingreso<'1-1-91';

SELECT * FROM alumnos
WHERE fechanacimiento IS NULL;