-- Criar o Banco de dados db_quitanda
create database db_quitanda;

use db_quitanda;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
preco decimal,
primary key (id)
);

insert into tb_produtos (nome, quantidade, preco) 
values ("Maçã", 10, 1.99);
insert into tb_produtos (nome, quantidade, preco) 
values ("Banana", 13, 4.99);
insert into tb_produtos (nome, quantidade, preco) 
values ("Manga", 20, 5.49);
insert into tb_produtos (nome, quantidade, preco) 
values ("Melancia", 03, 10.00);

select * from tb_produtos;

select nome, preco from tb_produtos;

select * from tb_produtos where preco > 5.99 or nome = "banana";

update tb_produtos set preco = 1.99 where id = 4;

delete from tb_produtos where id = 4;

set SQL_SAFE_UPDATES = 0;

update tb_produtos set descricao = "Banana Ouro";

alter table tb_produtos modify preco decimal(8,2); -- 00000000.00

alter table tb_protudos add descricao varchar(255);

delete from tb_produtos;
