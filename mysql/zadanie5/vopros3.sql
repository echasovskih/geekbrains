select count(*) as like_count,p.sex as likes
from likes l 
join users u on u.id = l.from_user_id
join profiles p on p.user_id = u.id
group by p.sex
