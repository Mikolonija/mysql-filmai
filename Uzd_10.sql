SELECT fa.vardas,fa.pavarde,fr.vardas,fr.pavarde 
FROM filmo_rezisieriai ffr
left join rezisieriai fr on  ffr.rezisieriaus_id = fr.id
left join aktoriai fa on ffr.filmo_id = fa.id
WHERE fa.vardas IS NOT NULL 
and fa.pavarde  IS NOT NULL 
and fr.vardas IS NOT NULL
and fr.pavarde IS NOT NULL;