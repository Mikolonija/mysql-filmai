SELECT f.pristatymo_metai,a.vardas,a.pavarde
FROM filmai.filmai f
inner join filmai.aktoriai a on f.id = a.id
where f.pristatymo_metai not between 1990 and 2000;



