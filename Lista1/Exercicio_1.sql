
/* Crie um banco de dados para um serviço de um site de cursos onlines, o nome do banco deverá ter o seguinte nome db_cursoDaMinhaVida,,.*/

CREATE DATABASE db_RH;

/*Crie uma tabela tb_categoria determine 3 atributos */

CREATE TABLE tb_funcionaries (

id_funcionarie BIGINT(5) AUTO_INCREMENT,
nome VARCHAR(30) NOT NULL,
funcao VARCHAR(30) NOT NULL,
salario BIGINT NOT NULL,
local_trabalho VARCHAR(30) NOT NULL,
tempo_empresa BIGINT NOT NULL,
PRIMARY KEY (id)

);

INSERT INTO tb_funcionaries(nome, funcao, salario, local_trabalho, tempo_empresa) VALUES ("José","Diretor", 7000, "Sede", 8);
INSERT INTO tb_funcionaries(nome, funcao, salario, local_trabalho, tempo_empresa) VALUES ("Camila","Estagiária", 1200, "Home Office", 3);
INSERT INTO tb_funcionaries(nome, funcao, salario, local_trabalho, tempo_empresa) VALUES ("Fernanda","Gerente", 5000, "Sede", 4);
INSERT INTO tb_funcionaries(nome, funcao, salario, local_trabalho, tempo_empresa) VALUES ("Ribamar","Assistente", 1800, "Sede", 9);
INSERT INTO tb_funcionaries(nome, funcao, salario, local_trabalho, tempo_empresa) VALUES ("Pedro","Assistente Financeiro", 2000, "Sede", 8);

/* funcionaries com o salário maior do que 2000.. */
SELECT * FROM tb_funcionaries WHERE salario > 2000;

/* funcionaries com o salário menor do que 2000 */
SELECT * FROM tb_funcionaries WHERE salario < 2000;

/*Ao término atualize um dado desta tabela através de uma query de atualização. */
UPDATE tb_funcionaries SET salario = 2500 WHERE id_funcionarie = 4;







