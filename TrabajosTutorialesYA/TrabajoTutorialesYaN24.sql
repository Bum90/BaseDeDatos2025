CREATE TABLE visitas(
numero SERIAL,
nombre VARCHAR(20) DEFAULT 'Desconocido',
mail VARCHAR(50),
pais VARCHAR(20),
fecha TIMESTAMP,
PRIMARY KEY (numero)
);

INSERT INTO visitas (nombre,mail,pais,fecha)
VALUES ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10');
INSERT INTO visitas (nombre,mail,pais,fecha)
VALUES ('Gustavo Gonzalez','GustavoGGonzalez@hotmail.com','Chile','2006-10-10 21:30');
INSERT INTO visitas (nombre,mail,pais,fecha)
VALUES ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-10-11 15:45');
INSERT INTO visitas (nombre,mail,pais,fecha)
VALUES ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-10-12 08:15');
INSERT INTO visitas (nombre,mail,pais,fecha)
VALUES ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-09-12 20:45');
INSERT INTO visitas (nombre,mail,pais,fecha)
VALUES ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-12 16:20');
INSERT INTO visitas (nombre,mail,pais,fecha)
VALUES ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-15 16:25');

SELECT * FROM visItas
ORDER BY fecha DESC;

SELECT nombre,pais,EXTRACT(month FROM fecha) FROM visitas
ORDER BY pais,extract(MONTH FROM fecha) DESC;

SELECT nombre,mail,
EXTRACT (MONTH FROM fecha) AS mes,
EXTRACT (DAY FROM fecha) AS dia,
EXTRACT (HOUR FROM FECHA) AS hora
FROM visitas
ORDER BY 3,4,5;

SELECT mail,pais
FROM visitas WHERE EXTRACT(MONTH FROM fecha)=10 ORDER BY 2;