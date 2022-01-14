
/*  Crie um banco de dados para um serviço de um game Online , o nome do banco deverá termo seguinte nome db_generation_game_online*/

CREATE DATABASE db_generation_game_online;

/*Crie uma tabela tb_personagem determine 3 atributos */

CREATE TABLE tb_classe (

id_classe BIGINT(5) AUTO_INCREMENT,
habilidade VARCHAR(30) NOT NULL,
campo_de_baatalha VARCHAR(30) NOT NULL,
PRIMARY KEY (id)

);

/*Crie uma tabela tb_personagem determine 5 atributos */

CREATE TABLE tb_personagem (

id_personagem BIGINT(5) AUTO_INCREMENT,
nome VARCHAR(30) NOT NULL,
poder_de_ataque VARCHAR(30) NOT NULL,
poder_de_defesa VARCHAR(30) NOT NULL,
fk_classe BIGINT(5) AUTO_INCREMENT,
PRIMARY KEY (id)

);

/* Popule esta tabela classe com até 5 dados. */
INSERT INTO tb_classe(habilidade, campo_de_batalha) VALUES ("arqueiro", "terra");
INSERT INTO tb_classe(habilidade, campo_de_batalha) VALUES ("dragao", "terra");
INSERT INTO tb_classe(habilidade, campo_de_batalha) VALUES ("navegador", "terra");
INSERT INTO tb_classe(habilidade, campo_de_batalha) VALUES ("cavaleiro", "terra");

/* Popule esta tabela personagem com até 8 dados. */
INSERT INTO tb_personagem(nome, poder_de_ataque, poder_de_defesa, fk_classe) VALUES ("Kaa", 1800, 1700, 1);
INSERT INTO tb_personagem(nome, poder_de_ataque, poder_de_defesa, fk_classe) VALUES ("Groo", 2800, 2700, 2);
INSERT INTO tb_personagem(nome, poder_de_ataque, poder_de_defesa, fk_classe) VALUES ("Mirta", 1900, 1500, 4);
INSERT INTO tb_personagem(nome, poder_de_ataque, poder_de_defesa, fk_classe) VALUES ("Smith", 1250, 1500, 3);
INSERT INTO tb_personagem(nome, poder_de_ataque, poder_de_defesa, fk_classe) VALUES ("Graa", 3000, 2800, 2);
INSERT INTO tb_personagem(nome, poder_de_ataque, poder_de_defesa, fk_classe) VALUES ("Zenom", 1100, 900, 3);
INSERT INTO tb_personagem(nome, poder_de_ataque, poder_de_defesa, fk_classe) VALUES ("Kenom", 1900, 1500, 4);
INSERT INTO tb_personagem(nome, poder_de_ataque, poder_de_defesa, fk_classe) VALUES ("Calefe", 1900, 1500, 1);

/* personagens com o poder de ataque maior do que 2000. */
SELECT * FROM tb_personagem WHERE poder_de_ataque > 2000;

/* personagens com o poder de defesa entre 1000 e 2000.. */
SELECT * FROM tb_personagem WHERE poder_de_defesa BETWEEN 1000 AND 2000;

/* personagens com o poder de defesa entre 1000 e 2000.. */
SELECT * FROM tb_personagem WHERE poder_de_defesa BETWEEN 1000 AND 2000;

/*os personagens com a letra C */
SELECT * FROM tb_personagem WHERE nome LIKE 'C%';

/*Inner join entre tabela classe e personagem.*/
 SELECT * FROM tb_classe INNER JOIN tb_personagem ON tb_classe.id_classe = tb_personagem.fk_classe;
 
 /* todos os personagem de uma classe específica (exemplo todos os personagens que são arqueiros).*/
 SELECT * FROM tb_classe INNER JOIN tb_personagem ON tb_classe.id_classe = tb_personagem.fk_classe
 WHERE id_classe = 1;







