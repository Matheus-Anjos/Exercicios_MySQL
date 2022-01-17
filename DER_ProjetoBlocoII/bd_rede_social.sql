CREATE DATABASE db_rede_social;
USE db_rede_social;

CREATE TABLE tb_temas (
	id_tema BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    servico VARCHAR(100) NOT NULL,
    localizacao VARCHAR(100) NOT NULL,
    descricao VARCHAR(100) NULL
);

CREATE TABLE tb_usuarios (
	id_usuario BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    senha VARCHAR(100) NOT NULL
);

CREATE TABLE tb_postagens (
	id_postagem BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    conteudo VARCHAR(1300) NOT NULL,
    valor DOUBLE NOT NULL,
    proposta VARCHAR(500) NULL,
    fk_id_usuario BIGINT,
    fk_id_tema BIGINT,
    FOREIGN KEY (fk_id_usuario) REFERENCES tb_usuarios (id_usuario),
    FOREIGN KEY (fk_id_tema) REFERENCES tb_temas (id_tema)
);