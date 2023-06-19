CREATE DATABASE db_generation_game_online;

use db_generation_game_online;

-- criando tabela
CREATE TABLE tb_categorias(
id bigint auto_increment,
nome_classe varchar(50) not null,
descricao TEXT,
primary key (id)
);

-- inserindo dados
INSERT INTO tb_categorias (nome_classe, descricao) VALUES 
("Knight", "Mestre de combate corpo a corpo, possuindo resistência imensa."),
("Paladin", "Mestre de luta à distância, domínio leve da artes mágicas."),
("Druid", "Mestre da arte da cura e suporte."),
("Sorcerer", "Mestre das artes mágicas, agressivas e ofensivas."),
("Shooter", "Mestre de combate com armas.");

-- criando tabela personagem
CREATE TABLE tb_personagens (
id bigint auto_increment PRIMARY KEY,
nome_personagem VARCHAR(50) not null,
vida INT,
mana INT,
nivel INT,
id_categorias bigint,
FOREIGN KEY (id_categorias) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_personagens;

INSERT INTO tb_personagens (nome_personagem, vida, mana, nivel, id_categorias)
VALUES
("Mayara", 10, 2000, 1000, 1),
("Sabrina", 5, 1500, 500, 2),
("Lucas", 8, 1800, 800, 1),
("Maria", 7, 2500, 200, 3),
("Ana", 5, 2130, 700, 2),
("João", 11, 1200, 510, 4),
("Carlos", 6, 1760, 300, 3),
("Carol", 8, 2460, 1500, 4);

 -- seleciona toda tabela personagem, mostrar valorers maiores que o determinado
    SELECT * FROM tb_personagens WHERE vida > 2000;

	-- seleciona toda tabela personagem, mostrar valorers menores que o determinado para o outro
    SELECT * FROM tb_personagens WHERE vida BETWEEN 1000 AND 2000;
    
    -- para para filtrar letras
    SELECT nome_personagem FROM tb_personagens
	WHERE nome_personagem LIKE "%M%";
    
    -- unir duas tabelas
    SELECT * FROM tb_personagens p
	INNER JOIN tb_categorias c ON p.id_categorias=c.id;
    
    SELECT p.* FROM tb_personagens p
	INNER JOIN tb_categorias c ON p.id_categorias = c.id
	WHERE c.nome_classe = "Paladin";