delete t from table t left join (select id from table order by created_at desc limit 5) t2 on t.id=t2.id where t2.id is null;
