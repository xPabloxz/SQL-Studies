
CREATE DATABASE universidade_bd DEFAULT CHARSET UTF8
DEFAULT COLLATE = UTF8_GENERAL_CI;


USE universidade_bd;


CREATE TABLE IF NOT EXISTS Curso (
id INT(2) UNSIGNED AUTO_INCREMENT PRIMARY KEY, area VARCHAR(10) NOT NULL,
tipo VARCHAR(30)
);


INSERT Curso VALUES
(0,"Humanas","Medicina"),
(0, "Exatas", "Engenharia de Software"),
(0, "Humanas", "Licenciatura em História");
 
CREATE TABLE IF NOT EXISTS Matricula (
id INT(2) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY kEY,
aluno INT(4),
professor INT(4) UNSIGNED NOT NULL
);


INSERT Matricula VALUES (0, 0101, 1001),
(0, 0102, 1002),
(0, 0103, 1003),
(0, 0104, 1004);




CREATE TABLE IF NOT EXISTS Aluno (
aluno_id INT(2) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, nome VARCHAR(20) NOT NULL,
cpf VARCHAR(20) NOT NULL DEFAULT '000.000.000-00' , endereco VARCHAR(70) NOT NULL DEFAULT ' ', curso_id INT(2) UNSIGNED NOT NULL,
matricula_id INT (2) UNSIGNED NOT NULL, FOREIGN KEY (Curso_id) REFERENCES Curso (Id),
FOREIGN KEY (Matricula_id) REFERENCES Matricula (Id)
);


INSERT Aluno VALUES
(0, "Pablo Silva", "111.222.333-44", "Rua nossa senhora do ó, nº 1, Ibura, Recife", 2, 1),
(0, "Anderson Freire", "113.323.444-55", "Rua santo antônio de jesus, nº2, Arruda, Recife", 3, 2),
(0, "Rodrigo Silva", "129.322.455-44", " Rua Umbaúba do rio, nº3, Ipsep, Recife", 3, 3),
(0, "Armenio Costa", "222.545.999-33", "Rua Ferreira Pinto, nº4, Prazeres, Jaboatão dos Guararapes", 1, 4);

CREATE TABLE IF NOT EXISTS Professor (
 
id INT(2) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, nome VARCHAR(20) NOT NULL,
cpf VARCHAR(20) NOT NULL DEFAULT '000.000.000-00' , endereco VARCHAR(70) NOT NULL DEFAULT ' ',
salario FLOAT(10) NOT NULL DEFAULT '0',
carga_horaria INT(2),
especialidade INT(2) UNSIGNED NOT NULL, matricula_id INT(2) UNSIGNED NOT NULL,
FOREIGN KEY (matricula_id) REFERENCES Matricula (id), FOREIGN KEY(especialidade) REFERENCES Curso (Id)
);


INSERT Professor VALUES
(0, "Jefferson Araújo", "121.232.343-54", "Rua nossa senhora do ó, nº 36, Ibura, Recife", 3070.20, 30, 3, 1),
(0, "Antônio Lima", "221.234.539-84", "Rua ferreira costa, nº 15, arruda, Recife", 4020.30, 40, 2, 2),
(0, "Pablo de Castro", "191.292.393-94", "Rua santo antônio, nº 10, Recife, Recife", 2500.80, 36, 1, 3),
(0, "Ana Melo", "711.272.378-74", "Rua Paralela, nº 12, Torrões, Recife", 3000.00,
44, 2, 4);

SELECT Aluno.nome, Curso.tipo AS curso, Matricula.aluno AS matricula, Aluno.cpf, Aluno.endereco
FROM Aluno INNER JOIN Curso ON Curso.id = Aluno.curso_Id INNER JOIN Matricula
ON Matricula.id = Aluno.matricula_id ORDER BY Aluno.nome;

