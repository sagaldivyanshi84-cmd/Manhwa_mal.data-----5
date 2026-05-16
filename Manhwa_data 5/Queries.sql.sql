-- This query shows manhwa are available in each status
SELECT COUNT(*) AS total_manhwa, status
FROM manhwa_mal
GROUP BY status;
-- This query shows average score of each type
SELECT AVG(score) AS avg_score, type
FROM manhwa_mal
GROUP BY type ; 
-- This query shows total manhwa written by each author
SELECT COUNT(*) AS total_manhwa, authors
FROM manhwa_mal
GROUP BY authors;
-- This query shows maximum popularity in each status category
SELECT MAX(popularity) AS max_popularity, status
FROM manhwa_mal
GROUP BY status;
-- This query shows average chapters for each type.
SELECT AVG(chapters) AS avg_chapters,type
FROM manhwa_mal
GROUP BY type;
-- This query shows titles belong to each genre
SELECT COUNT(*) AS total_title,genres
FROM manhwa_mal
GROUP BY genres;
-- This query shows authors who have written more than 2 manhwa
SELECT COUNT(*) AS total_manhwa,authors
FROM manhwa_mal
GROUP BY authors
HAVING total_manhwa > 2;
-- This query shows types having average score greater than 5
SELECT AVG(score) AS avg_score, type
FROM manhwa_mal
GROUP BY type
HAVING avg_score > 5; 
-- This query shows status categories with more than 10 titles
SELECT COUNT(*) AS total_titles, status
FROM manhwa_mal
GROUP BY status
HAVING total_titles > 10 ;
-- This query shows authors whose average score is above 8.5
SELECT AVG(score) AS avg_score, authors
FROM manhwa_mal
GROUP BY authors
HAVING avg_score > 8.5;
-- This query shows types with average chapters greater than 50
SELECT AVG(chapters) AS avg_chapters, type
FROM manhwa_mal 
GROUP BY type
HAVING avg_chapters > 50 ;
-- This query shows genres having more than 35 titles
SELECT COUNT(*) AS total_title, genres
FROM manhwa_mal
GROUP BY genres
HAVING total_title > 35; 
-- This query shows top 5 authors with highest average score
SELECT AVG(score) AS avg_score, authors
FROM manhwa_mal
GROUP BY authors
ORDER BY avg_score DESC
LIMIT 5;
-- This query shows genres with lowest popularity average
SELECT AVG(popularity) AS avg_popularity,genres
FROM manhwa_mal
GROUP BY genres
ORDER BY avg_popularity ASC ;
-- This query shows total completed and ongoing manhwa separately 
SELECT COUNT(*) AS total_manhwa, status
FROM manhwa_mal
GROUP BY status;  
-- This query shows total chapters published by each author
SELECT SUM(chapters) AS total_chapters, authors
FROM manhwa_mal
GROUP BY authors;
-- This query shows highest scored manhwa in each type
SELECT MAX(score) AS max_score, type
FROM manhwa_mal
GROUP BY type;
-- This query shows genres where average score is below 7
SELECT AVG(score) AS avg_score, genres
FROM manhwa_mal
GROUP BY genres 
HAVING avg_score < 7;
-- This query shows publish years having more than 20 releases
SELECT COUNT(*) AS total_release, YEAR(publish_time) AS year
FROM manhwa_mal
GROUP BY year
HAVING total_release > 20;
-- This query shows statuses where average popularity is greater than 500
SELECT COUNT(popularity) AS total_popularity,status
FROM manhwa_mal
GROUP BY status
HAVING total_popularity > 500;