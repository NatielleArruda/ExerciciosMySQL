create database db_generation_games_online;

use db_generation_games_online;

create table tb_classe(
id bigint auto_increment,
nome varchar(100) not null,
categoria varchar(50),
primary key (id)
);

insert into tb_classe(nome, categoria) values 
		("tekken", "Supremo"),
		("tekken", "Iniciante"),
		("Marvel", "Supremo"),
		("Marvel", "Iniciante"),
		("Horizon", "Supremo"),
		("Horizon", "Iniciante");
        
create table tb_personagem(
id bigint auto_increment,
nome varchar(100), 
poder_ataque bigint,
poder_defesa bigint,
classe_id bigint,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

insert into tb_personagem(nome, poder_ataque,poder_defesa,classe_id) values
		("Arqueiro verde",8000,5000,3),
		("ben10",2000,1000,2),
		("Eloy",3000,1400,4),
		("naruto",1500,1500,5),
		("Yoshimitsu",2100,5000,1),
		("Gavião Arqueiro",3000,9000,3);
        
select * from tb_personagem where poder_ataque > 2000;

select * from tb_personagem where poder_defesa between 1000 and 2000;

select * from tb_personagem where nome like "%c%";

select tb_personagem.nome, tb_classe.nome, tb_classe.categoria
from tb_personagem inner join tb_classe
on tb_classe.id = tb_personagem.classe_id;

select tb_personagem.nome, tb_classe.nome, tb_classe.categoria
from tb_personagem right join tb_classe
on tb_classe.id = tb_personagem.classe_id
Where tb_classe.nome = "Marvel";
		


