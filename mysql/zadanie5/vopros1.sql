select count(*) as message_count,
	f.friend_id 
from messages m
join 
((SELECT friend_id 
  FROM friendship 
  WHERE user_id = 1
    AND confirmed_at IS NOT NULL 
    AND status IS TRUE
)
UNION
(SELECT user_id 
  FROM friendship 
  WHERE friend_id = 1
    AND confirmed_at IS NOT NULL 
    AND status IS TRUE
)) as f on (f.friend_id = m.to_user_id or f.friend_id = m.from_user_id)
group by f.friend_id
order by message_count desc
limit 1;
