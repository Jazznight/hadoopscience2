create table top_ratings (userid INT, itemid INT)  partitioned by(rating INT) 
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' ;
LOAD DATA LOCAL INPATH 'top_ratings.tsv' overwrite INTO TABLE top_ratings partition (rating = 5 )  ;
LOAD DATA LOCAL INPATH 'second_ratings.tsv' overwrite INTO TABLE top_ratings partition (rating = 4 )  ;
