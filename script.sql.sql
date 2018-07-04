
use dbinfox;
-- inspencionar tabelas no banco de dados
show tables;
-- criar uma tabela
create table tb_usuarios(
idusers int primary key,
usuario varchar (15)not null,
login varchar (50) not null unique,
senha varchar(15) not null,
perfil varchar(50)not null,
fone varchar (15));
show tables;
-- descrevendo a tabela 
describe tb_usuarios;
-- inserindo na tabela
insert into tb_usuarios values
(1,'Matheus Muniz','matheus.m','mandela123','alunosenac','1111-1111');
insert into tb_usuarios values
(2,'Kevin Consenza','kevin.c','mandela123','alunosenac','2222-2222');
insert into tb_usuarios values 
(3,'Alex Yudi','alex.y','mandela123','alunosenac','3333-3333');
select *from tb_usuarios;







