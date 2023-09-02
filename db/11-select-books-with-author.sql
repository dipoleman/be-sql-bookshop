\c my_bookshop

\echo '\n Here is a list of book titles with the corresponding author:\n'

SELECT title, author_name
FROM books
INNER JOIN authors
ON books.author_id = authors.author_id;

\echo '\n Here is a list of authors without an associated book:\n'

SELECT author_name
FROM authors
LEFT JOIN books ON authors.author_id = books.author_id
WHERE books.book_id IS NULL;
