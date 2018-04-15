// Exemplo 12: - “Criando chave primária através de CREATE TABLE”
create table cidade(
    codcid integer not null,
    nomecid varchar(30) not null,
    uf varchar(2),
    constraint cidade_pk primary key(codcid)
);