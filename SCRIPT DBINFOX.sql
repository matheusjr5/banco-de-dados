
use dbinfox;
-- inspencionar tabelas no banco de dados
show tables;
-- criar uma tabela
create table tb_usuarios(
idusers int primary key,
usuario varchar (50)not null,
login varchar (50) not null unique,
senha varchar(30) not null,
perfil varchar(30)not null,
fone varchar (30));
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








use dbinfox;

create table tb_cliente(
idcli int primary key,
cpfcli varchar (20) unique,
nomecli varchar (50) not null,
cep varchar (20) not null,
tipo varchar(20) not null,
logradouro varchar(20)not null,
numero varchar (10) not null,
complemento varchar(10),
bairro varchar(20)not null,
cidade varchar (20) not null,
uf varchar(10) not null,
fone1 varchar(20)not null,
fone2 varchar (20),
emailcli varchar (50)not null);
show tables;
insert into tb_cliente values
(1,'123.456.789-0','alex','98765-432','rua','rua portugal','1','','calmon','sao paulo','sp','25522552','','japonesmandela@yahoo.com');
describe tables tb_cliente;
select *from tb_cliente;

 






