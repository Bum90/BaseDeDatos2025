CREATE TABLE clientes(
documento CHAR(8),
apellido VARCHAR(20),
nombre VARCHAR(20),
domicilio VARCHAR(30),
telefono VARCHAR(11)
);

INSERT INTO clientes (documento,apellido,nombre,domicilio,telefono)
VALUES ('2233344','Perez','Juan','Sarmiento 980','4342345');
INSERT INTO clientes (documento,apellido,nombre,domicilio,telefono)
VALUES ('2333344','Perez','Ana','Colon 234','2345123');
INSERT INTO clientes (documento,apellido,nombre,domicilio,telefono)
VALUES ('2433344','Garcia','Luis','Avellaneda 1454','4558877');
INSERT INTO clientes (documento,apellido,nombre,domicilio,telefono)
VALUES ('2533344','Juarez','Ana','Urquiza 444','4789900');

SELECT documento,UPPER(apellido),UPPER(nombre),domicilio,telefono FROM clientes;

SELECT documento,apellido,SUBSTRING(nombre,1,1),domicilio,telefono FROM clientes;