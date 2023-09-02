\c my_bookshop

INSERT INTO books_genres
    (book_id, genre_id)
VALUES
    (6,5),
    (6,7),
    (10,8),
    (10,3),
    (10,7),
    (1,1),
    (1,6),
    (1,7),
    (2,2),
    (2,7),
    (3,2),
    (3,7),
    (3,8),
    (4,8),
    (4,3),
    (4,7),
    (5,5),
    (5,8),
    (5,1),
    (7,1),
    (7,7),
    (7,8);

SELECT * FROM books;
SELECT * FROM authors;
SELECT * FROM genres;
select * FROM books_genres;