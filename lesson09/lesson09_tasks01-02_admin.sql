/* Практическое задание #09 
 * "Администрирование MySQL". 
 */

USE shop;

/* Задание # 1.
 * Создайте двух пользователей которые имеют доступ к базе данных shop. 
 * Первому пользователю shop_read должны быть доступны только запросы на чтение данных, 
 * второму пользователю shop — любые операции в пределах базы данных shop.
*/

-- Пользователю доступно только чтение
DROP USER IF EXISTS 'reader'@'localhost';
CREATE USER 'reader'@'localhost' IDENTIFIED BY '1234';
GRANT SELECT ON shop.* TO 'reader'@'localhost';


-- Пробуем пользователем reader
INSERT INTO catalogs(name)
VALUES('new'); -- Отклонено

SELECT * FROM catalogs c ; -- Успех

-- Пользователю доступно и чтение и запись
DROP USER IF EXISTS 'writer'@'localhost';
CREATE USER 'writer'@'localhost' IDENTIFIED BY '1234';
GRANT ALL ON shop.* TO 'writer'@'localhost';

-- Пробуем пользователем writer
INSERT INTO catalogs(name)
VALUES('new'); -- Успех

SELECT * FROM catalogs c ; -- Успех