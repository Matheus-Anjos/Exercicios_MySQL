
/*  Crie um banco de dados para um serviço de um açougue ou uma quitanda,, o nome do bancodeverá ter o seguinte nome db_cidade_das_carnes,.*/

CREATE DATABASE db_cidade_das_carnes;

/*Crie uma tabela tb_categoria determine 3 atributos */

CREATE TABLE tb_categoria (

id_categoria BIGINT(5) AUTO_INCREMENT,
tipo VARCHAR(30) NOT NULL,
qualidade BOOLEAN NOT NULL,
PRIMARY KEY (id)

);

/*Crie uma tabela tb_produto determine 5 atributos */

CREATE TABLE tb_produto (

id_produto BIGINT(5) AUTO_INCREMENT,
nome VARCHAR(30) NOT NULL,
preco BIGINT NOT NULL,
descricao VARCHAR(150) NOT NULL,
fk_categoria BIGINT(5) AUTO_INCREMENT,
PRIMARY KEY (id)

);

/* Popule esta tabela categoria com até 5 dados. */
INSERT INTO tb_categoria(tipo, qualidade) VALUES ("carne", "primeira");
INSERT INTO tb_categoria(tipo, qualidade) VALUES ("carne", "segunda");
INSERT INTO tb_categoria(tipo, qualidade) VALUES ("frango", "primeira");
INSERT INTO tb_categoria(tipo, qualidade) VALUES ("porco", "primeira");



/* Popule esta tabela produto com até 8 dados. */
INSERT INTO tb_produto(nome, preco, descricao, fk_categoria) VALUES ("Patinho", 39, "carne moida na hora", 1);
INSERT INTO tb_produto(nome, preco, descricao, fk_categoria) VALUES ("Acém", 27, "Dor de cabeça e muscular", 2);
INSERT INTO tb_produto(nome, preco, descricao, fk_categoria) VALUES ("CoxaoDuro", 39, "perfume forte e amadeirado ", 2);
INSERT INTO tb_produto(nome, preco, descricao, fk_categoria) VALUES ("Peito", 44, " cortado na hora", 3);
INSERT INTO tb_produto(nome, preco, descricao, fk_categoria) VALUES ("Asinha", 25, "feita em pacote ", 3);
INSERT INTO tb_produto(nome, preco, descricao, fk_categoria) VALUES ("Bisteca", 32, "fatiada", 4);
INSERT INTO tb_produto(nome, preco, descricao, fk_categoria) VALUES ("CoxaoMole", 40, " feita boi angus", 1);
INSERT INTO tb_produto(nome, preco, descricao, fk_categoria) VALUES ("Picanha", 85, " sem muita gordura", 1);

/* produto com valor maior do que 50 reais. */
SELECT * FROM tb_produto WHERE preco > 50;

/* produto com valor entre 3 e 60 reais*/
SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;

/*produto com nome que começa com a letra C */
SELECT * FROM tb_produto WHERE nome LIKE 'C%';

/*inner join entre tabela categoria e produto.*/
 SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_categoria.id_categoria = tb_produto.fk_categoria;
 
 /*Produtos de uma categoria específica (exemplo todos os produtos que são aves)..*/
 SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_categoria.id_categoria = tb_produto.fk_categoria
 WHERE id_categoria = 3;







