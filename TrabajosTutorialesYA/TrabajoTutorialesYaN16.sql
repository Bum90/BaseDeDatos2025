--Primer problema del trabajo N16:--

CREATE TABLE cuentas(
numero_de_cuenta INTEGER,
documento CHAR(8)NOT NULL,
nombre VARCHAR(30),
saldo DECIMAL(15,2),
PRIMARY KEY (numero_de_cuenta)
);

INSERT INTO cuentas (numero_de_cuenta,documento,nombre,saldo)
VALUES ('1234','25666777','Pedro Perez','500000.60');
INSERT INTO cuentas (numero_de_cuenta,documento,nombre,saldo)
VALUES ('2234','27888999','Juan Lopez','-250000');
INSERT INTO cuentas (numero_de_cuenta,documento,nombre,saldo)
VALUES ('3344','27888999','Juan Lopez','4000.50');
INSERT INTO cuentas (numero_de_cuenta,documento,nombre,saldo)
VALUES ('3346','32111222','Susana Molina','1000');

SELECT * FROM cuentas
WHERE saldo>4000;

SELECT numero_de_cuenta,saldo FROM cuentas
WHERE nombre='Juan Lopez'

SELECT * FROM cuentas
WHERE saldo<0;

SELECT * FROM cuentas
WHERE saldo>=3000;

--Segundo problema del trabajo N16:--

CREATE TABLE empleados(
nombre VARCHAR(30),
documento CHAR(8),
sexo CHAR(1),
domicilio VARCHAR(30),
sueldo_basico DECIMAL(7,2),
cantidad_de_hijos SMALLINT
);

INSERT INTO empleados (nombre,documento,sexo,domicilio,sueldo_basico,cantidad_de_hijos)
VALUES ('Juan Perez','22333444','m','Sarmiento 123','500','2');
INSERT INTO empleados (nombre,documento,sexo,domicilio,sueldo_basico,cantidad_de_hijos)
VALUES ('Ana Acosta','24555666','f','Colon 134','850','0');
INSERT INTO empleados (nombre,documento,sexo,domicilio,sueldo_basico,cantidad_de_hijos)
VALUES ('Bartolome Barrios','27888999','m','Urquiza 479','10000.80','4');
/*INSERT INTO (nombre,documento,sexo,domicilio,sueldo_basico,cantidad_de_hijos)
VALUES ('Juan Perez','22333444','m','Sarmiento 123','500','2');
No permite ingresar el valor porque supera los decimales definidos*/

SELECT * FROM empleados
WHERE sueldo_basico<=900;

SELECT nombre FROM empleados
WHERE cantidad_de_hijos>0;