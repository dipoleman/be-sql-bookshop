\c my_bookshop

SELECT * FROM authors;
SELECT * FROM books;
SELECT * FROM genres;
SELECT * FROM books_genres;

-- 1: Use the ARRAY_AGG() function to get a list of each book in a single row, with all genres that the book belongs to.

SELECT books.title,
ARRAY_AGG(genres.genre) AS genres, 
-- books.author_id, 
authors.author_name
FROM books
JOIN books_genres ON books.book_id = books_genres.book_id
JOIN genres ON books_genres.genre_id = genres.genre_id
JOIN authors on authors.author_id = books.author_id
GROUP BY books.book_id, authors.author_name, books.author_id;

-- 2: Add the ability to add reviews to the books. You should then be able to query to find:

-- All reviews of a specified book.
-- The average rating of a book.
-- See only the most favourable and unfavourable reviews for a specified book.
-- List all books above a certain average rating.

CREATE TABLE reviews (
    review_id SERIAL PRIMARY KEY,
    book_id INT REFERENCES books(book_id) ON DELETE CASCADE,
    score INT,
    review TEXT
);


INSERT INTO reviews
    (book_id,review,score)
VALUES
    (6,'A gripping dystopian novel of religious state against women',9),
    (6,'Fiercely political and bleak, yet witty and wise.',8),
    (6,'Somebody should make a TV series out of this',7),
    (1,'One of the best books I''ve ever read, both sci-fi and comedy.',10),
    (1,'It is surprising to think how this book...',9),
    (1,'I''m not feeling this rubbish',1),
    (3,'One of Beatrix Potter''s most popular and well-loved tales.',7),
    (3,'It centres on the mischievous Peter Rabbit, whose disobedience leads to trouble.',6),
    (5,'Nineteen Eighty-Four (1984) was attacked by some critics for its slow pacing and uncompromisingly bleak vision.',10),
    (7,'Stuff happens, and its bad!',3),
    (7,'Stuff happens but it''s ok',8);

SELECT * FROM reviews;

SELECT books.title,
ARRAY_AGG(reviews.review) AS reviews
FROM books
JOIN reviews ON books.book_id = reviews.book_id
GROUP BY books.book_id;


SELECT books.title, ROUND(AVG(reviews.score), 2) AS average_score
FROM books
JOIN reviews ON books.book_id = reviews.book_id
GROUP BY books.book_id;









