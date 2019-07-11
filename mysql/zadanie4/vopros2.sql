select count(*) as user_count,
	weekday(timestampadd(year,year(now())-year(birthday_at),birthday_at)) as weekdays_birthday
from users 
group by weekdays_birthday;
