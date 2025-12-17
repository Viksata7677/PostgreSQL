SELECT REPLACE(title, 'The', '***') as Title
FROM books
WHERE SUBSTRING(title, 1, 3) = 'The'