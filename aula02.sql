create table TbCliente (
    PkCodCli integer not null,
    NomeCli varchar(30) not null,
    EndCli varchar(30),
    DataNascCli date,
    SalarioCli number(15,2),
    SexoCli varchar(1)
);

alter table TbCliente add constraint TbClientePk primary key(PkCodCli);

