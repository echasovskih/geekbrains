select count(*) as user_count,
	weekday(this_year_birthday) as weekdays
from (select timestampadd(year,year(now())-year(birthday_at),birthday_at) as this_year_birthday from users) this_year 
group by weekday(this_year_birthday);
