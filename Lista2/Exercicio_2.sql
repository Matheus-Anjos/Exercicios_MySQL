
/*  Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco deverá ter o seguinte nome db_pizzaria_legal.*/

CREATE DATABASE db_pizzaria_legal;

/*Crie uma tabela tb_categoria determine 3 atributos */

CREATE TABLE tb_categoria (

id_categoria BIGINT(5) AUTO_INCREMENT,
tipo VARCHAR(30) NOT NULL,
tamanho VARCHAR(30) NOT NULL,
PRIMARY KEY (id)

);

/*Crie uma tabela tb_pizza determine 5 atributos */

CREATE TABLE tb_pizza (

id_pizza BIGINT(5) AUTO_INCREMENT,
sabor VARCHAR(30) NOT NULL,
preco BIGINT NOT NULL,
descricao VARCHAR(150) NOT NULL,
fk_categoria BIGINT(5) AUTO_INCREMENT,
PRIMARY KEY (id)

);

/* Popule esta tabela categoria com até 5 dados. */
INSERT INTO tb_categoria(tipo, tamanho) VALUES ("doce", "brotinho");
INSERT INTO tb_categoria(tipo, tamanho) VALUES ("salgada", "brotinho");
INSERT INTO tb_categoria(tipo, tamanho) VALUES ("doce", "grande");
INSERT INTO tb_categoria(tipo, tamanho) VALUES ("salgada", "grande");


/* Popule esta tabela pizza com até 8 dados. */
INSERT INTO tb_pizza(sabor, preco, descricao, fk_classe) VALUES ("Calabresa", 29, "Calabresa, Cebola e Molho de Tomate", 2);
INSERT INTO tb_pizza(sabor, preco, descricao, fk_classe) VALUES ("Chocolate", 60, "Chocolate, Granulado, Morango", 3);
INSERT INTO tb_pizza(sabor, preco, descricao, fk_classe) VALUES ("Calabresa", 55, "Calabresa, Cebola e Molho de Tomate", 4);
INSERT INTO tb_pizza(sabor, preco, descricao, fk_classe) VALUES ("Mussarela", 29, "Mussarela, Tomate, Salsinha", 2);
INSERT INTO tb_pizza(sabor, preco, descricao, fk_classe) VALUES ("Chocolate", 32, "Chocolate, Granulado, Morango", 1);
INSERT INTO tb_pizza(sabor, preco, descricao, fk_classe) VALUES ("Frango", 55, "Frango com Catupiry", 4);
INSERT INTO tb_pizza(sabor, preco, descricao, fk_classe) VALUES ("Atum", 55, "Atum, Cebola, Tomate", 4);
INSERT INTO tb_pizza(sabor, preco, descricao, fk_classe) VALUES ("Brocolis", 29, "Brocolis, Alface, Salsinha", 2);

/* pizza com valor maior do que 45 reais. */
SELECT * FROM tb_pizza WHERE preco > 45;

/* pizza com valor entre 29 e 60 reais*/
SELECT * FROM tb_pizza WHERE preco BETWEEN 29 AND 60;

/*pizza com sabor que começa com a letra C */
SELECT * FROM tb_pizza WHERE sabor LIKE 'C%';

/*inner join entre tabela categoria e pizza.*/
 SELECT * FROM tb_categoria INNER JOIN tb_pizza ON tb_categoria.id_categoria = tb_pizza.fk_categoria;
 
 /*pizza de uma categoria específica (exemplo todos os produtos que são pizza doce).*/
 SELECT * FROM tb_categoria INNER JOIN tb_pizza  ON tb_classe.id_categoria = tb_personagem.fk_categoria
 WHERE id_classe = 1 AND id_classe = 2;







