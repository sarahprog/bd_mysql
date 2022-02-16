-- atv. 2

create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
id int primary key auto_increment,
nome varchar (20) not null,
tipo varchar (20)
);

insert into tb_categoria(nome, tipo)
values ("Pizzas Doces", "Doce");
insert into tb_categoria(nome, tipo)
values ("Pizzas Salgada", "Salgada");
insert into tb_categoria(nome, tipo)
values ("Pizzas fritas", "Fritas");
insert into tb_categoria(nome, tipo)
values ("Pizzas pastéis", "Pastéis");

create table tb_pizza(
id int primary key auto_increment,
nome varchar (20) not null,
sabor varchar (50),
valor decimal (7,2),
id_categoria int references tb_categoria(id)
);

insert into tb_pizza(nome, sabor, valor, id_categoria)
values("Calabresa", "Calabresa", 40, 2);
insert into tb_pizza(nome, sabor, valor, id_categoria)
values("Três queijos", "Queijos", 45, 2);
insert into tb_pizza(nome, sabor, valor, id_categoria)
values("Brigadeiro", "Brigadeiro", 50, 1);
insert into tb_pizza(nome, sabor, valor, id_categoria)
values("Romeu e Julieta", "Goiabada", 49, 1);
insert into tb_pizza(nome, sabor, valor, id_categoria)
values("Frango", "Frango", 51, 3);
insert into tb_pizza(nome, sabor, valor, id_categoria)
values("Toscana", "Calabresa", 52, 4);

select * from tb_pizza where valor > 45;

select * from tb_pizza where valor between 29 and 60;

select * from tb_pizza where nome like "%c%";

select tb_pizza.nome as "Pizza", tb_categoria.nome as "Categoria" from tb_pizza 
join tb_categoria on tb_categoria.id = tb_pizza.id_categoria;

select tb_pizza.nome as "Pizza", tb_categoria.nome as "Categoria" from tb_pizza 
join tb_categoria on tb_categoria.id = tb_pizza.id_categoria and tb_categoria.id = 1;
