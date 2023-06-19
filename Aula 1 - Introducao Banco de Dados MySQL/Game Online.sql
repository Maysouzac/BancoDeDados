CREATE DATABASE db_generation_game_online;

use tb_classes;

CREATE TABLE tb_categorias(
id bigint auto_increment,
nome_classe varchar(50) not null,
descricao TEXT,
primary key (id)
);


INSERT INTO tb_categorias (nome_classe, descricao)
VALUES ("Knight", "Mestre de combate corpo a corpo, possuindo resistência imensa.");

INSERT INTO tb_categorias (categoria, descricao)
VALUES ("Paladin", "Mestre de luta à distância, domínio leve da artes mágicas.");

INSERT INTO tb_categorias (categoria, descricao)
VALUES ("Druid", "Mestre da arte da cura e suporte.");

INSERT INTO tb_categorias (categoria, descricao)
VALUES ("Sorcerer", "Mestre das artes mágicas, agressivas e ofensivas.");

INSERT INTO tb_categorias (categoria, descricao)
VALUES ("Shooter", "Mestre de combate com armas.");