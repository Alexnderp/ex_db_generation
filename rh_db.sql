CREATE database rh_service;

CREATE TABLE employees(
	ID INT AUTO_INCREMENT KEY,
	name varchar(250),
	cpf varchar(11),
	office varchar(100),
	salary decimal
);

INSERT INTO employees (name, cpf, office, salary) VALUES 
  ('Maria Silva', '00000000000', 'Gerente de Vendas', 5000.00),
  ('João Oliveira', '11111111111', 'Desenvolvedor Web', 3500.00),
  ('Pedro Souza', '22222222222', 'Analista de Dados', 4200.00),
  ('Ana Costa', '33333333333', 'Designer Gráfica', 2800.00),
  ('Carlos Almeida', '44444444444', 'Estagiário', 1800.00);
  
 SELECT * FROM employees WHERE salary > 2000.00;
 SELECT * FROM employees WHERE salary < 2000.00;
 UPDATE employees SET name = 'Ana Almeida' WHERE id = 4;
 SELECT * FROM employees;
