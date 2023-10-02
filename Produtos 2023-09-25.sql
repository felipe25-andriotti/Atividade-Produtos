

drop table if  exists produtos;

/* Criação da tabela "Produtos" com os campos especificados*/
CREATE TABLE Produtos (
    id_produto INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    preço DECIMAL(8, 2) NOT NULL,
    estoque INTEGER NOT NULL,
    perecível VARCHAR(3) NOT NULL,
    marca VARCHAR(20),
    nacionalidade VARCHAR(10)
);
/* Inserção de cinco produtos na tabela "Produtos"*/
INSERT INTO Produtos VALUES (null, 'Camiseta de Algodão', 29.99, 100, 'Não', 'FashionWear', 'Brasil');
INSERT INTO Produtos VALUES (null, 'Notebook UltraSlim', 1499.99, 50, 'Não', 'TechCo', 'EUA');
INSERT INTO Produtos VALUES (null, 'Maçãs', 1.25, 200, 'Sim', 'FruitFarm', 'Brasil');
INSERT INTO Produtos VALUES (null, 'Sabonete de Erva-Mate', 4.99, 75, 'Não', 'EcoBeauty', 'Brasil');
INSERT INTO Produtos VALUES (null, 'Óculos de Sol', 79.99, 30, 'Não', 'FashionEye', 'Itália');

/* Selecionando todos os valores da tabela "Produtos".*/
SELECT * FROM Produtos;

-- Contando a quantidade de produtos cadastrados.
SELECT COUNT(*) AS QuantidadeDeProdutos FROM Produtos;

/* Calculando o preço médio dos produtos.*/
SELECT AVG(preço) AS PreçoMédioDosProdutos FROM Produtos;

/* Calculando a média dos preços dos produtos em 2 grupos: perecíveis e não perecíveis.*/
SELECT perecível, AVG(preço) AS MédiaDePreço FROM Produtos GROUP BY perecível;

/* Calculando a média dos preços dos produtos agrupados pelo nome do produto.*/
SELECT nome, AVG(preço) AS MédiaDePreço FROM Produtos GROUP BY nome;

/* Calculando a média dos preços e o total em estoque dos produtos.*/
SELECT AVG(preço) AS MédiaDePreço, SUM(estoque) AS TotalEmEstoque FROM Produtos;

/*Selecionando o nome, marca e quantidade em estoque do produto mais caro.*/
SELECT nome, marca, estoque FROM Produtos WHERE preço = (SELECT MAX(preço) FROM Produtos);

/*Selecionando os produtos com preço acima da média.*/
SELECT * FROM Produtos WHERE preço > (SELECT AVG(preço) FROM Produtos);

/*Contando a quantidade de produtos de cada nacionalidade.*/
SELECT nacionalidade, COUNT(*) AS Quantidade FROM Produtos GROUP BY nacionalidade;
