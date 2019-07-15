select u.id,
	u.name
from users 
join orders o on o.user_id = u.id
