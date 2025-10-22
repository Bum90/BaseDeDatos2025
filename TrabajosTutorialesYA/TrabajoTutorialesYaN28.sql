CREATE TABLE medicamento(
codigo SERIAL,
nombre VARCHAR(20),
laboratorio VARCHAR(20),
precio DECIMAL(6,2),
cantidad SMALLINT,
fechavencimiento DATE NOT NULL,
PRIMARY KEY (codigo)
);

INSERT INTO medicamento (nombre,laboratorio,precio,cantidad,fechavencimiento)
VALUES ('Sertal','Roche','5.2','1','2005-02-01');
INSERT INTO medicamento (nombre,laboratorio,precio,cantidad,fechavencimiento)
VALUES ('Buscapina','Roche','4.10','3','2006-03-01');
INSERT INTO medicamento (nombre,laboratorio,precio,cantidad,fechavencimiento)
VALUES ('Amoxidal 500','Bayer','15.60','100','2007-05-01');
INSERT INTO medicamento (nombre,laboratorio,precio,cantidad,fechavencimiento)
VALUES ('Paracetamol 500','Bago','1.90','20','2008-02-01');
INSERT INTO medicamento (nombre,laboratorio,precio,cantidad,fechavencimiento)
VALUES ('Bayaspirina','Bayer','2.10','150','2009-12-01');
INSERT INTO medicamento (nombre,laboratorio,precio,cantidad,fechavencimiento)
VALUES ('Amoxidal jarabe','Bayer','5.10','250','2010-10-01');

SELECT * FROM medicamento
WHERE laboratorio IN ('Bayer','Bago');

SELECT * FROM medicamento
WHERE cantidad BETWEEN 1 AND 5;
--Es mas conveniente emplear, en este caso, el operador ""between"--

SELECT * FROM medicamento
WHERE cantidad IN(1,2,3,4,5)