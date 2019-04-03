SELECT  f.pavadinimas ,a.vardas,a.pavarde, COUNT(a.pavarde) as kartojas
FROM filmo_roles i
join filmai f on  i.filmo_id = f.id
join aktoriai a on  i.aktoriaus_id = a.id
GROUP BY a.pavarde
HAVING COUNT(a.pavarde) > 1;