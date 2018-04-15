// Exemplo 27: - “UPDATE com subconsulta”
Update funcionario f set
f.nomeFunc='Fulana'
where f.codCargo in(select d.codCargo from Cargo d where
upper(d.nomecargo)=upper('Diretoria'))