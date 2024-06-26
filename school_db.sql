CREATE DATABASE school_db

CREATE TABLE students (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  birthdate DATE NOT NULL,
  course VARCHAR(50) NOT NULL,
  rate DECIMAL(2,1) NOT NULL
);

INSERT INTO students (name, birthdate, course, rate)
VALUES
  ('Ana Silva', '2000-10-02', 'Ciências da Computação', 8.5),
  ('João Oliveira', '2001-05-15', 'Engenharia Elétrica', 9.2),
  ('Maria Souza', '2002-03-28', 'Administração de Empresas', 7.8),
  ('Pedro Santos', '2003-07-11', 'Medicina', 9.7),
  ('Carlos Almeida', '2004-01-24', 'Direito', 8.1),
  ('Bruna Costa', '2005-06-06', 'Pedagogia', 7.9),
  ('Felipe Ferreira', '2006-12-19', 'Psicologia', 8.4),
  ('Gabriela Dias', '2007-09-08', 'Jornalismo', 9.0);

SELECT * FROM students WHERE rate > 7.0;
SELECT * FROM students WHERE rate < 7.0;
UPDATE students SET rate = 8.2 WHERE id = 3;
SELECT * FROM students
