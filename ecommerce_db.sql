CREATE DATABASE ecommerce;

CREATE TABLE products (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  category VARCHAR(50) NOT NULL,
  photo VARCHAR(255) NOT NULL,
  stock INT NOT NULL);

INSERT INTO products (name, description, price, category, photo, stock)
VALUES
  ('Smartphone Galaxy S23', 'Smartphone Android com tela AMOLED de 6.1 polegadas, processador Snapdragon 8 Gen 2, 8GB de RAM e 128GB de armazenamento.', 3299.00, 'Eletrônicos', 'imagens/smartphone_galaxys23.jpg', 20),
  ('Camisa Nike Dri-Fit', 'Camisa masculina de manga curta com tecnologia Dri-Fit para maior respirabilidade.', 129.90, 'Roupas', 'imagens/camisa_nike_drifit.jpg', 35),
  ('Livro O Senhor dos Anéis', 'Livro clássico de fantasia épica de J.R.R. Tolkien.', 49.90, 'Livros', 'imagens/livro_senhor_dos_aneis.jpg', 50),
  ('TV LG 55UQ7500', 'Smart TV 4K UHD de 55 polegadas com HDR e inteligência artificial.', 3499.00, 'Eletrônicos', 'imagens/tv_lg_55uq7500.jpg', 15),
  ('Tênis Adidas Ultraboost 23', 'Tênis de corrida leve e responsivo com amortecimento Boost.', 599.90, 'Roupas', 'imagens/tenis_adidas_ultraboost23.jpg', 28),
  ('Cafeteira Nespresso Vertuo Plus', 'Cafeteira de cápsulas que prepara cafés expressos e lungos.', 499.00, 'Eletrodomésticos', 'imagens/cafeteira_nespresso_vertuo_plus.jpg', 10),
  ('Notebook Dell Inspiron 15 3520', 'Notebook com processador Intel Core i5, 8GB de RAM e 256GB de SSD.', 4399.00, 'Informática', 'imagens/notebook_dell_inspiron_15_3520.jpg', 8),
  ('Fones de Ouvido JBL Live Pro+', 'Fones de ouvido Bluetooth com cancelamento de ruído ativo e som JBL Pure Bass.', 799.00, 'Eletrônicos', 'imagens/fones_jbl_live_pro_plus.jpg', 12);

SELECT * FROM products WHERE price > 500;
SELECT * FROM products WHERE price < 500;
UPDATE products SET price = 450 WHERE id = 4;
SELECT * FROM products;