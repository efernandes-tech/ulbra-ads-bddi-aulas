// Exemplo 29: - “DELETE com subconsulta a mesma tabela”
Delete from funcionario f
where f.numMatricula in(select max(g.numMatricula) from funcionario g)