create database db_magazine;

use db_magazine;

create table tb_produtos(
        id bigint auto_increment,
		nome varchar(100) not null,
		qualidade varchar(50) not null,
		quantidade int not null,
		preco decimal (8,2) not null,
		primary key (id)
);

insert into tb_produtos(nome, qualidade, quantidade, preco) VALUES
 ("cama","novo",2,700.00),
 ("geladeira","Usado",1,1500),
 ("televisao","Novo",15,3000.00),
 ("celular","Usado",8,900);
 
 select * from tb_produtos where preco > 500.00;
 
 select * from tb_produtos where preco < 500.00;
 
 update tb_produtos set preco = 800.00 where id = 1;