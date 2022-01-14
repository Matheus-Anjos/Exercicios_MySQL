
/* Crie um banco de dados para um serviço de um site de cursos onlines, o nome do banco deverá ter o seguinte nome db_cursoDaMinhaVida,,.*/

CREATE DATABASE db_Ecommerce;

/*Crie uma tabela tb_categoria determine 3 atributos */

CREATE TABLE tb_produtos (

id_produtos BIGINT(5) AUTO_INCREMENT,
tipo VARCHAR(30) NOT NULL,
categoria VARCHAR(30) NOT NULL,
preco BIGINT NOT NULL,
durabilidade VARCHAR(30) NOT NULL,
tamanho VARCHAR(30) NOT NULL,
PRIMARY KEY (id)

);

INSERT INTO tb_produtos(tipo, categoria, preco, durabilidade, tamanho) VALUES ("Blusa","Vestuario", 30, "Sede", 8);
INSERT INTO tb_produtos(tipo, categoria, preco, durabilidade, tamanho) VALUES ("Calça","Vestuario", 90, "Home Office", 3);
INSERT INTO tb_produtos(tipo, categoria, preco, durabilidade, tamanho)VALUES ("Corrente","Acessorio", 15, "Sede", 4);
INSERT INTO tb_produtos(tipo, categoria, preco, durabilidade, tamanho) VALUES ("Computador","Eletronicos", 3000, "Sede", 9);
INSERT INTO tb_produtos(tipo, categoria, preco, durabilidade, tamanho) VALUES ("Celular","Eletonicos", 1800, "Sede", 8);

/* produtos com o valor maior do que 500.. */
SELECT * FROM tb_produtos WHERE preco > 500;

/* produtos com o valor menor do que 500.. */
SELECT * FROM tb_produtos WHERE preco < 500;

/*Ao término atualize um dado desta tabela através de uma query de atualização. */
UPDATE tb_produtos SET preco = 18 WHERE id_produto = 3;







