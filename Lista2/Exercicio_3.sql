
/*  Crie um banco de dados para um serviço de farmácia de uma empresa, o nome do bancodeverá ter o seguinte nome db_farmacia_do_bem,.*/

CREATE DATABASE db_farmacia_do_bem;

/*Crie uma tabela tb_categoria determine 3 atributos */

CREATE TABLE tb_categoria (

id_categoria BIGINT(5) AUTO_INCREMENT,
setor VARCHAR(30) NOT NULL,
generico BOOLEAN NOT NULL,
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
INSERT INTO tb_categoria(setor, generico) VALUES ("remédio", "true");
INSERT INTO tb_categoria(setor, generico) VALUES ("perfume", "false");
INSERT INTO tb_categoria(setor, generico) VALUES ("cosmético", "false");
INSERT INTO tb_categoria(setor, generico) VALUES ("natural", "false");



/* Popule esta tabela produto com até 8 dados. */
INSERT INTO tb_produto(nome, preco, descricao, fk_categoria) VALUES ("Paretamol", 20, "analgésico e antitérmico", 1);
INSERT INTO tb_produto(nome, preco, descricao, fk_categoria) VALUES ("Dorflex", 11, "Dor de cabeça e muscular", 1);
INSERT INTO tb_produto(nome, preco, descricao, fk_categoria) VALUES ("Malbec", 139, "perfume forte e amadeirado ", 2);
INSERT INTO tb_produto(nome, preco, descricao, fk_categoria) VALUES ("Bizorle", 44, "creme de higiene pessoal ", 3);
INSERT INTO tb_produto(nome, preco, descricao, fk_categoria) VALUES ("ErvaCidreira", 25, "natural ", 4);
INSERT INTO tb_produto(nome, preco, descricao, fk_categoria) VALUES ("ErvaVida", 32, "natural ", 4);
INSERT INTO tb_produto(nome, preco, descricao, fk_categoria) VALUES ("Baronil", 65, "creme de anti-rugas ", 3);
INSERT INTO tb_produto(nome, preco, descricao, fk_categoria) VALUES ("Glutanon", 85, "perfume ", 2);

/* produto com valor maior do que 50 reais. */
SELECT * FROM tb_produto WHERE preco > 50;

/* produto com valor entre 3 e 60 reais*/
SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;

/*produto com nome que começa com a letra B */
SELECT * FROM tb_produto WHERE nome LIKE 'B%';

/*inner join entre tabela categoria e produto.*/
 SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_categoria.id_categoria = tb_produto.fk_categoria;
 
 /*Produtos de uma categoria específica (exemplo todos os produtos que são cosméticos).*/
 SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_categoria.id_categoria = tb_produto.fk_categoria
 WHERE id_categoria = 3;







