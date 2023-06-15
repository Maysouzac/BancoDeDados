CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE colaboradores(
id  bigint auto_increment,
nome VARCHAR(50) not null,
salario DECIMAL(10,2) not null,
cargo VARCHAR(50) not null,
departamento VARCHAR(50) not null,
data_admissao DATE not null,
PRIMARY KEY (id)
);
select * from colaboradores;
update colaboradores set data_adimissao = 2022-08-10;
DELETE FROM colaboradores where id = 9;
DROP TABLE colaboradores;

INSERT INTO colaboradores (nome, salario, cargo, departamento, data_admissao)
VALUES ("Mayara Souza", 5000.00, "Dev. Java Script Jr.", "Técnologia da Informação", "20220810");

INSERT INTO colaboradores (nome, salario, cargo, departamento, data_admissao)
VALUES ("Antonio Duarte", 1500.00, "Assistente Financeiro.", "Financeiro", "20220522");

INSERT INTO colaboradores (nome, salario, cargo, departamento, data_admissao)
VALUES ("Raquel Oliveira", 3500.00, "Gerente de Vendas", "Vendas", "20210906");

INSERT INTO colaboradores (nome, salario, cargo, departamento, data_admissao)
VALUES ("Maria Silva", 1800.00, "Analista RH.", "Recursos Humanos", "20191119");

INSERT INTO colaboradores (nome, salario, cargo, departamento, data_admissao)
VALUES ("Pedro Costa", 3000.00, "Operador de Máquinas", "Produção", "20190615");

SELECT * FROM colaboradores WHERE salario > 2000;

SELECT * FROM colaboradores WHERE salario < 2000;

UPDATE colaboradores SET salario = 3200.00 WHERE id = 3;

-- Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos colaboradores desta empresa. 
-- Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para se trabalhar com o serviço deste RH.
-- Insira nesta tabela no mínimo 5 dados (registros).
-- Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.
-- Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.
-- Ao término atualize um registro desta tabela através de uma query de atualização.
-- Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.