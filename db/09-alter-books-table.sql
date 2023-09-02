\c my_bookshop

ALTER TABLE books 
ADD COLUMN author_id INT 
REFERENCES authors(author_id) ON DELETE CASCADE;



