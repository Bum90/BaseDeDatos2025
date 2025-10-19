--Primer problema del trabajo N18:--

CREATE TABLE visitantes(
nombre VARCHAR(30),
edad SMALLINT,
sexo CHAR(1) DEFAULT 'F',
domicilio VARCHAR(30),
ciudad VARCHAR(20) DEFAULT 'Cordoba',
telefono VARCHAR(11),
mail VARCHAR(30) DEFAULT 'No tiene',
montocompra DECIMAL(6,2)
);

SELECT * FROM information_schema.columns 
WHERE TABLE_NAME = 'visitantes';

INSERT INTO visitantes (nombre, domicilio, montocompra)
VALUES ('Susana Molina','Colon 123','59.80');
INSERT INTO visitantes (nombre, edad, ciudad, mail)
VALUES ('Marcos Torres','29','Carlos Paz','marcostorres@hotmail.com');

SELECT * FROM visitantes;

INSERT INTO visitantes
VALUES ('Marcelo Morales','38',default,default,default,'4255232','marcelomorales@hotmail.com',default);

INSERT INTO visitantes DEFAULT VALUES;

SELECT * FROM visitantes;

--Segundo problema del trabajo N18:--

CREATE TABLE prestamos(
titulo VARCHAR(40)NOT NULL,
documento CHAR(8)NOT NULL,
fechaprestamo DATE NOT NULL,
fechadevolucion DATE,
devuelto char(1) DEFAULT 'n'
);

INSERT INTO prestamos (titulo,documento,fechaprestamo,fechadevolucion)
VALUES ('Manual de 1 grado','23456789','2006-12-15','2006-12-18');
INSERT INTO prestamos (titulo,documento,fechaprestamo,fechadevolucion)
VALUES ('Alicia en el pais de las maravillas','23456789','2006-12-16',DEFAULT);
INSERT INTO prestamos (titulo,documento,fechaprestamo,fechadevolucion)
VALUES ('El aleph','22543987','2006-12-16','2006-08-19');
INSERT INTO prestamos (titulo,documento,fechaprestamo,fechadevolucion)
VALUES ('Manual de geografia 5 grado','25555666','2006-12-18',DEFAULT);

SELECT * FROM prestamos;

INSERT INTO prestamos
VALUES ('Manual de historia','32555666','2006-10-25',DEFAULT,DEFAULT);

/*INSERT INTO DEFAULT VALUES;*/
--Da error.--