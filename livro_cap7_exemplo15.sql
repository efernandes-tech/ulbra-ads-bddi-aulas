// Exemplo 15: - “Criando Chave estrangeira em uma tabela já existente”
alter table funcionario add constraint funcionario_codDepFK foreign key(codDep)
references departamento(codDep);