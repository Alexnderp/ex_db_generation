CREATE TABLE tb_categorias (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    description TEXT NOT NULL
);

CREATE TABLE tb_pizzas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    description TEXT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    category INT NOT NULL,
    FOREIGN KEY (category) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (name, description) VALUES
    ('Salgadas', 'Pizzas com ingredientes salgados, como carne, frango, queijo e legumes.'),
    ('Doces', 'Pizzas com ingredientes doces, como chocolate, frutas e nutella.'),
    ('Vegetariana', 'Pizzas com ingredientes vegetarianos, como legumes, verduras e queijo.'),
    ('Veganas', 'Pizzas sem nenhum ingrediente de origem animal, incluindo queijo e ovos.'),
    ('Especiais', 'Pizzas com ingredientes diferenciados ou combinações gourmet.');

INSERT INTO tb_pizzas (name, description, price, category) VALUES
    ('Quattro Formaggi', 'Quatro tipos de queijo: mussarela, provolone, gorgonzola e parmesão.', 45.00, 1),
    ('Calabresa', 'Calabresa moída, cebola e pimentão verde.', 48.00, 1),
    ('Frango com Catupiry', 'Frango desfiado, catupiry e requeijão.', 52.00, 1),
    ('Vegetariana de Brócolis', 'Brócolis, tomate seco, alho e azeite extra virgem.', 40.00, 3),
    ('Marguerita', 'Molho de tomate, mussarela fresca e manjericão.', 38.00, 1),
    ('Chocolate com Morango', 'Creme de chocolate, morangos frescos e calda de chocolate.', 42.00, 2),
    ('Banana com Canela', 'Banana em fatias, canela em pó e açúcar.', 35.00, 2),
    ('Vegetariana de Abobrinha', 'Abobrinha grelhada, queijo feta, tomate seco e pesto.', 43.00, 3);


SELECT * FROM tb_pizzas WHERE price > 45.00;

SELECT * FROM tb_pizzas WHERE price BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE name LIKE '%M%';

SELECT p.name, p.description, p.price, c.name, c.description FROM tb_pizzas AS p INNER JOIN tb_categorias AS c ON p.category = c.id;

SELECT p.name, p.description, p.price, c.name, c.description FROM tb_pizzas AS p INNER JOIN tb_categorias AS c ON p.category = c.id WHERE c.name = 'Doces'; 


