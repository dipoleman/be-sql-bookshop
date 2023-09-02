\c my_bookshop

CREATE TABLE books_genres (
    book_id INT REFERENCES books(book_id) ON DELETE CASCADE,
    genre_id INT REFERENCES genres(genre_id) ON DELETE CASCADE
);
    