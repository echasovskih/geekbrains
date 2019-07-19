delimiter $$
create procedure hello()
begin
select
case when hour(now()) between 0 and 5 then 'Good Night'
when hour(now()) between 6 and 11 then 'Good Morning'
when hour(now()) between 12 and 17 then 'Good Afternoon'
else 'Good Evening' end as 'Greeting';
end $$
delimiter ;
