// Exemplo 16: - “Criando Chave estrangeira no comando CREATE TABLE”
create table funcionario (
    codFunc integer not null,
    nomeFunc varchar2(20) not null,
    dtNascFunc date,
    salarioFunc number(15,2) default 0,
    numFilhosfunc integer default 0,
    codDep integer not null,
    constraint tbfuncionario_pk primary key(codfunc),
    constraint funcionario_codDepFK foreign key(codDep) references
    departamento(codDep)
)