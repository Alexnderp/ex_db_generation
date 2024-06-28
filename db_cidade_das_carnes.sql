CREATE TABLE tb_categorias (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    description TEXT NOT NULL
);

CREATE TABLE tb_produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    description TEXT NOT NULL,
    value DECIMAL(10,2) NOT NULL,
    category INT NOT NULL,
    FOREIGN KEY (category) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (name, description) VALUES
    ('Bovinas', 'Carnes de vaca, como contrafilé, alcatra, patinho, picanha, etc.'),
    ('Suínas', 'Carnes de porco, como costelinha, lombo, tender, bacon, etc.'),
    ('Aves', 'Carnes de frango, peru, pato, etc.'),
    ('Ovinas', 'Carnes de carneiro e cordeiro.'),
    ('Frios e Defumados', 'Presunto, mortadela, salame, linguiça, etc.');

INSERT INTO tb_produtos (name, description, value, category) VALUES
    ('Contrafilé', 'Corte macio e saboroso da parte traseira do boi.', 38.90, 1),
    ('Alcatra', 'Corte macio e versátil da parte traseira do boi.', 42.50, 1),
    ('Costelinha Suína', 'Ideal para churrasco ou assar no forno.', 28.00, 2),
    ('Lombo Suíno', 'Corte magro e saboroso, ideal para fritar ou assar.', 35.50, 2),
    ('Peito de Frango', 'Corte versátil para diversas receitas.', 19.90, 3),
    ('Coxa de Frango', 'Mais saborosa e suculenta que o peito.', 22.50, 3),
    ('Linguiça Calabresa', 'Linguiça temperada com especiarias.', 25.00, 5),
    ('Queijo Mussarela', 'Queijo macio e saboroso para diversas receitas.', 32.00, 5);

SELECT * FROM tb_produtos WHERE value > 50.00;

SELECT * FROM tb_produtos WHERE value BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE name LIKE '%C%';

SELECT p.name, p.description, p.value, c.name, c.description FROM tb_produtos AS p INNER JOIN tb_categorias AS c ON p.category = c.id;

SELECT p.name, p.description, p.value, c.name, c.description FROM tb_produtos AS p
INNER JOIN tb_categorias AS c ON p.category = c.id WHERE c.name = 'ovinas'





