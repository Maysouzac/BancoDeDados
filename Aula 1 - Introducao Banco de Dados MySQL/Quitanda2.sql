use db_quitanda;

CREATE TABLE tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
primary key (id)
);

INSERT INTO tb_categoria (descricao) values ("Fruta");
INSERT INTO tb_categoria (descricao) values ("Verdura");
INSERT INTO tb_categoria (descricao) values ("Legume");

SELECT * FROM tb_categoria;

-- Adicionando a nova coluna
ALTER TABLE tb_produtos ADD categoria_id bigint;

-- Adicionando a constraint
ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias 
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id);