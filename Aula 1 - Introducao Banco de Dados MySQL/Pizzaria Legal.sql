CREATE DATABASE db_pizzaria_legal;

use db_pizzaria_legal;

CREATE TABLE tb_categorias(
id bigint auto_increment,
categoria varchar(50) not null,
descricao TEXT,
primary key (id)
);

DROP TABLE tb_categorias;


INSERT INTO tb_categorias (categoria, descricao)
VALUES ("Convencional", "Com ingredientes salgados");

INSERT INTO tb_categorias (categoria, descricao)
VALUES ("Especial", "Com ingredientes exclusivos");

INSERT INTO tb_categorias (categoria, descricao)
VALUES ("Vegana", "Sem origem animal");

INSERT INTO tb_categorias (categoria, descricao)
VALUES ("Doce", "Com ingredientes doces");

INSERT INTO tb_categorias (categoria, descricao)
VALUES ("Broto", "Com o tamanho ideal para 2 pessoas");