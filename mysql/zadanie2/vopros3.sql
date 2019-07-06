insert into cat (id,name) select * from catalogs on duplicate key update name = catalogs.name; 
