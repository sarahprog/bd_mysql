-- exerc. 01 Criar Banco de dados db_game
create database db_generation_online;

-- Selecionar o Banco de Dados 
use db_generation_online;

-- tabela tb_classe. Atributos
create table tb_classes(
id bigint auto_increment,
nome varchar(255) not null,
arma varchar(255),
habilidade varchar(255),
primary key (id)
);

-- Inserir dados na tabela tb_classe 
insert into tb_classes (nome, arma, habilidade) 
values ("Trol", "machado", "força");
insert into tb_classes (nome, arma, habilidade) 
values ("arqueiro", "Arco e flechas", "Flecha de pregos");
insert into tb_classes (nome, arma, habilidade) 
values ("guerreiro", "Espada", "Longa distância");

select * from tb_classes;

-- Informações personagens do game
-- tabela personagens. Atributos
-- definir quem é a chave estrangeira e com quem ela se relaciona --> para funcionar Jhoy

create table tb_personagem(
id bigint auto_increment,
nome varchar(100),
ataque int,
nivel bigint,
defesa int,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classes(id)
);

-- dados tabela personagem
insert into tb_personagem (nome, ataque, nivel, defesa, classe_id)
values("Aloy", 7600, 200, 400, 1);
insert into tb_personagem (nome, ataque, nivel, defesa, classe_id)
values("Ayo", 1500, 700, 900, 2);
insert into tb_personagem (nome, ataque, nivel, defesa, classe_id)
values("Alyx", 5000, 400, 300, 3);
insert into tb_personagem (nome, ataque, nivel, defesa, classe_id)
values("Carlos", 3000, 300, 200, 1);

-- Lista todos os dados da tabela tb_personagem
select * from tb_personagem;

-- select retorne personagens poder de ataque > 2000
select * from tb_personagem where ataque > 2000;

-- select poder de defesa entre 1000 e 2000
select * from tb_personagem where defesa >= 1000 and defesa <= 2000;

-- ou
select * from tb_personagem where defesa between 1000 and 2000;

-- Select LIKE personagens letra C
select * from tb_personagem where nome like "%c%";

-- select Inner join tabela classe e personagem
select * from tb_personagem inner join tb_classes
on  tb_classes.id = tb_personagem.classe_id;

-- select classe específica
select * from tb_personagem inner join tb_classe
on tb_classes.id = tb_personagem.classe_id
where tb_classes.id = 2;
