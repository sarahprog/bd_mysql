-- atv. 5

create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria(
id int primary key auto_increment,
nome varchar (20) not null,
tipo varchar (30)
);

insert into tb_categoria(nome, tipo)
values("Interior", "Interior");
insert into tb_categoria(nome, tipo)
values("Exterior", "Exterior");
insert into tb_categoria(nome, tipo)
values("Pré-fabricada", "Pré-fabricada");
insert into tb_categoria(nome, tipo)
values("Container. ", "Container. ");
insert into tb_categoria(nome, tipo)
values("Hidráulica ", "Hidráulica  ");

create table tb_produto (
id int primary key auto_increment,
nome varchar (20) not null,
preco_custo decimal (7,2),
preco_venda decimal (7,2),
tipo varchar (30),
id_categoria int references tb_categoria(id)
);

insert into tb_produto(nome, preco_custo, preco_venda, tipo, id_categoria)
values("Porta", 100, 200, "Casa", 1);
insert into tb_produto(nome, preco_custo, preco_venda, tipo, id_categoria)
values("Janela", 50, 100, "Casa", 1);
insert into tb_produto(nome, preco_custo, preco_venda, tipo, id_categoria)
values("Cimento", 15, 46, "Construção", 2);
insert into tb_produto(nome, preco_custo, preco_venda, tipo, id_categoria)
values("Areia", 100, 200, "Casa", 1);
insert into tb_produto(nome, preco_custo, preco_venda, tipo, id_categoria)
values("Metal", 500, 600, "Construção", 3);
insert into tb_produto(nome, preco_custo, preco_venda, tipo, id_categoria)
values("Portão", 1000, 1200, "casa", 4);
insert into tb_produto(nome, preco_custo, preco_venda, tipo, id_categoria)
values("Cano PVC", 5, 10, "Casa", 5);

select * from tb_produto where preco_venda > 50;

select * from tb_produto where preco_venda between 3 and 60;

select * from tb_produto where nome like "%c%";

select tb_produto.nome as "Produto", tb_categoria.nome as "Categoria" from tb_produto  
join tb_categoria on tb_categoria.id = tb_produto.id_categoria;

select tb_produto.nome as "Produto", tb_categoria.nome as "Categoria" from tb_produto 
join tb_categoria on tb_categoria.id = tb_produto.id_categoria and tb_categoria.id = 5;
