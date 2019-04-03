SELECT FORMAT(avg(ff.trukme),0) as trukme , z.zanras
FROM  filmaifilmai ff
join zanrai z on  ff.id = z.id
group by z.zanras;