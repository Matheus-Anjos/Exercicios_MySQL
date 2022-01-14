
/* Crie um banco de dados para um serviço de um site de cursos onlines, o nome do banco deverá ter o seguinte nome db_cursoDaMinhaVida,,.*/

CREATE DATABASE db_escola;

/*Crie uma tabela tb_categoria determine 3 atributos */

CREATE TABLE tb_estudantes (

id_estudantes BIGINT(5) AUTO_INCREMENT,
nome VARCHAR(30) NOT NULL,
sexo VARCHAR(30) NOT NULL,
idade BIGINT NOT NULL,
serie  VARCHAR(30) NOT NULL,
nota BIGINT NOT NULL,
PRIMARY KEY (id)

);

INSERT INTO tb_estudantes(nome, sexo, idade, serie , nota) VALUES ("Camila","Feminino", 15, "8 serie", 9);
INSERT INTO tb_estudantes(nome, sexo, idade, serie , nota) VALUES ("Pedro","Masculino", 12, "6 serie", 6);
INSERT INTO tb_estudantes(nome, sexo, idade, serie , nota) VALUES ("Luisa","Feminino", 13, "7 serie", 7);
INSERT INTO tb_estudantes(nome, sexo, idade, serie , nota) VALUES ("Carlos","Masculino", 11, "5 serie", 4);
INSERT INTO tb_estudantes(nome, sexo, idade, serie , nota) VALUES ("Felipe","Masculino", 16, "8 serie", 3);
INSERT INTO tb_estudantes(nome, sexo, idade, serie , nota) VALUES ("Fernadna","Feminino", 15, "8 serie", 8);

/* estudantes com a nota maior do que 7. */
SELECT * FROM tb_estudantes WHERE nota > 7;

/* estudantes com a nota menor do que 7. */
SELECT * FROM tb_estudantes WHERE nota < 7;


/*Ao término atualize um dado desta tabela através de uma query de atualização. */
UPDATE tb_estudantes SET nota = 5 WHERE id_estudantes = 4;







