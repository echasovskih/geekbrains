delimiter $$
create trigger verifyNotNull before insert on products
for each row
begin
if (new.name is null or new.name = '') and (new.description is null or new.description = '')
then 
signal sqlstate '45000' set message_text = 'Warning: Fields name and description can not be empty simultaneously!';
end if;
end $$
delimiter ;
