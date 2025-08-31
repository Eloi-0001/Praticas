create schema if not exists pokemons; 
use pokemons;

#--------------------criando tabela

Create table mons (
	poke_id int auto_increment primary key,
    poke_nome varchar (25) not null,
    poke_gen int not null,
	poke_type varchar (25) not null,
    poke_type2 varchar (25) default'Null'
);


create table lenda (
	poke_id int auto_increment primary key,
	poke_nome varchar (25) not null,
    poke_data date not null,
    poke_compri decimal (4,2) not null
);

select * from mons;
select * from lenda;

#--------------------inserindo valores

insert into mons(poke_nome,  poke_gen, poke_type)
values 
('Charmander',1,'Fire'),
('Alakazam',1,'Psychic');

insert into mons(poke_nome,  poke_gen, poke_type, poke_type2)
values 
('Lapras',1,'Water','Ice');

insert into lenda(poke_nome, poke_data, poke_compri)
values 
('Rayquaza','2002-11-21',07.00),
('Ho-oh','1998-08-11',03.81),
('Mewtwo','1996-02-27',02.01);

select * from mons;
select * from lenda;

#--------------------Atualizar tabelas

update mons set poke_nome = 'Charizard', poke_type2 = 'Flying' where poke_id = 1;
select * from mons;

#--------------------deletar tabelas

drop table mons;
drop table lenda;

