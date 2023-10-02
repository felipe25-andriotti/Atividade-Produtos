/* Criação da tabela "Produtos" com os campos especificados*/
CREATE TABLE Produtos (
    id_produto INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    preço DECIMAL(5, 2) NOT NULL,
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


-- Contando a quantidade de produtos cadastrados.
SELECT COUNT(*) AS QuantidadeDeProdutos FROM Produtos;

