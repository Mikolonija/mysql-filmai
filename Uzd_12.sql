SELECT  f.pristatymo_metai,z.zanras,COUNT(f.pristatymo_metai) as kiek 
FROM filmo_zanrai i
inner join filmai f on  i.filmo_id = f.id
inner join zanrai z on  i.zanro_id = z.id
where zanras = "Mystery"
GROUP BY f.pristatymo_metai;