-- atv.4

create database db_cidade_das_frutas;
use db_cidade_das_frutas;

create table tb_categoria(
id int primary key auto_increment,
nome varchar (20) not null,
tipo varchar (30)
);

-- 5 dados
insert into tb_categoria(nome, tipo)
values("Fruta Ácida", "Ácida");
insert into tb_categoria(nome, tipo)
values("Fruta Doce", "Doce");
insert into tb_categoria(nome, tipo)
values("Fruta Semiácidas", "Semiácidas");
insert into tb_categoria(nome, tipo)
values("Fruta Oleaginosas ", "Oleaginosas ");
insert into tb_categoria(nome, tipo)
values("Fruta Monofágicas  ", "Monofágicas  ");

-- 5 atributos
-- foreign key de tb_categoria 

drop table if exists tb_produto;
create table tb_produto (
id int primary key auto_increment,
nome varchar (20) not null,
data_vali date,
semente varchar(3),
valor decimal (7,2),
id_categoria int references tb_categoria(id)
);

--  8 dados
insert into tb_produto(nome, data_vali, semente, valor, id_categoria)
values("Limão", '2032/01/01', "Não" , 10, 1);
insert into tb_produto(nome, data_vali, semente, valor, id_categoria)
values("Laranja", '2023/01/01', "Não" , 10, 2);
insert into tb_produto(nome, data_vali, semente, valor, id_categoria)
values("Banana", '2042/01/01', "Não" , 10, 4);
insert into tb_produto(nome, data_vali, semente, valor, id_categoria)
values("Mamão", '2022/01/01', "Sim" , 15, 1);
insert into tb_produto(nome, data_vali, semente, valor, id_categoria)
values("Mexerica", '2062/01/01', "Sim" , 60, 3);
insert into tb_produto(nome, data_vali, semente, valor, id_categoria)
values("Abacaxi", '2082/01/01', "Sim" , 80, 1);
insert into tb_produto(nome, data_vali, semente, valor, id_categoria)
values("Melancia", '2023/01/01', "Sim" , 100, 2);

-- select > 50 
select * from tb_produto where valor > 50;

-- select valor entre 3 e 60 
select * from tb_produto where valor between 3 and 60;

-- select LIKE Produtos com a letra C
select * from tb_produto where nome like "%c%";

-- select Inner join tabela categoria e produto
select * from tb_produto 
join tb_categoria on tb_categoria.id = tb_produto.id_categoria;

-- select Produtos de uma categoria específica 
select * from tb_produto 
join tb_categoria on tb_categoria.id = tb_produto.id_categoria and tb_categoria.id = 2;
