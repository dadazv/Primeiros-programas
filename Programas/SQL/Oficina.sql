create table clientes(
  nome varchar(250) not null,
  cpf char(11) primary key not null,
  fone varchar(11) not null,
  email varchar(100) unique not null,
  ende varchar(100) not null
);
create table veiculos(
  placa char(10) primary key not null,
  marca varchar(100) not null,
  mode varchar(100) not null,
  ano int not null,
  cor varchar(100) not null
);
create table servicos(
  serv varchar(250) not null,
  valor decimal(10,2) not null,
  reali date not null,
  statu varchar(100) not null,
  respo varchar(250) not null,
  id_serv int primary key auto_increment
);
insert into clientes(nome,cpf,fone,email,ende)
values('Davi','0103492402','939393993','1234@gmail.com','SP');

insert into clientes(nome,cpf,fone,email,ende)
values('Marcos','937913791','0002221213','123@gmail.com','PE');

insert into clientes(nome,cpf,fone,email,ende)
values('João','091029011','47274922','12@gmail.com','SP');

select * from clientes;