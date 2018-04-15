// Exemplo 14: - “Criando chave primária através de CREATE TABLE”
create table cidade(
    codcid integer not null constraint cidade_pk primary key,
    nomecid varchar(30) not null,
    uf varchar(2)
);