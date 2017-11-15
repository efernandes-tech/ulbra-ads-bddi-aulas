SELECT * FROM TbProdutos p, TbCategoria c
WHERE p.FkCodCat = c.PkCodCat

SELECT * FROM TbProduto p
INNER JOIN TbCategoria c ON c.PkCodCat = p.FkCodCat
INNER JOIN TbFornecedor f ON f.PkCodForn = p.FkCodForn

SELECT c.NomeCat FROM TbCategoria c
INNER JOIN TbProduto p ON p.PkCodProd = c.PkCodCat
INNER JOIN TbFornecedor f ON f.PkCodForn = p.FkCodForn
WHERE UPPER(f.NomeForn) LIKE UPPER('%x%')

SELECT * FROM TbProduto p
INNER JOIN TbFornecedor f ON f.PkCodForn = p.FkCodForn
LEFT JOIN TbFornecedor f ON f.PkCodForn = p.FkCodForn
RIGHT JOIN TbFornecedor f ON f.PkCodForn = p.FkCodForn
FULL JOIN TbFornecedor f ON f.PkCodForn = p.FkCodForn

SELECT COUNT(*) FROM TbFornecedor

SELECT EstadoForn, COUNT(*) FROM TbFornecedor GROUP BY EstadoForn

SELECT EstadoForn, COUNT(*) FROM TbFornecedor
HAVING COUNT(*) >= 2 GROUP BY EstadoForn

UPDATE TbProduto p SET
    p.NomeProd = 'Garfo',
    p.EstoqueProd = 5
WHERE p.PkCodProd = 104

DELETE FROM TbProduto WHERE PkCodProd = 104

SELECT * FROM TbProduto p WHERE p.PkCodProd IN (108, 110, 113)

DELETE FROM TbProduto p
WHERE p.PkCodForn IN (SELECT PkCodForn FROM TbFornecedor f WHERE f.PkCodForn > 10)

SELECT * FROM TbCategoria c WHERE c.PkCodCat IN (SELECT MAX(x.PkCodCat) FROM TbCategoria x)
