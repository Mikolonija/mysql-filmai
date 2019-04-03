SELECT  *
from filmai
join filmai.filmo_rezisieriai fr on filmai.id = fr.filmo_id
join filmai.rezisieriai r on  fr.rezisieriaus_id = r.id
where r.id IN
(
SELECT fr.rezisieriaus_id
FROM filmai.filmo_rezisieriai fr 
join filmai.filmo_roles f on  fr.filmo_id = f.id
where f.role = "Sean Maguire" 
);