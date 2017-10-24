create table TbCliente (
    PkCodCid integer not null,
    NomeCid varchar(20) not null,
    UfCid varchar(2) default 'RS'
);

alter table TbCliente add Email varchar(60);
alter table TbCliente rename column Email to EmailCli;
alter table 
