DROP TABLE IF EXISTS aluno;

CREATE TABLE aluno(
  Nome VARCHAR(50),
  Curso VARCHAR(50),
  Nota1 DECIMAL(3,1),
  Nota2 DECIMAL(3,1),
  Nota3 DECIMAL(3,1) 
);

INSERT INTO aluno(Nome,Curso,Nota1,Nota2,Nota3)
VALUES('Davi','TDS',6.0,7.5,9.0);

SELECT Nome,Curso,(Nota1 + Nota2 + Nota3) / 3 AS media FROM aluno;