\c my_bookshop;

CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(50),
    price_in_pence INT,
    quantity_in_stock INT,
    release_date DATE,
    is_fiction BOOLEAN
);
