CREATE DATABASE db_generation_game_online;

CREATE TABLE tb_classes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    description VARCHAR(255) NOT NULL
);
CREATE TABLE tb_personagens (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    level INT NOT NULL,
    atack INT NOT NULL,
    defense INT NOT NULL,
    class INT NOT NULL,
    FOREIGN KEY (class) REFERENCES tb_classes(id)
);
INSERT INTO tb_classes (name, description) VALUES
    ('Mago', 'Mestres das artes arcanas, conjurando magias poderosas.'),
    ('Guerreiro', 'Combatentes corpo a corpo, desferindo golpes devastadores.'),
    ('Arqueiro', 'Especialistas em ataques à distância com precisão mortal.'),
    ('Ladino', 'Adeptos da furtividade e do combate rápido.'),
    ('Curandeiro', 'Suporte crucial para o grupo, restaurando vida e cura feridas.');
INSERT INTO tb_personagens (name, level, atack, defense, class) VALUES
    ('Alyndra', 50, 2500, 1500, 1), 
    ('Brutos', 65, 3200, 1800, 2), 
    ('Zaleia', 42, 2800, 1400, 3), 
    ('Astuto', 30, 2100, 1000, 4), 
    ('Curadora', 57, 1800, 2300, 5), 
    ('Ragnar', 48, 2600, 1600, 2), 
    ('Elara', 35, 2400, 1300, 1), 
    ('Serena', 28, 2000, 1200, 3), 
    ('Altomar', 62, 3500, 2100, 1), 
    ('Lex', 54, 2900, 1700, 4);

SELECT * FROM tb_personagens WHERE atack > 2000;
SELECT * FROM tb_personagens WHERE defense BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE name LIKE '%C%';

SELECT p.id, p.name, p.level, p.atack, p.defense, c.name, c.description
FROM tb_personagens AS p INNER JOIN tb_classes AS c ON p.class = c.id;

SELECT p.id, p.name, p.level, p.atack, p.defense, c.name, c.description
FROM tb_personagens AS p INNER JOIN tb_classes AS c ON p.class = c.id WHERE c.name = 'Arqueiro';



