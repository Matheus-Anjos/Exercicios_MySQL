
/* Crie um banco de dados para um serviço de uma loja de produtos de construção, o nome do banco deverá ter o seguinte nome db_construindo_a_nossa_vida,.*/

CREATE DATABASE db_construindo_a_nossa_vida;

/*Crie uma tabela tb_categoria determine 3 atributos */

CREATE TABLE tb_categoria (

id_categoria BIGINT(5) AUTO_INCREMENT,
area VARCHAR(30) NOT NULL,
marca VARCHAR(30) NOT NULL,
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
INSERT INTO tb_categoria(area, marca) VALUES ("hidraulica", "amanco");
INSERT INTO tb_categoria(area, marca) VALUES ("hidraúlica", "tigre");
INSERT INTO tb_categoria(area, marca) VALUES ("eletrico", "amanco");
INSERT INTO tb_categoria(area, marca) VALUES ("eletrico", "tigre");
INSERT INTO tb_categoria(area, marca) VALUES ("construcao", "argos");



/* Popule esta tabela produto com até 8 dados. */
INSERT INTO tb_produto(nome, preco, descricao, fk_categoria) VALUES ("Fio", 40, "bitola 23mm", 3);
INSERT INTO tb_produto(nome, preco, descricao, fk_categoria) VALUES ("Conduite", 45, "material de plástico", 4);
INSERT INTO tb_produto(nome, preco, descricao, fk_categoria) VALUES ("Fusivel", 24, " com protecao ", 4);
INSERT INTO tb_produto(nome, preco, descricao, fk_categoria) VALUES ("Bucha", 42, " material mais caro", 1);
INSERT INTO tb_produto(nome, preco, descricao, fk_categoria) VALUES ("Cano", 25, "material de plastico, 100mm ", 2);
INSERT INTO tb_produto(nome, preco, descricao, fk_categoria) VALUES ("Cimento", 44, "pacote grande", 5);
INSERT INTO tb_produto(nome, preco, descricao, fk_categoria) VALUES ("Ceramica", 2, " pacote pequeno", 5);
INSERT INTO tb_produto(nome, preco, descricao, fk_categoria) VALUES ("Madeirite", 69, " tamnho 70cm", 5);

/* produto com valor maior do que 50 reais. */
SELECT * FROM tb_produto WHERE preco > 50;

/* produto com valor entre 3 e 60 reais*/
SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;

/*produto com nome que começa com a letra C */
SELECT * FROM tb_produto WHERE nome LIKE 'C%';

/*inner join entre tabela categoria e produto.*/
 SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_categoria.id_categoria = tb_produto.fk_categoria;
 
 /*Produtos de uma categoria específica (exemplo todos os produtos que são da categoria hidráulica)...*/
 SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_categoria.id_categoria = tb_produto.fk_categoria
 WHERE id_categoria = 1 AND id_categoria = 2;







