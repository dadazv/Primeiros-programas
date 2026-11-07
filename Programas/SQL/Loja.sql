create table produtos(
  nome varchar(250) not null,
  marca varchar(250) not null,
  preco decimal(10,2) not null,
  estoque int not null,
  id_pro int primary key auto_increment
);
create table cliente(
  nome varchar(250) not null,
  cpf char(11) primary key not null,
  fone varchar(15) not null,
  email varchar(150) unique,
  cidade varchar(100)
);
create table vendedores(
  nome varchar(250) not null,
  cpf char(11) primary key not null,
  fone varchar(15) not null,
  sala decimal(10,2) not null,
  data date
);

insert into produtos(nome,marca,preco,estoque)
values('Cuscuz','Maria',200.00,100);

insert into produtos(nome,marca,preco,estoque)
values('Guaraná','BMW',400,100);

insert into produtos(nome,marca,preco,estoque)
values('Leite','Nike',20.50,100);

select * from produtos;