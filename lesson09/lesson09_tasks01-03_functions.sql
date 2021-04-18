/* Практическое задание #09 
 * "Хранимые процедуры и функции, триггеры". 
 */

USE shop;

/* Задание # 1.
 * Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. 
 * С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", 
 * с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", 
 * с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".
*/

DELIMITER //

/* Для правильной работы необходимо включать в промежуток одну из границ.
 * Поэтому реализовал через IF, для большей наглядности 
 */
DROP FUNCTION IF EXISTS hello//
CREATE FUNCTION hello()
RETURNS TEXT NO SQL
BEGIN
	DECLARE hour_now INT;
	SET hour_now = HOUR(now());
	IF (hour_now > 0 AND hour_now <= 6) THEN 
		RETURN 'Доброй ночи';
	ELSEIF (hour_now > 6 AND hour_now <= 12) THEN 
		RETURN 'Доброе утро';
	ELSEIF (hour_now > 12 AND hour_now <= 18) THEN 
		RETURN 'Добрый день';
	ELSE 
		RETURN 'Добрый вечер';	
	END IF;
END//

DELIMITER ;

SELECT hello();

/* Задание # 2.
 * В таблице products есть два текстовых поля: 
 * name с названием товара и description с его описанием. 
 * Допустимо присутствие обоих полей или одно из них. 
 * Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. 
 * Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. 
 * При попытке присвоить полям NULL-значение необходимо отменить операцию.
*/

delimiter //

DROP TRIGGER IF EXISTS trigger_check_null//
CREATE TRIGGER trigger_check_null BEFORE INSERT ON products
FOR EACH ROW
BEGIN
	IF (ISNULL(NEW.name) AND ISNULL(NEW.desсription)) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Оба поля name и description не могут быть null';
	END IF;
END//
delimiter ;

-- Отклоняется, так как и name и desсription NULL
INSERT INTO products (name, desсription, price, catalog_id)
VALUES (NULL, NULL, 7000, 2);

-- Вставка успешна
INSERT INTO products (name, desсription, price, catalog_id)
VALUES ('Intel Core i3-8100', NULL, 7000, 1);

-- Вставка успешна
INSERT INTO products (name, desсription, price, catalog_id)
VALUES (NULL, 'Not NULL description', 7000, 2);
