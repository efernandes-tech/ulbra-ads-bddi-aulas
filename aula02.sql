CREATE TABLE TbCliente (
    PkCodCli INTEGER NOT NULL,
    NomeCli VARCHAR(30) NOT NULL,
    EndCli VARCHAR(30),
    DataNascCli DATE,
    SalarioCli NUMBER(15,2),
    SexoCli VARCHAR(1)
);

ALTER TABLE TbCliente ADD CONSTRAINT TbClientePk PRIMARY KEY(PkCodCli);

INSERT INTO TbCliente(PkCodCli, NomeCli, EndCli, DataNascCli, SalarioCli, SexoCli)
    VALUES(1, 'Maria Antonieta', 'Rua Sei Lá, Nº 43', '20/08/2000', 1250.43, 'F');

SELECT * FROM TbCliente;

SELECT PkCodCli, NomeCli FROM TbCliente WHERE PkCodCli > 0;

SELECT TbCliente.PkCodCli, TbCliente.NomeCli FROM TbCliente;

SELECT C.PkCodCli, C.NomeCli FROM TbCliente C;

SELECT C.PkCodCli AS Codigo, C.NomeCli AS Nome FROM TbCliente C;

SELECT C.PkCodCli AS "Código do Cliente", C.NomeCli AS "Nome do Cliente" FROM TbCliente C;

SELECT C.NomeCli, C.SalarioCli, (C.SalarioCli + 100) AS Novo FROM TbCliente C;

SELECT C.NomeCli, C.SalarioCli * C.PkCodCli FROM TbCliente C;

SELECT * FROM TbCliente C ORDER BY C.PkCodCli;

SELECT * FROM TbCliente C ORDER BY C.PkCodCli DESC;

SELECT DISTINCT C.SexoCli FROM TbCliente C;

SELECT * FROM TbCliente C WHERE C.PkCodCli = 2;

SELECT * FROM TbCliente C WHERE C.SalarioCli >= 340.27;

SELECT * FROM TbCliente C WHERE C.DataNascCli < '01/01/1995';

SELECT * FROM TbCliente C WHERE C.NomeCli = 'Maria Antonieta';

SELECT * FROM TbCliente C WHERE UPPER(C.NomeCli) = UPPER('MaRiA ANnToNiEtA');

SELECT * FROM TbCliente C WHERE UPPER(C.NomeCli) LIKE UPPER('M%');

SELECT * FROM TbCliente C WHERE UPPER(C.NomeCli) LIKE UPPER('%a');

SELECT * FROM TbCliente C WHERE UPPER(C.NomeCli) LIKE UPPER('%i%');

SELECT * FROM TbCliente C WHERE UPPER(C.SexoCli)='M' AND C.SalarioCli > 1000;

SELECT * FROM TbCliente C WHERE C.PkCodCli = 2 OR C.PkCodCli = 4;

SELECT * FROM TbCliente C WHERE C.PkCodCli IN(2,4,5,7);

/* Funções de agregação INICIO */
SELECT SUM(C.SalarioCli) FROM TbCliente C; /* Soma salários. */
SELECT COUNT(*) FROM TbCliente C; /* Qtd de registros. */
SELECT AVG(C.SalarioCli) FROM TbCliente C; /* Média salarial. */
SELECT MAX(C.SalarioCli) FROM TbCliente C; /* Maior salário. */
SELECT MIN(C.SalarioCli) FROM TbCliente C; /* Menor salário. */
/* Funções de agregação FIM */

SELECT C.SexoCli, COUNT(*) FROM TbCliente C GROUP BY C.SexoCli;

SELECT C.SexoCli, COUNT(*) FROM TbCliente C HAVING COUNT(*) > 2  GROUP BY C.SexoCli

SELECT * FROM TbCliente C WHERE C.PkCodCli IN(
    SELECT MAX(X.PkCodCli) FROM TbCliente X
);
