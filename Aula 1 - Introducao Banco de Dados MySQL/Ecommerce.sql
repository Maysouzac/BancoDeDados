CREATE DATABASE ecommerce;

USE ecommerce;

CREATE TABLE produtos(
id  bigint auto_increment,
produto VARCHAR(50) not null,
valor DECIMAL(10,2) not null,
descricao VARCHAR(2000) not null,
estoque INT,
categoria VARCHAR(50) not null,
PRIMARY KEY (id)
);

INSERT INTO produtos (produto, valor, descricao, estoque, categoria)
VALUES ("Iphone 14 	Pro Max", 9660.70, "iPhone 14 Pro Max 256 GB. Câmera grande-angular de 48 MP para capturar detalhes impressionantes. Dynamic Island, uma nova forma de interação no iPhone. Tela Sempre Ativa. E Detecção de Acidente(1), um novo recurso de segurança que liga para a emergência se você não puder.", 15, "Celular");

INSERT INTO produtos (produto, valor, descricao, estoque, categoria)
VALUES ("Iphone 13 Pro Max", 7750.80, "iPhone 13 Pro Max 256 GB. O maior upgrade do sistema de câmera Pro até hoje. Tela Super Retina XDR com ProMotion para uma experiência mais rápida e responsiva. Chip A15 Bionic com velocidade impressionante. 5G ultrarrápido1. Design resistente. E a maior duração de bateria em um iPhone2.", 10, "Celular");

INSERT INTO produtos (produto, valor, descricao, estoque, categoria)
VALUES ("Iphone 12 Pro Max", 6605.55, "iPhone 12 Pro Max 256 GB. 5G para baixar arquivos enormes em qualquer lugar e fazer streaming de vídeos HDR. Tela Super Retina XDR maior com 6,7 polegadas. Ceramic Shield, que é quatro vezes mais resistente a quedas. Fotos surpreendentes em pouca luz com o melhor sistema de câmera Pro em um iPhone e alcance de zoom óptico de 5x. Reprodução, edição e gravação de vídeos em Dolby Vision com qualidade de cinema. Retratos com modo Noite e experiências ainda melhores em realidade aumentada com o Scanner LiDAR. Poderoso chip A14 Bionic. E novos acessórios MagSafe com encaixe fácil e recarga sem fio mais rápida.", 12, "Celular");

INSERT INTO produtos (produto, valor, descricao, estoque, categoria)
VALUES ("Iphone 11 Pro Max", 3558.70, "iPhone 11 Pro Max 256 GB. A tela OLED Super Retina XDR de 6,5 sem molduras e com resolução FullHD+, possui um revolucionário sistema de três câmeras que multiplica sua capacidade criativa e é fácil de usar.", 8, "Celular");

INSERT INTO produtos (produto, valor, descricao, estoque, categoria)
VALUES ("Iphone XR", 2289.50, "O iPhone XR tem tela Liquid Retina de 6,1 polegadas (2) e seis lindas cores. Face ID avançado para desbloquear o aparelho e acessar apps só com o olhar. Chip A12 Bionic, que usa aprendizado de máquina em tempo real para transformar sua maneira de interagir com fotos, jogos, realidade aumentada e muito mais.", 5, "Celular");

INSERT INTO produtos (produto, valor, descricao, estoque, categoria)
VALUES ("AirPods 2 Geração", 929.50, "Ajuste universal que é confortável o dia todo. Ligado automaticamente, conectado automaticamente. Configuração fácil para todos os seus dispositivos Apple.O estojo de carregamento oferece mais de 24 horas de duração da bateria.", 20, "Acessórios");

INSERT INTO produtos (produto, valor, descricao, estoque, categoria)
VALUES ("Apple Watch Series 8 41mm", 2596.50, "O Apple Watch Series 8 tem sensores e apps avançados de saúde, que permitem fazer um ECG*, ver sua frequência cardíaca e o nível de oxigênio no sangue,e acompanhar as variações de temperatura. Além disso, a Detecção de Acidente, o monitoramento dos estágios do sono e as métricas avançadas de exercícios ajudam você a ter uma vida ativa, saudável, segura e conectada.", 17, "Relógio");

INSERT INTO produtos (produto, valor, descricao, estoque, categoria)
VALUES ("AirTag", 369.00, "Com o AirTag, fica muito fácil encontrar suas coisas. Prenda um nas chaves, coloque outro dentro da mochila e pronto. Eles aparecem no radar do app Buscar. Com o AirTag, você não perde mais nada.", 30, "Acessórios");

select * from produtos;
DROP TABLE produtos;


SELECT * FROM produtos WHERE valor > 500;

SELECT * FROM produtos WHERE valor <= 500;

UPDATE produtos SET valor = 500.00 WHERE id = 6;

-- Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações dos produtos deste e-commerce. 
-- Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste e-commerce.
-- Insira nesta tabela no mínimo 8 dados (registros).
-- Faça um SELECT que retorne todes os produtos com o valor maior do que 500.
-- Faça um SELECT que retorne todes os produtos com o valor menor do que 500.
-- Ao término atualize um registro desta tabela através de uma query de atualização.
-- Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.

 