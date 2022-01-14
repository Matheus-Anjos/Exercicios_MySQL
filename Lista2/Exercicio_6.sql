
/* Crie um banco de dados para um serviço de um site de cursos onlines, o nome do banco deverá ter o seguinte nome db_cursoDaMinhaVida,,.*/

CREATE DATABASE db_cursoDaMinhaVida;

/*Crie uma tabela tb_categoria determine 3 atributos */

CREATE TABLE tb_categoria (

id_categoria BIGINT(5) AUTO_INCREMENT,
tecnologia VARCHAR(30) NOT NULL,
tempo_meses BIGINT,
PRIMARY KEY (id)

);

/*Crie uma tabela tb_curso determine 5 atributos */

CREATE TABLE tb_curso (

id_curso BIGINT(5) AUTO_INCREMENT,
nome VARCHAR(30) NOT NULL,
preco BIGINT NOT NULL,
descricao VARCHAR(150) NOT NULL,
fk_categoria BIGINT(5) AUTO_INCREMENT,
PRIMARY KEY (id)

);

/* Popule esta tabela categoria com até 5 dados. */
INSERT INTO tb_categoria(tecnologia, tempo_meses) VALUES ("JAVA", 6);
INSERT INTO tb_categoria(tecnologia, tempo_meses) VALUES ("JAVASCRIPT", 4);
INSERT INTO tb_categoria(tecnologia, tempo_meses) VALUES ("HTML", 2);
INSERT INTO tb_categoria(tecnologia, tempo_meses) VALUES ("CSS", 2);
INSERT INTO tb_categoria(tecnologia, tempo_meses) VALUES ("MYSQL", 4);




/* Popule esta tabela produto com até 8 dados. */
INSERT INTO tb_curso(nome, preco, descricao, fk_categoria) VALUES ("Java Web", 197, "voltado aplicacao web", 1);
INSERT INTO tb_curso(nome, preco, descricao, fk_categoria) VALUES ("Java Grandes Sistemas", 257, "voltado grandes sistemas", 1);
INSERT INTO tb_curso(nome, preco, descricao, fk_categoria) VALUES ("Javascript LandPages", 144, "voltado para marketing", 2);
INSERT INTO tb_curso(nome, preco, descricao, fk_categoria) VALUES ("Javascript Sites", 197, " construcao de grandes sites", 2);
INSERT INTO tb_curso(nome, preco, descricao, fk_categoria) VALUES ("HTML", 97, "revisao HTML3 E HTML5", 3);
INSERT INTO tb_curso(nome, preco, descricao, fk_categoria) VALUES ("CSS", 97, "com a adicação de recursos novos", 4);
INSERT INTO tb_curso(nome, preco, descricao, fk_categoria) VALUES ("MySQL", 144, "banco de dados grandes", 5);
INSERT INTO tb_curso(nome, preco, descricao, fk_categoria) VALUES ("MySQL", 144, " banco de dados básico", 5);

/* produto com valor maior do que 50 reais. */
SELECT * FROM tb_curso WHERE preco > 50;

/* produto com valor entre 3 e 60 reais*/
SELECT * FROM tb_curso WHERE preco BETWEEN 3 AND 60;

/*produto com nome que começa com a letra C */
SELECT * FROM tb_curso WHERE nome LIKE 'C%';

/*inner join entre tabela categoria e produto.*/
 SELECT * FROM tb_categoria INNER JOIN tb_curso ON tb_categoria.id_categoria = tb_curso.fk_categoria;
 
 /*os Produtos de uma categoria específica (exemplo todos os produtos que são da categoria Java).*/
 SELECT * FROM tb_categoria INNER JOIN tb_curso ON tb_categoria.id_categoria = tb_curso.fk_categoria
 WHERE id_categoria = 1







