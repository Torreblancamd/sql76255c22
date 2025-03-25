CREATE TABLE alumnos(
	id int(11) NOT NULL AUTO_INCREMENT,
    id_escuela int(11) DEFAULT NULL,
    legajo int(11) DEFAULT NULL,
    nombre varchar(45) DEFAULT NULL,
    nota decimal(10,0) DEFAULT NULL,
    email varchar(45) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_escuela) REFERENCES escuelas(id)


);CREATE TABLE alumnos(
	id int(11) NOT NULL AUTO_INCREMENT,
    id_escuela int(11) DEFAULT NULL,
    legajo int(11) DEFAULT NULL,
    nombre varchar(45) DEFAULT NULL,
    nota decimal(10,0) DEFAULT NULL,
    email varchar(45) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_escuela) REFERENCES escuelas(id)


);