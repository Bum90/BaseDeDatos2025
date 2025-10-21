CREATE TABLE libros(
codigo SERIAL,
titulo VARCHAR(40) NOT NULL,
autor VARCHAR(20) DEFAULT 'Desconocido',
editorial VARCHAR(20),
precio  DECIMAL(6,2),
cantidad SMALLINT DEFAULT 0,
PRIMARY KEY (codigo)
);

INSERT INTO libros (titulo,autor,editorial,precio)
VALUES ('El aleph','Borges','Emece',25);
INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
VALUES ('Java en 10 minutos','Mario Molina','Siglo XXI',50.40,100);
INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
VALUES ('Alicia en el pais de las maravillas','Lewis Carroll','Emece',15,50);

SELECT titulo,autor,editorial,precio,cantidad,
precio*cantidad AS monto_total FROM libros;

SELECT titulo,autor,precio,
precio*0.1 AS descuento,
precio-(precio*0.1) AS precio_final
FROM libros WHERE editorial='Emece';

SELECT titulo||'-'||autor AS titulo_y_autor FROM libros;