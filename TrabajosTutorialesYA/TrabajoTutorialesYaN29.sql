CREATE TABLE empleado(
nombre VARCHAR(20),
documento CHAR(8),
domicilio VARCHAR(30),
fechaingreso DATE,
seccion VARCHAR(20),
sueldo DECIMAL(6,2),
PRIMARY KEY (documento)
);

INSERT INTO empleado (nombre,documento,domicilio,fechaingreso,seccion,sueldo)
VALUES ('Juan Perez','22333444','Colon 123','1990-10-08','Gerencia','900.50');
INSERT INTO empleado (nombre,documento,domicilio,fechaingreso,seccion,sueldo)
VALUES ('Ana Acosta','23444555','Caseros 987','1995-12-18','Secretaria','590.30');
INSERT INTO empleado (nombre,documento,domicilio,fechaingreso,seccion,sueldo)
VALUES ('Lucas Duarte','25666777','Sucre 235','2005-05-15','Sistemas','790');
INSERT INTO empleado (nombre,documento,domicilio,fechaingreso,seccion,sueldo)
VALUES ('Pamela Gonzalez','26777888','Sarmiento 873','1999-02-12','Secretaria','550');
INSERT INTO empleado (nombre,documento,domicilio,fechaingreso,seccion,sueldo)
VALUES ('Marcos Juarez','30000111','Rivadavia 801','2002-09-22','Contaduria','630.70');
INSERT INTO empleado (nombre,documento,domicilio,fechaingreso,seccion,sueldo)
VALUES ('Yolanda Perez','35111222','Colon 180','1990-10-08','Administracion','400');
INSERT INTO empleado (nombre,documento,domicilio,fechaingreso,seccion,sueldo)
VALUES ('Rodolfo Perez','35555888','Coronel Olmedo 588','1990-05-28','Sistemas','800');

SELECT * FROM empleado
WHERE nombre LIKE '%Perez%';

SELECT * FROM empleado
WHERE domicilio LIKE 'Co%8%';

SELECT * FROM empleado
WHERE CAST(sueldo As VARCHAR) NOT LIKE '%.00';

SELECT * FROM empleado
WHERE CAST(fechaingreso AS VARCHAR) LIKE '%1990%';