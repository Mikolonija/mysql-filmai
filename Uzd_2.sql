SELECT  f.pavadinimas,r.vardas,r.pavarde 
FROM filmo_rezisieriai fr
join filmai f on  fr.filmo_id = f.id
join rezisieriai r on  fr.rezisieriaus_id = r.id
where fr.rezisieriaus_id IN
(
SELECT fr.rezisieriaus_id
FROM filmo_rezisieriai fr 
join filmai f on  fr.filmo_id = f.id
where f.pavadinimas = "Eyes Wide Shut" 
);