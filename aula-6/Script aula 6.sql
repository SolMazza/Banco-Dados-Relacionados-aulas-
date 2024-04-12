DROP DATABASE IF EXISTS EMPRESA;

CREATE DATABASE IF NOT exists EMPRESA;

USE EMPRESA;

CREATE TABLE IF NOT EXISTS DEPARTAMENTO (
id_departamento INT primary key auto_increment,
nome VARCHAR(50) not null
);


CREATE TABLE if not exists FUNCIONARIO (
id_funcionario int primary key auto_increment,
cpf varchar(11) not null,
rg varchar(10) not null,
nome varchar(30) not null,
sobrenome varchar(100) not null,
data_nascimento date not null,
salario float not null,
id_departamento int,

FOREIGN KEY (id_departamento) REFERENCES DEPARTAMENTO(id_departamento)

);


CREATE TABLE if not exists ENDERECO (
id_endereco int primary key auto_increment,
endereco varchar(150) not null,
cep varchar(9) not null,
cidade varchar(50) not null,
id_funcionario int,

FOREIGN KEY (id_funcionario) REFERENCES FUNCIONARIO(id_funcionario)

);



CREATE TABLE if not exists TELEFONE (
id_telefone int primary key auto_increment,
telefone varchar(50) not null,
id_funcionario int,

FOREIGN KEY (id_funcionario) REFERENCES FUNCIONARIO(id_funcionario)

);


INSERT INTO departamento (nome)
	VALUES	('Almoxarifado'),
			('Contabilidade'),
			('CPD - TI'),
			('RH'),
			('Jurídico'),
			('Depósito'),
			('Backoffice');
            
INSERT INTO funcionario (cpf,rg,nome,sobrenome,data_nascimento,salario,id_departamento)
VALUES 
('09874275674', '1234569899', 'João', 'Cláudio Albuquerque', '1996-07-20','25000', 3 ),
('12345271234', '1241259899', 'Pedro', 'Mendes', '2002-09-01','1500', 1 ),
('32174275432', '1241256123', 'Carlos', 'Eduardo', '1990-12-23','3500', 4 ),
('76342275674', '1221512663', 'Vladimir', 'Pinto', '1968-03-10','5000', 7 ),
('18762547895', '5685674565', 'Johanna', 'Baptista', '1995-05-12','2650', 6 ),
('02928216452', '4678464545', 'Rayssa', 'Silva', '2000-04-29','50000', 3 );

INSERT INTO ENDERECO (endereco,cep,cidade,id_funcionario)
VALUES 
('Rua Vinte e Nove','91140001', 'Alvorada', 1 ),
('Rua Vinte e tres','91140123', 'Porto Alegre', 1 ),
('Rua Vinte e quatro','91140321', 'Alvorada', 2 ),
('Rua Vinte e cinco','91140432', 'Viamão', 3 ),
('Rua Vinte e seis','91140798', 'Gravataí', 4 ),
('Rua Vinte e sete','91187435', 'Íjui', 5 );

INSERT INTO TELEFONE (telefone,id_funcionario)
VALUES 
('555199123454', 1 ),
('55519912341', 2 ),
('5551991254', 3 ),
('55519912387', 3 ),
('55519912999', 4 ),
('55519931010', 5 );
