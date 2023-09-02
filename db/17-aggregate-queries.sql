\c my_bookshop

\echo '\n Here is the total number of books we have by each author:\n'

SELECT authors.author_name,
SUM (books.quantity_in_stock) AS total_number_of_books_by_author
FROM books
JOIN authors ON books.author_id = authors.author_id
GROUP BY  authors.author_name;

\echo '\n Here is the price for dystopian books:\n'

SELECT books.title, genres.genre, books.price_in_pence
FROM books
JOIN books_genres ON books.book_id = books_genres.book_id
JOIN genres ON genres.genre_id = books_genres.genre_id
WHERE genres.genre = 'dystopian';

\echo '\n Here is the average price for dystopian books:\n'

SELECT CAST(AVG(books.price_in_pence) AS INT) AS avg_price_of_dystopian_books
FROM books
JOIN books_genres ON books.book_id = books_genres.book_id
JOIN genres ON genres.genre_id = books_genres.genre_id
WHERE genres.genre = 'dystopian';


