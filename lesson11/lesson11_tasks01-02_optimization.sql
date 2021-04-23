/* Практическое задание #11 
 * "Оптимизация запросов". 
 */

USE shop;

/* Задание # 1.
 * Создайте таблицу logs типа Archive. 
 * Пусть при каждом создании записи в таблицах users, catalogs и products 
 * в таблицу logs помещается время и дата создания записи, название таблицы, 
 * идентификатор первичного ключа и содержимое поля name.
*/

-- Создаем таблицу
DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
	created_at DATETIME NOT NULL,
	table_name VARCHAR(255) NOT NULL,
	id BIGINT NOT NULL,
	name_value VARCHAR(255) NOT NULL
) ENGINE = ARCHIVE;

-- Создаем тригеры
DELIMITER //

DROP TRIGGER IF EXISTS trigger_insert_users//
CREATE TRIGGER trigger_insert_users AFTER INSERT ON users
FOR EACH ROW
BEGIN
	INSERT INTO logs (created_at, table_name, id, name_value)
	VALUES (NOW(), 'users', NEW.id, NEW.name);
END//

DROP TRIGGER IF EXISTS trigger_insert_catalogs//
CREATE TRIGGER trigger_insert_catalogs AFTER INSERT ON catalogs
FOR EACH ROW
BEGIN
	INSERT INTO logs (created_at, table_name, id, name_value)
	VALUES (NOW(), 'catalogs', NEW.id, NEW.name);
END//


DROP TRIGGER IF EXISTS trigger_insert_products//
CREATE TRIGGER trigger_insert_products AFTER INSERT ON products
FOR EACH ROW
BEGIN
	INSERT INTO logs (created_at, table_name, id, name_value)
	VALUES (NOW(), 'products', NEW.id, NEW.name);
END //

DELIMITER ;

-- Добавляем записи
INSERT INTO users (name, birthday_at) VALUES
  ('Андрей', '1992-11-08');
 INSERT INTO catalogs VALUES
  (NULL, 'Расходные материалы');
 INSERT INTO products
  (name, desсription, price, catalog_id)
VALUES
  ('Intel Core i3-8122', 
  'Процессор', 8888.00, 1);
 
 -- Проверяем
 SELECT * FROM logs l ;


/* Задание # 2.
 * (по желанию) Создайте SQL-запрос, который помещает в таблицу users миллион записей.
*/

-- Создаем процедуру
delimiter //
DROP PROCEDURE IF EXISTS insert_one_million_users//
CREATE PROCEDURE insert_one_million_users ()
BEGIN
	DECLARE i INT DEFAULT 0;
	-- Миллион вставок выполняется очень долго, попробуем 1000 вставок
	WHILE i < 1000 DO
		INSERT INTO users(name, birthday_at) 
			VALUES (CONCAT('user_', i), DATE_SUB(CURRENT_DATE(), INTERVAL 20 YEAR));
		SET i = i + 1;
	END WHILE;
END//
delimiter ;

-- Вызываем
CALL insert_one_million_users;

-- Проверяем
SELECT count(*) FROM users u ; 
