SELECT f.pavadinimas,f.pristatymo_metai,f.premjera,r.vardas,r.pavarde,a.vardas,a.pavarde,ivertinimas 
FROM filmo_ivertinimai i
join filmai f on  i.filmo_id = f.id
left join kritikai r on i.kritiko_id = r.id
left join aktoriai a on i.kritiko_id = a.id
where r.vardas IS  NULL and r.pavarde IS  NULL ;