CREATE DATABASE multipleTables;

USE multipleTables;

CREATE TABLE providers
(
	id NUMERIC PRIMARY KEY,
    name VARCHAR(25),
    street VARCHAR(25),
    city VARCHAR(15),
    state CHAR(2)
);

INSERT providers VALUES
(1,'Henrique','Av Brasil','Rio de Janeiro','RJ'),
(2,'Marcelo Augusto','Rua Imigrantes','Belo Horizonte','MG'),
(3,'Caroline Silva','Av São Paulo','Salvador','BA'),
(4,'Guilerme Staff','Rua Central','Porto Alegre','RS'),
(5,'Isabela Moraes','Av Juiz Grande','Curitiba','PR'),
(6,'Francisco Accerr','Av Paulista','São Paulo','SP');

CREATE TABLE categories
(
	id NUMERIC PRIMARY KEY,
    name VARCHAR(25)
);

INSERT categories VALUES
(1,'old stock'),
(2,'new stock'),
(3, 'modern'),
(4,'commercial'),
(5,'recyclable'),
(6,'executive'),
(7,'superior'),
(8,'wood'),
(9,'super luxury'),
(10,'vintage');

CREATE TABLE products
(
	id NUMERIC PRIMARY KEY,
    name VARCHAR(20),
    amount NUMERIC,
    price NUMERIC(6,2),
    id_providers NUMERIC,
    id_categories NUMERIC,
    FOREIGN KEY (id_providers) REFERENCES providers(id),
    FOREIGN KEY (id_categories) REFERENCES categories(id)
);

INSERT products VALUES
(1, 'Two-door wardrobe',100, 800, 6, 8),
(2, 'Dining table',1000,560,1,9),
(3, 'Towel holder',10000,25.50,5,1),
(4, 'Computer desk',350,320.50,4,6),
(5, 'Chair',3000,210.64,3,6),
(6, 'Single bed',750,460,1,2);

SELECT products.name, providers.name FROM products INNER JOIN providers ON providers.id = id_providers WHERE id_categories = 6;


