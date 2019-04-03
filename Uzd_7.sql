SELECT vardas,pavarde,pavadinimas,ivertinimas 
FROM filmo_ivertinimai i
inner join filmai f on  i.filmo_id = f.id
inner join kritikai z on  i.kritiko_id = z.id
GROUP  BY pavadinimas
HAVING COUNT(pavarde) >= 2
ORDER BY pavarde DESC;