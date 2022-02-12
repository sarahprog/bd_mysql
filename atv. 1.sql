-- atv. 1 Bando de dados - RH. Informações funcionários 

create database db_rh;
use db_rh;

-- tabela funcionários. 5 atributos

create table tb_rh(
id bigint auto_increment,
nome varchar (255) not null,
salario decimal (8,2),
carga varchar (30), 
matricula bigint,
	primary key (id)
);

-- 5 dados

insert into tb_rh (nome, salario, carga, matricula) values ("Ana", 3500, 40, 7654);
insert into tb_rh (nome, salario, carga, matricula) values ("Deborah", 4100, 40, 7655);
insert into tb_rh (nome, salario, carga, matricula) values ("Isabel", 1200, 44, 7656);
insert into tb_rh (nome, salario, carga, matricula) values ("João", 2500, 40, 7657);
insert into tb_rh (nome, salario, carga, matricula) values ("Leo", 3500, 44, 7658);

-- select salario > 2000 / select salario < 2000;

select nome from tb_rh where salario > 2000;
select nome from tb_rh where salario < 2000;

-- atualização requisito query/solicitação

update tb_rh set salario = 1200, matricula = 5 where id = 3;

