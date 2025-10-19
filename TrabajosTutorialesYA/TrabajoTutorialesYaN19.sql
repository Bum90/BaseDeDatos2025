CREATE TABLE articulos(
codigo SERIAL,
nombre VARCHAR(20),
descripcion VARCHAR(30),
precio DECIMAL(9,2),
cantidad SMALLINT DEFAULT '0',
PRIMARY KEY (codigo)
);

INSERT INTO articulos (nombre,descripcion,precio,cantidad)
VALUES ('impresora','Epson Stylus C45','400.80','20');
INSERT INTO articulos (nombre,descripcion,precio,cantidad)
VALUES ('impresora','Epson Stylus C85','500',DEFAULT);
INSERT INTO articulos (nombre,descripcion,precio,cantidad)
VALUES ('monitor','Samsung 14','800',DEFAULT);
INSERT INTO articulos (nombre,descripcion,precio,cantidad)
VALUES ('teclado','ingles Biswal','100','50');

SELECT * FROM articulos;

UPDATE articulos SET precio=precio+(precio*0.15);

SELECT * FROM articulos;

SELECT nombre||','||descripcion AS union FROM articulos;

UPDATE articulos SET cantidad=cantidad-5
WHERE nombre='teclado';

SELECT * FROM articulos;