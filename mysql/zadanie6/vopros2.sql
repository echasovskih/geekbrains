select p.name as product_name,
	c.name as category_name
from products p 
join catalogs c on p.catalog_id = c.id
