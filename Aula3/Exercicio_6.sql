create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(100) not null,
vagas int not null,
primary key (id)
);

INSERT INTO tb_categoria (tipo, vagas) VALUES 
		("EAD",90),
		("Presencial", 50);
        
create table tb_curso(
id bigint auto_increment,
nome varchar(100),
vagas int,
duracao_horas bigint,
precoMensal decimal(6,2) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

INSERT INTO tb_curso (nome, vagas, duracao_horas, precoMensal, categoria_id) VALUES
		("Curso Desenvolvimento Web", 20, 112, 60.00,1),
        ("Curso Data Science", 50, 98, 45.00,2),
        ("Curso Python", 10, 72, 100.00,1),
        ("Curso JAVA ", 35, 100, 35.00,2);
        
select * from tb_curso;


-- SELECT PRODUTOS COM VALOR MAIOR QUE R$ 50.00
select * from tb_curso where precoMensal > 50;

-- SELECT PRODUTOS COM VALOR ENTRE 3 E 60 REAIS
select * from tb_curso where precoMensal between 3 and 60;

-- SELECT UTILIZANDO LIKE BUSCANDO PRODUTOS COM A LETRA J
select * from tb_curso where nome like "%j%";

-- FAÇA UM SELECT COM INNER JOIN ENTRE CATEGORIA E PRODUTO
select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;

-- FAÇA UM SELECT ONDE TRAGA TODOS OS PRODUTOS DE UMA CATEGORIA ESPECIFICA
select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id where tb_categoria.id = 1;
        