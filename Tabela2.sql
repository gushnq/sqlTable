CREATE DATABASE aluno DEFAULT CHARSET=latin1;

USE aluno;

CREATE TABLE aluno
(
	codigo int unsigned not null auto_increment,
    aluno varchar(64) not null,
    endereco varchar(200) not null,
    email varchar(128) not null,
    primary key (codigo)
);

CREATE TABLE pedido 
(
	codigo int unsigned not null auto_increment,
	aluno int unsigned not null,
	datahora datetime not null,
	primary key (codigo),
	CONSTRAINT fk_alunos_pedido FOREIGN KEY (aluno) references aluno (codigo)
);

CREATE INDEX pedido on pedido (aluno);

CREATE TABLE pedido_detalhe
(
	pedido int unsigned not null auto_increment,
    curso int unsigned not null,
	valor double not null,
    primary key (pedido, curso),
    constraint fk_curso_valor foreign key (pedido) references pedido (codigo),
    constraint fk_valor_curso foreign key (curso) references pedido (codigo)
);

CREATE INDEX pedido on pedido_detalhe (curso)




