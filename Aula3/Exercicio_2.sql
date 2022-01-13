create database db_pizzaria;

use db_pizzaria;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values
	("Pizza Salgada",true),
    ("Pizza Doce",true),
    ("Esfiha Salgada",true),
    ("Esfiha Doce",true),
    ("Fogazza Salgada",true),
    ("Fogazza Doce",true),
    ("Refrigerante",true);
    
    select * from tb_categoria;
    
create table tb_pizza (
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(6,2) not null,
qtproduto int not null,
datavalidade date,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_pizza (nome, preco, qtProduto, datavalidade, categoria_id) values
		("Mussarela",40.00,3, "2021-11-13", 1),
		("Brigadeiro",60.00,10, "2021-11-07", 2),
		("Calabresa",45.00,30, "2021-11-15", 1),
		("Frango c/cat",15.00,30, "2021-11-16", 3),
		("Prestigio",20.00,8, "2021-11-03", 4),
		("Escarola",18.00,30, "2021-11-05", 5),
		("Chocolate com MMs",40.00,30, "2021-11-07", 6),
		("Coca-Cola 2L",18.00,30, "2021-11-07", 7);
        
select * from tb_pizza;

select * from tb_pizza where preco > 45;

select * from tb_pizza where nome like "%c%";

select * from tb_pizza inner join tb_categoria
on tb_categoria.id = tb_pizza.categoria_id
where tb_categoria.id = 2;