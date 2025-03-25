CREATE TABLE escuelas(
    id int(11) NOT NULL AUTO_INCREMENT,
	nombre varchar(45) DEFAULT NULL,
    localidad varchar(45) DEFAULT NULL,
    provincia varchar(45) DEFAULT NULL,
    capacidad int(11) DEFAULT NULL,
    PRIMARY KEY(id)
);