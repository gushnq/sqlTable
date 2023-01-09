CREATE DATABASE softblue default charset=latin1;

USE softblue;

CREATE TABLE tipo 
(
	codigo INT UNSIGNED NOT NULL AUTO_INCREMENT,
	tipo VARCHAR(45) NOT NULL,
    PRIMARY KEY (codigo)
);

CREATE TABLE instrutor 
(
	codigo INT UNSIGNED NOT NULL AUTO_INCREMENT,
	instrutor VARCHAR(65) NOT NULL,
	telefone VARCHAR(9) NULL,
	PRIMARY KEY (codigo)
);

CREATE TABLE curso
(
	codigo INT UNSIGNED NOT NULL AUTO_INCREMENT,
    curso VARCHAR(64) NOT NULL,
    tipo INT UNSIGNED NOT NULL,
    instrutor INT UNSIGNED NOT NULL,
    valor DOUBLE NOT NULL,
    PRIMARY KEY (codigo),
    INDEX fk_tipo (tipo),
    INDEX fk_instrutor (instrutor),
	FOREIGN KEY (tipo) REFERENCES tipo (codigo),
    FOREIGN KEY (instrutor) REFERENCES instrutor (codigo)
    );
