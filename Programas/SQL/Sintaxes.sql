create table aluno(
  id_aluno int primary key auto_increment, -- Cria um código sozinho para cada um e a torna uma chave primária.
  Nome varchar(50) not null, -- Deixa o campo obrigátório.
  Idade int check (Idade >= 0), -- Checa se o valor condiz com a condição definida.
  Email varchar(100) unique, -- Não deixa aquele valor se repetir
  Sexo varchar(50) default 'Masculino' -- Dá um valor predefinido caso não preenchido.
);
insert into aluno(Nome,Idade,Email)
values('Davi',16,'patodonalds@gmail.com'); -- Joga os valores dentro da tabela.

select * from aluno; -- Mostra tudo da tabela.
