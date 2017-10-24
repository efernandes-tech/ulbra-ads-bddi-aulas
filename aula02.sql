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
