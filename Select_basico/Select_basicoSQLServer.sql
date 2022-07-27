
CREATE DATABASE Select_basico;

USE Select_basico;

CREATE TABLE customers
(
	id NUMERIC PRIMARY KEY,
	name VARCHAR(40),
	street VARCHAR(40),
	city VARCHAR(20),
	state CHAR(2),
	credit_limit DECIMAL(10,2)
);

INSERT customers VALUES
(1, 'Pedro Augusto da Rocha', 'Rua Pedro Carlos Hoffman', 'Porto Alegre', 'RS', 700.00),
(2, 'Antonio Carlos Mamel', 'Av. Pinheiros', 'Belo Horizonte', 'MG', 3500.50),
(3, 'Luiza Augusta Mhor', 'Rua Salto Grande', 'Niteroi', 'RJ', 4000.00),
(4, 'Jane Ester', 'Av 7 de setembro','Erechim','RS',800.00),
(5, 'Marcos Antônio dos Santos','Av Farrapos','Porto Alegre','RS',4250.25);

/*Selecionar todas as colunas da tabela customers*/
SELECT * FROM customers;

/*Selecionar todos os nomes que são do Rio Grande do Sul.*/
SELECT name FROM customers WHERE state = 'RS';

/*Selecionar todos os nomes e nomes da rua que são do Porto Alegre.*/
SELECT name, street FROM customers WHERE city = 'Porto Alegre';


