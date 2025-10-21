CREATE TABLE clientes(
codigo SERIAL,
nombre VARCHAR(20) NOT NULL,
domicilio VARCHAR(30),
ciudad VARCHAR(20),
provincia VARCHAR(20),
credito DECIMAL(9,2),
PRIMARY KEY (codigo)
);

INSERT INTO clientes (nombre,domicilio,ciudad,provincia,credito)
VALUES ('Lopez Marcos','Colon 111','Cordoba','Cordoba','1900.56');
INSERT INTO clientes (nombre,domicilio,ciudad,provincia,credito)
VALUES ('Perez Ana','San Martin 222','Cruz del Eje','Cordoba','450.33');
INSERT INTO clientes (nombre,domicilio,ciudad,provincia,credito)
VALUES ('Garcia Juan','Rivadavia 333','Villa del Rosario','Cordoba','190');
INSERT INTO clientes (nombre,domicilio,ciudad,provincia,credito)
VALUES ('Olmos Luis','Sarmiento 444','Rosario','Santa Fe','670.22');
INSERT INTO clientes (nombre,domicilio,ciudad,provincia,credito)
VALUES ('Pereyra Lucas','San Martin 555','Cruz del Eje','Cordoba','500.55');

SELECT * FROM clientes;

SELECT codigo,nombre,domicilio,ciudad,provincia,CEILING(credito) FROM clientes;