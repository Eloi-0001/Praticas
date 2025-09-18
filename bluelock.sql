start transaction;

CREATE TABLE IF NOT EXISTS time_futebol (
    id int auto_increment primary key,
    nome text not null   
);

CREATE TABLE IF NOT EXISTS jogador (
    id int auto_increment primary key,
    nome text not null,
    id_time int, foreign key (id_time) references time_futebol(id),
    valor float(2) default 000.00,
    mestre boolean default 0
);

commit;