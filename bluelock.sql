start transaction;

CREATE TABLE
    IF NOT EXISTS time_futebol (
        id int auto_increment primary key,
        nome_time text not null
    );

CREATE TABLE
    IF NOT EXISTS jogador (
        id int auto_increment primary key,
        nome text not null,
        id_time int,
        foreign key (id_time) references time_futebol (id),
        valor float (3) default 000.000,
        mestre boolean default 0
    );

commit;

insert into
    time_futebol (nome_time)
values
    ('Bastard München'),
    ('FC Barcha'),
    ('Manshine City'),
    ('Ubers'),
    ('Paris X Gen');

select
    *
from
    time_futebol;

insert into
    jogador (nome, id_time, valor, mestre)
values
    ('Isagi Yoichi', 1, 240000000.000, default),
    ('Michael Kaiser', 1, 400000000.000, default),
    ('Noel Noa', 1, 52192500000.000, 1),
    ('Meguru Bachira', 2, 120000000.000, default),
    ('Eita Otoya', 2, 63000000.000, default),
    ('Jules Lavinho', 2, default, 1),
    ('Seishiro Nagi', 3, 24000000.000, default),
    ('Reo Mikage', 3, 78000000.000, default),
    ('Chris Prince', 3, default, 1),
    ('Shoei Barou', 4, 150000000.000, default),
    ('Don Lorenzo', 4, 280000000.000, default),
    ('Mark Snuffy', 4, default, 1),
    ('Ithosi Rin', 5, 240000000.000, default),
    ('Ryusei Shidou', 5, 160000000.000, default),
    ('Julian Lock', 5, default, 1);

select
    jogador.id,
    jogador.nome,
    time_futebol.nome_time,
    jogador.valor,
    jogador.mestre
from
    jogador
    join time_futebol on time_futebol.id = jogador.id_time;

DELETE FROM jogador;

DROP TABLE jogador;

DROP TABLE time_futebol;