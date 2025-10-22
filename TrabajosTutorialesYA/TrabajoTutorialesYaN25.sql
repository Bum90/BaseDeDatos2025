--Primer ejercicio del problea N25:--

CREATE TABLE medicamentos(
codigo SERIAL,
nombre VARCHAR(20),
laboratorio VARCHAR(20),
precio DECIMAL(5,2),
cantidad SMALLINT,
PRIMARY KEY (codigo)
);

INSERT INTO medicamentos (nombre,laboratorio,precio,cantidad)
VALUES ('Sertal','Roche','5.2','100');
INSERT INTO medicamentos (nombre,laboratorio,precio,cantidad)
VALUES ('Buscapina','Roche','4.10','200');
INSERT INTO medicamentos (nombre,laboratorio,precio,cantidad)
VALUES ('Amoxidal 500','Bayer','15.60','100');
INSERT INTO medicamentos (nombre,laboratorio,precio,cantidad)
VALUES ('Paracetamol 500','Bago','1.90','200');
INSERT INTO medicamentos (nombre,laboratorio,precio,cantidad)
VALUES ('Bayaspirina','Bayer','2.10','150'); 
INSERT INTO medicamentos (nombre,laboratorio,precio,cantidad)
VALUES ('Amoxidal jarabe','Bayer','5.10','250');

SELECT codigo,nombre FROM medicamentos 
WHERE (Laboratorio='Roche') AND (precio<5);

SELECT * FROM medicamentos
WHERE (laboratorio='Roche') OR (precio<5);

SELECT * FROM medicamentos
WHERE NOT (laboratorio='Bayer') AND (cantidad=100);

SELECT * FROM medicamentos
WHERE (laboratorio='Bayer') AND NOT (cantidad=100);

DELETE FROM medicamentos
WHERE laboratorio='Bayer';

UPDATE medicamentos SET cantidad = 200
WHERE (laboratorio='Roche') AND (precio>5);

DELETE FROM medicamentos
WHERE (laboratorio='Bayer') OR (precio<3);

--Segundo ejercicio del problea N25:--

CREATE TABLE peliculas(
codigo SERIAL,
titulo VARCHAR(40) NOT NULL,
actor VARCHAR(20),
duracion SMALLINT,
PRIMARY KEY (codigo)
);

INSERT INTO peliculas (titulo,actor,duracion)
VALUES ('Mision imposible','Tom Cruise','120');
INSERT INTO peliculas (titulo,actor,duracion)
VALUES ('Harry Potter y la piedra filosofal','Daniel R.','180');
INSERT INTO peliculas (titulo,actor,duracion)
VALUES ('Harry Potter y la camara secreta','Daniel R.','190');
INSERT INTO peliculas (titulo,actor,duracion)
VALUES ('Mision imposible 2','Tom Cruise','120');
INSERT INTO peliculas (titulo,actor,duracion)
VALUES ('Mujer bonita','Richard Gere','120');
INSERT INTO peliculas (titulo,actor,duracion)
VALUES ('Tootsie','D. Hoffman','90');
INSERT INTO peliculas (titulo,actor,duracion)
VALUES ('Un oso rojo','Julio Chavez','100');
INSERT INTO peliculas (titulo,actor,duracion)
VALUES ('Elsa y Fred','China Zorrilla','110');

SELECT * FROM peliculas
WHERE (actor='Tom Cruise') OR (actor='Rochard Gere');

SELECT * FROM peliculas
WHERE (actor='Tom Cruise') AND (duracion<100);

UPDATE peliculas SET duracion=200
WHERE (actor='Daniel R') AND (duracion=180);

DELETE FROM peliculas
WHERE NOT (actor='Tom Cruise') AND (duracion>=100);