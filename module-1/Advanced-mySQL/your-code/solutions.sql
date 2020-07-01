/* CHALLENGE 1 */
SELECT AuthorID, SUM(Advance + TotalRoyalty) AS Profits
FROM (
SELECT titles.title_id AS TitleID, titleauthor.au_id AS AuthorID, titles.advance * titleauthor.royaltyper / 100 AS Advance, 
SUM(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) AS TotalRoyalty
FROM titleauthor
INNER JOIN titles
ON titles.title_id = titleauthor.title_id
INNER JOIN sales
ON titles.title_id = sales.title_id
GROUP BY titleauthor.au_id, titles.title_id) profits
GROUP BY AuthorID
ORDER BY Profits DESC LIMIT 3;

/* CHALLENGE 2 */
CREATE TEMPORARY TABLE profits
SELECT titles.title_id AS TitleID, titleauthor.au_id AS AuthorID, titles.advance * titleauthor.royaltyper / 100 AS Advance, 
SUM(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) AS TotalRoyalty
FROM titleauthor
INNER JOIN titles
ON titles.title_id = titleauthor.title_id
INNER JOIN sales
ON titles.title_id = sales.title_id
GROUP BY titleauthor.au_id, titles.title_id;

SELECT AuthorID, SUM(Advance + TotalRoyalty) AS Profits FROM profits
GROUP BY AuthorID
ORDER BY Profits DESC LIMIT 3;

/* CHALLENGE 3 */
CREATE TABLE most_profiting_authors
SELECT AuthorID AS au_id, SUM(Advance + TotalRoyalty) AS profits FROM profits
GROUP BY AuthorID
ORDER BY Profits DESC LIMIT 3;
