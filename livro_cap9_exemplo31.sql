// Exemplo 31: - “Criando view”
create view exemploview as
select p.pkcodprod, p.nomeprod, c.nomecat, f.nomeforn from tbproduto p
inner join tbcategoria c on c.pkcodcat=p.fkcodcat
left join tbfornecedor f on f.pkcodforn=p.fkcodforn