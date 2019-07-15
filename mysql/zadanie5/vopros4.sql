--Минимальная активность - минимальное количество написанных сообщений, поставленных лайков, добавленных файлов (при желании можно добавить веса к этим параметрам)
select u.id,
	ifnull(l.like_created,0) + ifnull(ms.message_created,0) + ifnull(m.media_created,0) as activity
from users u
left join 
(select count(*) as like_created,from_user_id 
from likes group by from_user_id) l on u.id = l.from_user_id
left join
(select count(*) as message_created, from_user_id 
from messages group by from_user_id) ms on u.id = ms.from_user_id
left join
(select count(*) as media_created, user_id 
from media group by user_id) m on u.id = m.user_id
order by activity asc
limit 10
