SELECT f.pristatymo_metai, ivertinimas 
FROM  filmo_ivertinimai i
inner join filmai f on  i.filmo_id =  f.id
where  ivertinimas >= 5
GROUP BY f.pristatymo_metai
ORDER BY  f.pristatymo_metai DESC;
