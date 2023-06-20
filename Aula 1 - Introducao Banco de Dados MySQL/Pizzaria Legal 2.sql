use db_pizzaria_legal;

CREATE TABLE tb_pizzas(
id bigint auto_increment primary key,
nome_pizza VARCHAR(50) not null,
quantidade INT not null,
valor DECIMAL(5,2),
descricao VARCHAR(50),
categorias_id bigint,
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_categorias;

INSERT INTO tb_pizzas (nome_pizza, quantidade, valor, descricao, categorias_id)
VALUES
	("Margherita", 2, 150.00, "massa fina", 2),
    ("Quatro queijos", 1, 95.60, "massa fina", 5),
    ("Frango", 3, 130.90, "massa grossa", 1),
    ("Morango", 3, 98.50, "crocante", 4),
    ("Americana", 2, 120.60, "massa média", 2),
    ("Philadelfia", 3, 165.30, "massa fina", 2),
    ("Banana", 1, 52.00, "com leite condensado", 4),
    ("Alho poró", 1, 40.00, "massa grossa", 3);
    
    -- seleciona toda tabela personagem, mostrar valorers maiores que o determinado
    SELECT * FROM tb_pizzas WHERE valor > 60;

	-- seleciona toda tabela personagem, mostrar valorers menores que o determinado para o outro
    SELECT * FROM tb_pizzas WHERE valor BETWEEN 65 AND 100;
    
    -- para para filtrar letras
   SELECT * FROM tb_pizzas WHERE nome_pizza LIKE '%M%';
    
    -- unir duas tabelas
    SELECT * FROM tb_pizzas p
	INNER JOIN tb_categorias c ON p.categorias_id=c.id;
    
	SELECT p.* FROM tb_pizzas p
	INNER JOIN tb_categorias c ON p.categorias_id = c.id
	WHERE c.categoria = "doce";
    
    SELECT nome AS Classe FROM tb_classes;