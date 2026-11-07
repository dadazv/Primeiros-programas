create table aluno(
  nome varchar(250) not null,
  mat char(10) primary key not null,
  nasc date not null,
  fone varchar(11) not null,
  cid varchar(100)
);
create table cursos(
  nome varchar(100) not null,
  carg int not null,
  moda varchar(100) not null,
  turno varchar(50) not null,
  dura int not null,
  id_cur int primary key auto_increment
);
create table professores(
  nome varchar(250) not null,
  cpf char(11) primary key not null,
  form varchar(100) not null,
  fone varchar(11) not null,
  sala decimal(10,2) not null
);
insert into aluno(nome,mat,nasc,fone,cid)
values('Davi','09938','2010-09-27','39293829','SP');

insert into aluno(nome,mat,nasc,fone,cid)
values('Nana','1919191','2008-07-18','6363636','PE');

insert into aluno(nome,mat,nasc,fone,cid)
values('Lucas','778788','2011-03-15','2551681','MT');

select * from aluno;