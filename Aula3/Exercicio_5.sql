create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (tipo, ativo) VALUES
		("Hidráulico", true),
		("Elétrico", true),
		("Tintas", true);
        
select * from tb_categoria;

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(6,2) not null,
qtProduto int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

INSERT INTO tb_produtos (nome, preco, qtProduto, categoria_id) VALUES 
		("Makita", 500.00, 1, 2),
		("Tinta Branca", 129.90, 5, 3),
		("Escada", 59.70, 2, 1),
		("Parafusadeira", 55.90, 4, 2),
		("Betoneira", 3.000, 2, 1);
        
select * from tb_produtos;

-- SELECT PRODUTOS COM VALOR MAIOR QUE R$ 50.00
select * from tb_produtos where preco > 50;

-- SELECT PRODUTOS COM VALOR ENTRE 3 E 60 REAIS
select * from tb_produtos where preco between 3 and 60;

-- SELECT UTILIZANDO LIKE BUSCANDO PRODUTOS COM A LETRA C
select * from tb_produtos where nome like "%c%";

-- FAÇA UM SELECT COM INNER JOIN ENTRE CATEGORIA E PRODUTO
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

-- FAÇA UM SELECT ONDE TRAGA TODOS OS PRODUTOS DE UMA CATEGORIA ESPECIFICA
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_categoria.id = 3;
