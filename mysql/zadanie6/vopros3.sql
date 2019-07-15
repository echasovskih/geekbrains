select f.id,
	fc.name as from,
	tc.name as to
from flights f
join cities fc on f.from = fc.label
join cities tc on f.to = tc.label
