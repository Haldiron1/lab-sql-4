SELECT* FROM film;
-- Get film ratings.
SELECT rating FROM film;

-- Get release years.
SELECT release_year FROM film;

-- Get all films with ARMAGEDDON in the title.
SELECT * FROM film
WHERE  title LIKE '%ARMAGEDDON%';

-- '/LIKE operator along with the % wildcard to search for films where the title contains the word 
--  "ARMAGEDDON" anywhere within it. The % wildcard represents any sequence of characters.\'

-- Get all films with APOLLO in the title 
SELECT * FROM film
WHERE  title LIKE '%APOLLO%';

-- Get all films which title ends with APOLLO.
SELECT *
FROM film
WHERE title LIKE '% APOLLO';
-- vs
SELECT *
FROM film
WHERE title LIKE 'APOLLO %';


-- Get all films with word DATE in the title
SELECT title
FROM film
WHERE title LIKE 'DATE' OR title LIKE 'DATE %' OR title LIKE '% DATE %' OR title LIKE '% DATE';

-- Get 10 films with the longest title.
SELECT title
FROM film
ORDER BY LENGTH(title) DESC
LIMIT 10;

select * from film;

-- Get 10 the longest films.
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- How many films include Behind the Scenes content?

SELECT COUNT(*) FROM film
WHERE special_features LIKE '%Behind the Scenes%';

-- List films ordered by release year and title in alphabetical order.

SELECT title, release_year FROM film
ORDER BY release_year, title DESC;







