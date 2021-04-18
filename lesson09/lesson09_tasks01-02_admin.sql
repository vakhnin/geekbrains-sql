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

/* Задание # 2.
 * (по желанию) Пусть имеется таблица accounts содержащая три столбца 
 * id, name, password, содержащие первичный ключ, имя пользователя и его пароль. 
 * Создайте представление username таблицы accounts, 
 * предоставляющий доступ к столбца id и name. 
 * Создайте пользователя user_read, который бы не имел доступа к таблице accounts, 
 * однако, мог бы извлекать записи из представления username.
*/

USE hw9;

-- Подготавливаем данные
DROP TABLE IF EXISTS accounts;
CREATE TABLE accounts (
	id int PRIMARY KEY,
	name VARCHAR(255),
	password VARCHAR(255)
);

INSERT INTO accounts VALUES
	(1, 'Alice', '1234'),
	(2, 'Bob', '1234');

CREATE OR REPLACE VIEW username(user_id, user_name) AS 
	SELECT id, name FROM accounts;

SELECT * FROM username ;

-- Создаем пользователя с доступом только на чтение к VIEW username
DROP USER IF EXISTS 'reader_username'@'localhost';
CREATE USER 'reader_username'@'localhost' IDENTIFIED BY '1234';
GRANT SELECT ON hw9.username TO 'reader_username'@'localhost';

-- Пробуем пользователем reader_username
SELECT * FROM accounts a ; -- Отклонено
SELECT * FROM username; -- Успех
