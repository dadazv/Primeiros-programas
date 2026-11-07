create table pratos(
  nome varchar(250) not null,
  cate varchar(20) not null,
  preco decimal(10,2) not null,
  prepa time not null,
  dispo varchar(20) not null,
  id_pra int primary key auto_increment
);
create table funcionarios(
  nome varchar(250) not null,
  cpf char(11) primary key not null,
  carg varchar(100) not null,
  sala decimal(10,2) not null,
  fone varchar(11) not null
);
create table mesas(
  num int primary key not null,
  capa int not null,
  loc varchar(100) not null,
  statu varchar(50) not null,
  util time
);
insert into mesas(num,capa,loc,statu,util)
values(1,10,'Centro','Vazia','17:32:44');

insert into mesas(num,capa,loc,statu,util)
values(3,20,'Esquerda','Cheia','20:32:10');

insert into mesas(num,capa,loc,statu,util)
values(2,5,'Direita','Vazia','15:01:10');

select * from mesas;