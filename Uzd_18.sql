select r.vardas,r.pavarde,z.zanras,count(z.id) as "kiek"
from rezisieriai r
join filmo_rezisieriai fr on fr.rezisieriaus_id = r.id
join filmai f on f.id = fr.filmo_id
join filmo_zanrai fz on fz.filmo_id = f.id
join zanrai z on z.id = fz.filmo_id
group by r.id;

