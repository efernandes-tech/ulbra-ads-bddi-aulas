// Exemplo 20: - “Exemplo de INSERT com SELECT”
insert into departamento(coddep,nomedep)(
select codcategoria, nomecategoaria from categoria where codcategoria>3)