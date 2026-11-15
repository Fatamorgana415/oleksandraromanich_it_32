ALTER TABLE books ADD COLUMN total_value INTEGER
    GENERATED ALWAYS AS (copies_count * 100) VIRTUAL;
SELECT id, title, copies_count, total_value FROM books LIMIT 5;
ALTER TABLE readers ADD COLUMN is_active INTEGER
    GENERATED ALWAYS AS (CASE WHEN registration_date >= '2025-01-01' THEN 1 ELSE 0 END) VIRTUAL;
SELECT id, last_name, registration_date, is_active FROM readers LIMIT 5;
UPDATE books SET total_value = 500 WHERE id = 1;
SELECT id, title, copies_count, total_value FROM books WHERE id = 1;
UPDATE books SET copies_count = 10 WHERE id = 1;
SELECT id, title, copies_count, total_value FROM books WHERE id = 1;
SELECT id, title, copies_count, total_value
FROM books
WHERE total_value > 1500;
