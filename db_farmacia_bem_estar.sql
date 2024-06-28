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
    ('Medicamentos', 'Medicamentos para diversas doenças e condições.'),
    ('Suplementos', 'Suplementos vitamínicos, minerais e nutricionais.'),
    ('Cosméticos', 'Produtos de beleza e higiene pessoal.'),
    ('Higiene Pessoal', 'Sabonetes, cremes dentais, desodorantes e outros produtos de higiene.'),
    ('Outros', 'Produtos diversos que não se encaixam em nenhuma das outras categorias.');

INSERT INTO tb_produtos (name, description, value, category) VALUES
    ('Paracetamol', 'Medicamento analgésico e antitérmico.', 10.50, 1),
    ('Vitamina C', 'Suplemento vitamínico para fortalecer o sistema imunológico.', 25.00, 2),
    ('Creme Hidratante', 'Hidrata a pele e previne o ressecamento.', 32.00, 3),
    ('Sabonete Líquido', 'Sabonete para limpeza da pele.', 8.00, 4),
    ('Curativo Adesivo', 'Curativo para pequenos cortes e feridas.', 5.20, 1),
    ('Shampoo', 'Shampoo para lavar os cabelos.', 18.00, 3),
    ('Pasta de Dente', 'Protege os dentes contra cáries e gengivite.', 7.50, 4),
    ('Protetor Solar', 'Protege a pele contra os raios UV.', 42.00, 3);

SELECT * FROM tb_produtos WHERE value > 50.00;

SELECT * FROM tb_produtos WHERE value BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE name LIKE '%C%';

SELECT p.name, p.description, p.value, c.name, c.description FROM tb_produtos AS p INNER JOIN tb_categorias AS c ON p.category = c.id;

SELECT p.name, p.description, p.value, c.name, c.description FROM tb_produtos AS p INNER JOIN tb_categorias AS c ON p.category = c.id WHERE c.name = 'Cosméticos';

