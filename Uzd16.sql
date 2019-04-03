SELECT  f.role,r.vardas,r.pavarde 
FROM filmai.filmo_rezisieriai fr
 join filmai.filmo_roles f on  fr.filmo_id = f.id
 join filmai.rezisieriai r on  fr.rezisieriaus_id = r.id
where fr.rezisieriaus_id IN
(
SELECT fr.rezisieriaus_id
FROM filmai.filmo_rezisieriai fr 
join filmai.filmo_roles f on  fr.filmo_id = f.id
where f.role = "Sean Maguire" 
);