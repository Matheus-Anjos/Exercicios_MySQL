CREATE DATABASE db_blogpessoal;
USE db_blogpessoal;

CREATE TABLE tb_temas(
id_temas BIGINT AUTO_INCREMENT NOT NULL PRIMARY KEY,
assunto VARCHAR(150) NOT NULL
);

CREATE TABLE tb_usuarios(
id_usuarios BIGINT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nome VARCHAR (100) NOT NULL,
email VARCHAR(100) NOT NULL,
senha VARCHAR(15) NOT NULL,
foto VARCHAR(255) NULL
);

CREATE TABLE tb_postagens(
id_postagens BIGINT AUTO_INCREMENT NOT NULL PRIMARY KEY,
titulo VARCHAR(150) NOT NULL,
conteudo VARCHAR(2000) NOT NULL,
data_postagem DATE NOT NULL,
fk_usuarios BIGINT,
fk_temas BIGINT,
FOREIGN KEY (fk_usuarios) REFERENCES tb_usuarios (id_usuarios),
FOREIGN KEY (fk_temas) REFERENCES tb_temas (id_temas)
);


