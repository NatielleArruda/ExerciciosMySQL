create database db_empresa;

use db_empresa;

create table tb_funcionarios(
		id bigint auto_increment,
        nome varchar(100) not null,
        idade int not null,
        sexo char not null,
        cargo varchar(20) not null,
        salario decimal not null,
        primary key (id)
);

insert into tb_funcionarios(nome, idade, sexo, cargo, salario)values
("Maria","35",'f',"secretaria","1000"),
("pedro","30",'m',"operador","900"),
("arthur","20",'f',"caixa","2000"),
("julia","25",'f',"gerente","5000"),
("natalia","40",'f',"secretaria","1000");

select * from tb_funcionarios where salario > 2000;
select * from tb_funcionarios where salario < 2000;

update tb_funcionarios set sexo = 'm' where id = 3;




