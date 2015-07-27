records = load '/users/cloudera/ratings.tsv'
    as (name: chararray, item:chararray, rating: int);
dump records;
describe records;
