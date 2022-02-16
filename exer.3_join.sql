-- atv. 3
create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria (
id int primary key auto_increment,
nome varchar (20) not null,
tipo varchar (30)
);

insert into tb_categoria(nome, tipo)
values("Remédio Genérico", "Genérico");
insert into tb_categoria(nome, tipo)
values("Remédio Não Genérico", "Não Genérico");
insert into tb_categoria(nome, tipo)
values("Remédios Similares", "Similares");

drop table if exists tb_produto;
create table tb_produto (
id int primary key auto_increment,
nome varchar (20) not null,
data_vali date,
restricao int,
valor decimal (7,2),
id_categoria int references tb_categoria(id)
);

insert into tb_produto(nome, data_vali, restricao, valor, id_categoria)
values("Dorflex", '2032/01/01', 18, 100, 1);
insert into tb_produto(nome, data_vali, restricao, valor, id_categoria)
values("Roacutan", '2022/01/20', 16, 150, 2);
insert into tb_produto(nome, data_vali, restricao, valor, id_categoria)
values("Tilenol", '2052/01/20', 15, 50, 3);
insert into tb_produto(nome, data_vali, restricao, valor, id_categoria)
values("Neusadina", '2072/01/20', 9, 40, 1);
insert into tb_produto(nome, data_vali, restricao, valor, id_categoria)
values("Morfina", '2021/01/20', 10, 140, 2);
insert into tb_produto(nome, data_vali, restricao, valor, id_categoria)
values("Crackdotona", '2022/01/20', 18, 15, 3);
insert into tb_produto(nome, data_vali, restricao, valor, id_categoria)
values("Hidrocodona.", '2024/01/20', 17, 27, 1);
insert into tb_produto(nome, data_vali, restricao, valor, id_categoria)
values("Propoxifeno.", '2034/01/20', 16, 70, 3);

select * from tb_produto where valor > 50;

select * from tb_produto where valor between 3 and 60;

select * from tb_produto where nome like "%r%";

select * from tb_produto 
join tb_categoria on tb_categoria.id = tb_produto.id_categoria;

select * from tb_produto 
join tb_categoria on tb_categoria.id = tb_produto.id_categoria and tb_categoria.id = 3;

