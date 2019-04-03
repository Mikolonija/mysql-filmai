SELECT  f.pavadinimas,ifnull((ivertinimas),'-') AS vidurkis
FROM filmo_ivertinimai i
right join filmai f on  i.filmo_id = f.id
GROUP BY ivertinimas
ORDER BY f.pavadinimas DESC;
