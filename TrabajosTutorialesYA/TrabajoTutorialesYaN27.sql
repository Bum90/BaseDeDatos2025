--Primer trabajo del problema N27:--

CREATE TABLE visitas(
numero SERIAL,
nombre VARCHAR(20) DEFAULT 'Anonimo',
mail VARCHAR(50),
pais VARCHAR(20),
fechayhora TIMESTAMP,
PRIMARY KEY (numero)
);

INSERT INTO visitas (nombre,mail,pais,fechayhora)
VALUES ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10');
INSERT INTO visitas (nombre,mail,pais,fechayhora)
VALUES ('Gustavo Gonzalez','GustavoGGonzalez@gotmail.com','Chile','2006-10-10 21:30');
INSERT INTO visitas (nombre,mail,pais,fechayhora)
VALUES ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-10-11 15:45');
INSERT INTO visitas (nombre,mail,pais,fechayhora)
VALUES ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-10-12 08:15');
INSERT INTO visitas (nombre,mail,pais,fechayhora)
VALUES ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-09-12 20:45');
INSERT INTO visitas (nombre,mail,pais,fechayhora)
VALUES ('Juancito','JuanJosePerez@gmail.com','Argentina','2006-09-12 16:20');
INSERT INTO visitas (nombre,mail,pais,fechayhora)
VALUES ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-15 16:25');
INSERT INTO visitas (nombre,mail,pais,fechayhora)
VALUES ('Federico1','federicogarcia@xaxamail.com','Argentina',NULL);

SELECT * FROM visitas
WHERE fechayhora BETWEEN '2006-09-12' AND '2006-10-11';

SELECT * FROM visitas
WHERE numero BETWEEN '2' AND '5';

--Segundo trabajo del problema N27:--

CREATE TABLE autos(
patente CHAR(6),
marca VARCHAR(20),
modelo CHAR(4),
precio DECIMAL(8,2),
PRIMARY KEY (patente)
);

INSERT INTO autos
VALUES ('ACD123','Fiat 128','1970','15000');
INSERT INTO autos
VALUES ('ACG234','Renault 11','1980','40000');
INSERT INTO autos
VALUES ('BCD333','Peugeot 505','1990','80000');
INSERT INTO autos
VALUES ('GCD123','Renault Clio','1995','70000');
INSERT INTO autos
VALUES ('BCC333','Renault Megane','1998','95000');
INSERT INTO autos
VALUES ('BVF543','Fiat 128','1975','20000');

SELECT * FROM autos
WHERE modelo BETWEEN '1970' AND '1990';

SELECT * FROM autos
WHERE precio BETWEEN 50000 AND 100000;