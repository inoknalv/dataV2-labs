
SELECT authors.au_id AS 'Author ID', au_lname AS 'Last name', au_fname AS 'First name', title AS 'Title', pub_name AS 'Publisher name' 
FROM titles 
INNER JOIN titleauthor ON titles.title_id = titleauthor.title_id 
INNER JOIN authors ON authors.au_id = titleauthor.au_id 
INNER JOIN publishers ON publishers.pub_id = titles.pub_id;

SELECT authors.au_id AS 'Author ID', au_lname AS 'Last name', au_fname AS 'First name', pub_name AS 'Publisher name', COUNT(*) AS 'Title count' 
FROM titles 
INNER JOIN titleauthor ON titles.title_id = titleauthor.title_id 
INNER JOIN authors ON authors.au_id = titleauthor.au_id 
INNER JOIN publishers ON publishers.pub_id = titles.pub_id 
GROUP BY authors.au_id, publishers.pub_id 
ORDER BY COUNT(*) DESC;

SELECT authors.au_id AS 'Author ID', au_lname AS 'Last name', au_fname AS 'First name', SUM(ytd_sales) AS 'Total'
FROM titles
INNER JOIN titleauthor ON titles.title_id = titleauthor.title_id
INNER JOIN authors ON authors.au_id = titleauthor.au_id
GROUP BY authors.au_id
ORDER BY SUM(ytd_sales) DESC LIMIT 3;

SELECT authors.au_id AS 'Author ID', au_lname AS 'Last name', au_fname AS 'First name', SUM(IFNULL(ytd_sales, 0)) AS 'Total'
FROM titles
RIGHT JOIN titleauthor ON titles.title_id = titleauthor.title_id
RIGHT JOIN authors ON authors.au_id = titleauthor.au_id
GROUP BY authors.au_id
ORDER BY SUM(ytd_sales) DESC;


