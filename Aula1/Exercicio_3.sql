create database db_escolas;

use db_escolas;

create table tb_estudantes(
        id bigint auto_increment,
        nome varchar(100) not null,
        idade int not null,
        sexo char not null,
        turma varchar(20) not null,
        nota decimal (3,2) not null,
        primary key (id)
);

INSERT INTO tb_estudantes (nome, idade, sexo, turma, nota) VALUES
	("Pedro",12,'m',5,9.5),
	("Arthur",11,'m',4,8.5),
	("Jakson",12,'m',5,7.0),
	("Robson",11,'m',4,7.5),
	("Regina",10,'m',3,9.5);
    
select * from tb_estudantes where nota > 7;

select * from tb_estudantes where nota < 7;

update tb_estudantes set nota = 9 where id = 3;

