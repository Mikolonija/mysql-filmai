SELECT  role,a.vardas,a.pavarde,f.pavadinimas
FROM filmo_roles fr
left join aktoriai a on fr.aktoriaus_id = a.id
left join filmai f on fr.filmo_id = f.id
where f.pavadinimas = "Vertigo" ;
