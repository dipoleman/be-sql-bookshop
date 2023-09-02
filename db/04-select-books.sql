\c my_bookshop;

\echo '\n Here are all the books that we have in stock:\n'
SELECT title FROM books WHERE quantity_in_stock > 0;


\echo '\n Here are all the non-fiction books:\n'
SELECT title FROM books WHERE is_fiction = false;


\echo '\n Here are all the books released in the 1900s:\n'
SELECT title FROM books WHERE release_date BETWEEN '1900-01-01' AND '1999-12-31';


\echo '\n Here are all the books with "The" in the title:\n'
SELECT title FROM books WHERE title ILIKE '%the%';


\echo '\n Here are the books sorted in alphabetical order:\n'
SELECT title FROM books ORDER BY title;


\echo '\n Here is the most expensive book:\n'
SELECT title FROM books ORDER BY price_in_pence DESC LIMIT 1;

