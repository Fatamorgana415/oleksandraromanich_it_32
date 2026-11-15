SELECT COUNT(*) FROM books;

SELECT * FROM books_staging;

INSERT INTO books (title, author, publication_year, genre, copies_count)
SELECT field1, field2, field3, field4, field5
FROM books_staging
WHERE field1 != 'title';

SELECT id, title, author
FROM books
WHERE title IN (
    'Тіні забутих предків і сьогодення',
    'Кобзар. Вибране',
    'Місто під дощем',
    'Холодний Яр',
    'Записки українського самашедшого',
    'Дім у якому',
    'Ворошиловград',
    'Музей покинутих секретів'
)
ORDER BY id;

