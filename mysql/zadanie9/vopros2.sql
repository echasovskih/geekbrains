вариант 1: процедура

delimiter $$
create procedure insert_mil()
begin
set @n = 0;
while(@n < 1000000) do
insert into users(name) select concat('user_name_',@n);
set @n = @n + 1;
end while;
end $$
delimiter ; 

вариант 2: автогенерация чисед Mysql < 8.0

insert into users (name) select concat('user_name_',n.number) from
(select p0.n
    + p1.n*2
    + p2.n * POWER(2,2)
    + p3.n * POWER(2,3)
    + p4.n * POWER(2,4)
    + p5.n * POWER(2,5)
    + p6.n * POWER(2,6)
    + p7.n * POWER(2,7)
    + p8.n * POWER(2,8)
    + p9.n * POWER(2,9)
    + p10.n * POWER(2,10)
    + p11.n * POWER(2,11)
    + p12.n * POWER(2,12)
    + p13.n * POWER(2,13)
    + p14.n * POWER(2,14)
    + p15.n * POWER(2,15)
    + p16.n * POWER(2,16)
    + p17.n * POWER(2,17)
    + p18.n * POWER(2,18)
    + p19.n * POWER(2,19) as number
 FROM
    (SELECT 0 as n UNION SELECT 1) p0,
    (SELECT 0 as n UNION SELECT 1) p1,
    (SELECT 0 as n UNION SELECT 1) p2,
    (SELECT 0 as n UNION SELECT 1) p3,
    (SELECT 0 as n UNION SELECT 1) p4,
    (SELECT 0 as n UNION SELECT 1) p5,
    (SELECT 0 as n UNION SELECT 1) p6,
    (SELECT 0 as n UNION SELECT 1) p7,
    (SELECT 0 as n UNION SELECT 1) p8,
    (SELECT 0 as n UNION SELECT 1) p9,
    (SELECT 0 as n UNION SELECT 1) p10,
    (SELECT 0 as n UNION SELECT 1) p11,
    (SELECT 0 as n UNION SELECT 1) p12,
    (SELECT 0 as n UNION SELECT 1) p13,
    (SELECT 0 as n UNION SELECT 1) p14,
    (SELECT 0 as n UNION SELECT 1) p15,
    (SELECT 0 as n UNION SELECT 1) p16,
    (SELECT 0 as n UNION SELECT 1) p17,
    (SELECT 0 as n UNION SELECT 1) p18,
    (SELECT 0 as n UNION SELECT 1) p19) as n
where n.number < 1000000

вариант 3: автогенерация чисел Mysql >= 8.0, PostgreSQL, MSSQL

insert into users (name) select concat('user_name_',n.number) from
(select row_number() over() as number, *
 FROM
    (SELECT 0 as n UNION SELECT 1) p0,
    (SELECT 0 as n UNION SELECT 1) p1,
    (SELECT 0 as n UNION SELECT 1) p2,
    (SELECT 0 as n UNION SELECT 1) p3,
    (SELECT 0 as n UNION SELECT 1) p4,
    (SELECT 0 as n UNION SELECT 1) p5,
    (SELECT 0 as n UNION SELECT 1) p6,
    (SELECT 0 as n UNION SELECT 1) p7,
    (SELECT 0 as n UNION SELECT 1) p8,
    (SELECT 0 as n UNION SELECT 1) p9,
    (SELECT 0 as n UNION SELECT 1) p10,
    (SELECT 0 as n UNION SELECT 1) p11,
    (SELECT 0 as n UNION SELECT 1) p12,
    (SELECT 0 as n UNION SELECT 1) p13,
    (SELECT 0 as n UNION SELECT 1) p14,
    (SELECT 0 as n UNION SELECT 1) p15,
    (SELECT 0 as n UNION SELECT 1) p16,
    (SELECT 0 as n UNION SELECT 1) p17,
    (SELECT 0 as n UNION SELECT 1) p18,
    (SELECT 0 as n UNION SELECT 1) p19) as n
where n.number < 1000000

