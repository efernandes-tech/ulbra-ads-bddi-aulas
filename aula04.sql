SELECT c.NomeCat AS Nome FROM TbCategoria c
UNION
SELECT f.NomeForn AS Nome FROM TbFornecedor f

SELECT * FROM TbFornecedor f

SELECT * FROM (
    SELECT p.PkCodProd, p.NomeProd, f.NomeForn
    FROM TbProduto p
    INNER JOIN TbFornecedor f ON f.PkCodForn = p.FkCodForn
    WHERE p.Estoque > 100
) x
WHERE x.PkCodProd >10

SELECT c.NomeCat, (
    SELECT SUM(p.EstoqueProd)
    FROM TbProduto p
    INNER JOIN TbFornecedor f ON p.FkCodForn = f.PkCodForn
        AND f.EstadoForn = 'RS'
    WHERE p.FkCodCat = c.PkCodCat
), c.Classificacao
FROM TbCategoria c

SELECT c.NomeCat, (
    SELECT COUNT(*)
    FROM TbProduto p
    WHERE p.Tipo = 'ativo'
        AND p.FkCodCat = c.PkCodCat
) AS Ativo, (
    SELECT COUNT(*)
    FROM TbProduto p
    WHERE p.tipo = 'INATIVO'
        AND p.FkCodCat = c.PkCodCat
) AS Inativo
FROM TbCategoria c
