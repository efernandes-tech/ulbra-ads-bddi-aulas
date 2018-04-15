// Exemplo 24: - “Altera os dados do cliente de código 1”
update tbcliente set
    nomeCli='Maria Joaquina',
    datanascCli='25/03/1998',
    salarioCli =salarioCli+200
    where pkcodcli=1;