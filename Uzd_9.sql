SELECT f.pavadinimas,i.ivertinimas,z.vardas,z.pavarde
FROM filmo_ivertinimai i
inner join filmai f on  i.filmo_id = f.id
inner join kritikai z on  i.kritiko_id = z.id
ORDER BY z.pavarde DESC , z.vardas DESC,ivertinimas DESC,f.pavadinimas DESC;