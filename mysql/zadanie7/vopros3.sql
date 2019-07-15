select date('2018-08-01') + interval n.number day as dates,
case when t.created_at is not null then 1 else 0 end as is_created_exists
 from
(select p0.n 
    + p1.n*2 
    + p2.n * POWER(2,2) 
    + p3.n * POWER(2,3)
    + p4.n * POWER(2,4) as number
 FROM 
    (SELECT 0 as n UNION SELECT 1) p0,
    (SELECT 0 as n UNION SELECT 1) p1,
    (SELECT 0 as n UNION SELECT 1) p2,
    (SELECT 0 as n UNION SELECT 1) p3,
    (SELECT 0 as n UNION SELECT 1) p4) as n
left join table t on (t.created_at = date('2018-08-01') + interval n.number day)
where n.number < 31
order by dates asc;
