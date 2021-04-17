/* Практическое задание #09 
 * "Транзакции, переменные, представления". 
 */

/* Задание # 1.
 * В базе данных shop и sample присутствуют одни и те же таблицы, 
 * учебной базы данных. 
 * Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. 
 * Используйте транзакции.
*/

START TRANSACTION;
INSERT INTO sample.users 
	SELECT * FROM shop.users WHERE id = 1;
DELETE FROM shop.users WHERE id = 1;
COMMIT;

-- проверяем
SELECT * FROM shop.users;
SELECT * FROM sample.users;


/* Задание # 2.
 * Создайте представление, которое выводит название name товарной позиции 
 * из таблицы products и соответствующее название каталога name из таблицы catalogs.
*/

USE shop;

-- Создаем представление
CREATE OR REPLACE VIEW view_product_catalog AS 
	SELECT p2.name AS p_name, c2.name AS c_name FROM products p2 
		JOIN catalogs c2 ON p2.catalog_id = c2.id
	
-- Проверяем
SELECT * FROM view_product_catalog;


/* Задание # 3.
 * (по желанию) Пусть имеется таблица с календарным полем created_at. 
 * В ней размещены разряженые календарные записи за август 2018 года 
 * '2018-08-01', '2016-08-04', '2018-08-16' и 2018-08-17. 
 * Составьте запрос, который выводит полный список дат за август, выставляя в соседнем поле значение 1, 
 * если дата присутствует в исходном таблице и 0, если она отсутствует.
*/

-- Подготовка данных
DROP TABLE IF EXISTS dates;
CREATE TABLE IF NOT EXISTS dates (
  id SERIAL PRIMARY KEY,
  created_at date);
INSERT INTO dates VALUES
	(NULL, '2018-08-01'), 
	(NULL, '2018-08-04'),
	(NULL, '2018-08-16'),
	(NULL, '2018-08-17');

DROP TABLE IF EXISTS august_days;
CREATE TEMPORARY TABLE IF NOT EXISTS august_days (days int);
INSERT INTO august_days 
	VALUES 
		(1), (2), (3), (4), (5), (6), (7), (8), (9), (10),
		(11), (12),(13),(14), (15), (16), (17), (18), (19), (20),
		(21), (22), (23), (24), (25), (26), (27), (28), (29), (30), (31);

-- Формируем таблицу
SELECT 
INTERVAL a.days DAY + '2018-07-31' AS 'date', 
IF((INTERVAL a.days DAY + '2018-07-31') IN 
(SELECT created_at FROM dates d2),1,0) AS in_dates
FROM august_days a;



