CREATE DATABASE Select_MinMax;

USE Select_MinMax;

CREATE TABLE products
(
	id numeric PRIMARY KEY,
    name varchar(30),
    amount numeric,
    price decimal(6,2)
);

INSERT products VALUES
(1,'Two-door wardrobe',100,80),
(2,'Dining table',100,560),
(3,'Towel holder',10000,5.50),
(4,'Computer desk',350,100),
(5,'Chair',3000,210.64),
(6,'Single bed',750,99);

/* Seleciona tudo da tabela produtos*/
SELECT * FROM products;

/* Seleciona só os itens com preço menor que 10 ou maior que 100*/
SELECT id,name FROM products WHERE price<10 OR price>100;