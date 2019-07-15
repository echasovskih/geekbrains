create view prod_cat as select p.name as prod_name,c.name as cat_name from products p join catalogs c on p.catalog_id = c.id;
