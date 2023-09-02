\c my_bookshop


-- UPDATE books SET author_id = 15 WHERE book_id = 6;
-- UPDATE books SET author_id = 14 WHERE book_id = 10;
-- UPDATE books SET author_id = 3 WHERE book_id = 1;
-- UPDATE books SET author_id = 2 WHERE book_id = 2;
-- UPDATE books SET author_id = 7 WHERE book_id = 3;
-- UPDATE books SET author_id = 14 WHERE book_id = 4;
-- UPDATE books SET author_id = 13 WHERE book_id = 5;
-- UPDATE books SET author_id = 12 WHERE book_id = 7;

UPDATE books SET author_id = CASE book_id
    WHEN 6 THEN 15
    WHEN 10 THEN 14
    WHEN 1 THEN 3
    WHEN 2 THEN 2
    WHEN 3 THEN 7
    WHEN 4 THEN 14
    WHEN 5 THEN 13
    WHEN 7 THEN 12
END;


SELECT * FROM authors;
SELECT book_id,title,author_id FROM books;




-- 6 The Handmaid's Tale: Margaret Atwood 15
-- 10 Pride and Prejudice: Jane Austen 14
-- 1 The Hitchhiker's Guide to the Galaxy: Douglas Adams 3
-- 2 The Little Prince: Antoine de Saint-Exupéry 2
-- 3 The Tale of Peter Rabbit: Beatrix Potter 7
-- 4 Emma: Jane Austen 14
-- 5 Nineteen Eighty-Four: A Novel: George Orwell 13
-- 7 The War of the Worlds: H.G. Wells 12