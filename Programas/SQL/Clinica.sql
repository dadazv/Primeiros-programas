create table paciente(
  nome varchar(250) not null,
  cpf char(11) primary key not null,
  nasc date not null,
  fone varchar(15) not null,
  endereco varchar(200) not null
);
create table medicos(
  nome varchar(250) not null,
  crm varchar(250) primary key not null,
  esp varchar(100) not null,
  email varchar(150) unique
);
create table consulta(
  cons date not null,
  hora datetime not null,
  moti varchar(250) not null,
  valor decimal(10,2) not null,
  statu varchar(100) not null,
  id_con int primary key auto_increment
);

insert into paciente(nome,cpf,nasc,fone,endereco)
values('Orochi','2891829182','2010-09-27','921299110','SP');

insert into paciente(nome,cpf,nasc,fone,endereco)
values('Macdemarco','38108310830','2008-07-18','298928919','BR');

insert into paciente(nome,cpf,nasc,fone,endereco)
values('Pablo do arrocha','286386382','1999-09-09','67263727','PE');

select * from paciente;