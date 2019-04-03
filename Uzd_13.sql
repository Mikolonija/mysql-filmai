SELECT  f.pavadinimas,z.vardas,z.pavarde, f.pristatymo_metai,avg(ivertinimas) AS vidurkis
FROM filmai.filmo_ivertinimai i
inner join filmai f on  i.filmo_id = f.id
inner join rezisieriai z on  i.kritiko_id = z.id
GROUP BY ivertinimas
ORDER BY ivertinimas DESC
LIMIT 1;