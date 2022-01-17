create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values
		("Bovino",true),
		("Suino",true),
		("Aves",true),
		("pertence feijoada",true),
		("imbutidos",true),
		("soja",true),
		("outros",true);

select * from tb_categoria;

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(6,2) not null,
qtproduto int not null,
dtvalidade date,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values 
		("ASA",40.00,30, "2021-11-07", 3),
		("Picanha",20.00,30, "2021-11-08", 1),
		("coxa de frango",20.00,30, "2021-11-07", 3),
		("Bacon",30.00,30, "2021-11-09", 1),
		("hamburguer",60.00,30, "2021-09-07", 5),
		("Cupim",20.00,30, "2021-11-10", 1),
		("Peito de frango",25.00,30, "2021-11-09", 3),
		("Orelha de porco",20.00,30, "2021-11-07", 4),
		("Salame",18.00,30, "2021-11-21", 5),
		("medalhao",50.00,30, "2021-11-15", 3),
		("mocoto",20.00,30, "2021-10-05", 2),
		("chuleta",20.00,30, "2021-10-07", 1);


select * from tb_produtos;

select * from tb_produtos where preco > 50;

select * from tb_produtos where preco between 3 and 60;

select * from tb_produtos where nome like "%c%";

select * from tb_produtos inner join tb_categoria
on tb_categoria.id = tb_produtos.categoria_id;

select tb_produtos.nome, tb_produtos.preco, tb_categoria.descricao
from tb_produtos INNER JOIN tb_categoria
on tb_categoria.id = tb_produtos.categoria_id where tb_categoria = 5;



