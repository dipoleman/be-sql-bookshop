\c my_bookshop

\echo '\n Here are the genres for Emma:\n'

SELECT title,genre
FROM books
JOIN books_genres ON books.book_id = books_genres.book_id
JOIN genres ON genres.genre_id = books_genres.genre_id
WHERE books.title = 'Emma';

\echo '\n Here are all the dystopian books:\n'

SELECT title,genre
FROM genres
JOIN books_genres ON genres.genre_id = books_genres.genre_id
JOIN books ON books_genres.book_id = books.book_id
WHERE genres.genre = 'dystopian';