SELECT z.vardas,z.pavarde,ivertinimas,f.pavadinimas
FROM filmo_ivertinimai i
inner join filmai f on  i.filmo_id = f.id
inner join kritikai z on  i.kritiko_id = z.id
where f.pavadinimas ="American Beauty";