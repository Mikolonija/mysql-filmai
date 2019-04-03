SELECT f.pavadinimas,z.zanras,ivertinimas 
FROM filmo_zanrai i
inner join filmai f on  i.filmo_id = f.id
inner join zanrai z on  i.zanro_id = z.id
inner join filmo_ivertinimai b on i.id = b.ivertinimas
where zanras = "Mystery"
ORDER BY ivertinimas DESC
LIMIT 1;