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
