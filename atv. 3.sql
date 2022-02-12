-- atv. 3 Bd - Registro escolar.

create database db_escola;

use db_escola;

-- tabela 

create table tb_alunes(
id bigint auto_increment,
nome varchar (255) not null,
cadastro bigint,
ano int,
nota decimal (8,2),
primary key (id)
);

-- dados 
insert into tb_alunes (nome, cadastro, ano, nota) values ("João",(id+1000),2,4);
insert into tb_alunes (nome, cadastro, ano, nota) values ("Ana",(id+1000), 5,10);
insert into tb_alunes (nome, cadastro, ano, nota) values ("Julia",(id+1000),6,9);

select * from tb_alunes where nota >=7;
select * from tb_alunes where nota <7;

update tb_alunes set nota = 7 where id=3;