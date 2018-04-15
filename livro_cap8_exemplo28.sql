// Exemplo 28: - “DELETE com subconsulta”
Delete from funcionario f
where f.codCargo in(select d.codCargo from Cargo d where upper(nomecargo)
like upper('%s%'))