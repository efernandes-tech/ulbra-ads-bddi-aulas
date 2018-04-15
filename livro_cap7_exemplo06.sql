// Exemplo 6: - “Criação da tabela funcionario”
create table funcionario (
    codFunc integer not null,
    nomeFunc varchar2(20) not null,
    dtNascFunc date,
    salarioFunc number(15,2) default 0,
    numFilhosfunc integer default 0,
    codDep integer not null
)