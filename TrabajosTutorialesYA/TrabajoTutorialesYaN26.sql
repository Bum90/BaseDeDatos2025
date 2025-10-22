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
VALUES ('Harry Potter y la piedra filosofal','Daniel R.',NULL);
INSERT INTO peliculas (titulo,actor,duracion)
VALUES ('Harry Potter y la camara secreta','Daniel R.','190');
INSERT INTO peliculas (titulo,actor,duracion)
VALUES ('Mision imposible 2','Tom Cruise','120');
INSERT INTO peliculas (titulo,actor,duracion)
VALUES ('Mujer bonita',NULL,'120');
INSERT INTO peliculas (titulo,actor,duracion)
VALUES ('Tootsie','D. Hoffman','90');
INSERT INTO peliculas (titulo,actor,duracion)
VALUES ('Un oso rojo',NULL,NULL);

SELECT * FROM peliculas
WHERE actor IS NULL;

UPDATE peliculas SET duracion=0
WHERE duracion IS NULL;

DELETE FROM peliculas
WHERE (actor IS NULL) AND (duracion=0);