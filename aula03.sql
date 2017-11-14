SELECT * FROM TbProdutos p, TbCategoria c
WHERE p.FkCodCat = c.PkCodCat

SELECT * FROM TbProduto p
INNER JOIN TbCategoria c ON c.PkCodCat = p.FkCodCat
INNER JOIN TbFornecedor f ON f.PkCodForn = p.FkCodForn

SELECT c.NomeCat FROM TbCategoria c
INNER JOIN TbProduto p ON p.PkCodProd = c.PkCodCat
INNER JOIN TbFornecedor f ON f.PkCodForn = p.fkcodforn
where upper(f.nomeforn) like upper('%x%')

select * from tbproduto p
inner join tbfornecedor f on f.pkcodforn = p.fkcodforn
left join tbfornecedor f on f.pkcodforn = p.fkcodforn
right join tbfornecedor f on f.pkcodforn = p.fkcodforn
full join tbfornecedor f on f.pkcodforn = p.fkcodforn

select count(*) fron tbfornecedor

select estadoforn, count(*) from tbfornecedor group by estadoforn

select estadoforn, count(*) from tbfornecedor
having count(*)>= 2 group by estadoforn

update tbproduto p set
    p.nomeprod = 'Garfo',
    p.estoqueprod = 5
where p.pkcodprod = 104

delete from tbproduto where pkcodprod = 104

select * from tbproduto p where p.pkcodprod in (108,110,113)

delete from tbproduto p
where p.pkcodforn in (select pkcodforn from tbfornecedor f where f.pkcodforn > 10)

select * from tbcategoria c where c.pkcodcat in (select max(x.pkcodcat) from tbcategoria x)
