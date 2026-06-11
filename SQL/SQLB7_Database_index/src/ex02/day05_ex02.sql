create index idx_person_name on  person (UPPER(name));
  
  SET enable_seqscan = OFF;

  EXPLAIN analyze
  select * from person where UPPER(name) = 'ANNA';
