
use dbinfox;
-- inspencionar tabelas no banco de dados
show tables;
-- criar uma tabela
create table tb_usuarios(
idusers int primary key,
usuario varchar (50)not null,
login varchar (50) not null unique,
senha varchar(20) not null,
perfil varchar(20)not null,
fone varchar (20));
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
idcli int auto_increment primary key,
cpfcli varchar (20) unique,
nomecli varchar (50) not null,
cep varchar (20) not null,
tipo varchar(20) not null,
logradouro varchar(10)not null,
numero varchar (10) not null,
complemento varchar(10),
bairro varchar(20)not null,
cidade varchar (20) not null,
uf char(2) not null,
fone1 varchar(20)not null,
fone2 varchar (20),
emailcli varchar (20)not null);
show tables;
insert into tb_cliente values
(null,'123.456.789-0','alex','98765-432','rua','jardim','1','casa 3','calmon','sao paulo','sp','25522552','','japonesmandela@yahoo.com');
describe tables tb_cliente;
select *from tb_cliente;


drop table tb_cliente;


insert into tb_cliente values
(null,'22222222222','','222222222','rua','jardim','2','casa 2','dois','sao paulo','sp','25522552','','dois@hotmail.com');

insert into tb_cliente values
(null,'33333333333','Kevin','333333333','rua','patriarca','3','casa 3','tres','sao paulo','sp','25522552','','tres@hotmail.com');

insert into tb_cliente values
(null,'444444444444','alex','4444444444','rua','poa','4','casa 4','quatro','sao paulo','sp','25522552','','quatro@hotmail.com');
insert into tb_cliente values
(null,'55555555555','Marcos','555555555','rua','patriarca','5','casa 5','tres','sao paulo','sp','25522552','','cinco@hotmail.com');

insert into tb_cliente values
(null,'66666666666','Jr','666666666','rua','são miguel','6','casa 6','seis','sao paulo','sp','25522552','','seis@hotmail.com');

select *from tb_cliente;

-- alterando uma tabela
-- adcionando uma coluna que sera usada como chave primaria

use dbinfox;

create table tb_os(
idos int auto_increment primary key,
tipo2 varchar(15)not null,
situacao varchar (20) not null,
equipamento varchar(200) not null,
defeito varchar(200) not null,
servico varchar (200),
tecnico varchar(200) ,
valor decimal (10,2));

alter table tb_os auto_increment = 10000;
alter table tb_os add dataos timestamp default current_timestamp
after idos;
describe tb_os;

alter table tb_os add idcli int null;

insert into tb_os(tipo2,situacao,equipamento,defeito,servico,tecnico,valor,idcli)
values ('manutenção','aprovado','computador','demora muito para iniciar','reisntalar o windowns','Matheus',150,1);

insert into tb_os(tipo2,situacao,equipamento,defeito,servico,tecnico,valor,idcli)
values ('troca de peça','aprovado','notebook','fonte queimada','trocar a fonte','Matheus',200,2);

insert into tb_os(tipo2,situacao,equipamento,defeito,servico,tecnico,valor,idcli)
values ('manutenção','aprovado','computador','queimou a placa mãe','Queimou a placa','Kevin',150,3);

select * from tb_cliente;


alter table tb_os add constraint cliente_os
foreign key(idcli)
references tb_cliente(idcli)
on delete no action;

select 
idcli,tipo2,situacao,equipamento,defeito,servico,tecnico,valor from tb_os ;

select
 O.idos as OS,tipo2,situacao,equipamento,defeito,servico,tecnico,valor,
 C.nomecli as Nome, fone1 as Fone, emailcli as Email 
 from tb_os as O
 inner join tb_cliente as C on (O.idcli = C.idcli);

insert into tb_os(tipo2,situacao,equipamento,defeito,servico,tecnico,valor,idcli)
values ('manutenção','aprovado','computador','queimou a placa mãe','Queimou a placa','Kevin',150,1);


drop table tb_os;







show table status;
describe tb_os;
