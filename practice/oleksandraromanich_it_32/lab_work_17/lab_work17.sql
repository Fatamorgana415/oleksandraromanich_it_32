DROP TABLE IF EXISTS books_staging;

CREATE TABLE books_staging (
    title             TEXT,
    author            TEXT,
    publication_year  INTEGER,
    genre             TEXT,
    copies_count      INTEGER
);

SELECT * FROM books_staging;

SELECT title, author, publication_year, genre, copies_count, COUNT(*) AS cnt
FROM books_staging
GROUP BY title, author, publication_year, genre, copies_count
HAVING COUNT(*) > 1;

INSERT INTO books (title, author, publication_year, genre, copies_count)
SELECT DISTINCT title, author, publication_year, genre, copies_count
FROM books_staging;

SELECT COUNT(*) FROM books;
