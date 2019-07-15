select count(*) as likes
from likes l 
join media m on m.id = l.to_subject_id
join (select u.id 
from users u
join profiles p on p.user_id = u.id
order by p.birthday desc
limit 10 ) as u on u.id = m.user_id
