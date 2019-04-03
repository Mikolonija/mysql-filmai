SELECT  a.vardas,a.pavarde,pavadinimas
FROM filmo_rezisieriai fr
left join rezisieriai a on fr.rezisieriaus_id = a.id
left join filmai f on fr.filmo_id = f.id
where a.vardas = "Woody" and a.pavarde = "Allen"; 
