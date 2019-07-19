delimiter $$
create procedure fibonacci(in num int)
begin
select round((power(0.5*(1+sqrt(5)),num) + power(0.5*(1-sqrt(5)),num)) / sqrt(5)) as fibonacci;
end $$
delimiter ;

