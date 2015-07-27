a = LOAD  'customer.tsv'
    AS (name:chararray, gender:chararray, age:int);
b = FILTER a BY (gender == 'M');
c = FOREACH b GENERATE name;
-- This is a comment line
STORE c INTO 'targetlist'; 
