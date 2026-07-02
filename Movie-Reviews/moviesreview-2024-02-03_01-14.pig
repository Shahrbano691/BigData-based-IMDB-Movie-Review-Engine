REGISTER /usr/hdp/2.4.0.0-169/pig/piggybank.jar;
review_data = LOAD '/Movies_Review/IMDB_Dataset.csv' USING PigStorage(',') AS (review:chararray, id:int);
get_details = FOREACH review_data GENERATE id, review;
tokens = FOREACH get_details GENERATE id, review, FLATTEN(TOKENIZE(review)) AS words;
dictionary = LOAD '/Movies_Review/AFINN.txt' USING PigStorage('\t') AS (word:chararray, rating:int);
word_ratings = JOIN tokens BY words LEFT OUTER, dictionary BY word USING 'replicated';
ratings = FOREACH word_ratings GENERATE tokens::id AS id, tokens::review AS review, dictionary::rating AS rating;  
group_words = GROUP ratings BY (id, review);
avg_ratings = FOREACH group_words GENERATE group, AVG(ratings.rating) AS review_rating; 
positive_reviews = FILTER avg_ratings BY review_rating > 0; 
negative_reviews = FILTER avg_ratings BY review_rating < 0; 
STORE positive_reviews INTO 'hdfs:///user/admin//positive_reviewss' USING PigStorage(',');
STORE negative_reviews INTO 'hdfs:///user/admin//negative_reviewss' USING PigStorage(',');

