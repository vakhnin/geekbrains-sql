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
 * Поэтому реализовал через IF с условиями, для большей наглядности 
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



/* Задание # 3.
 * (по желанию) Напишите хранимую функцию для вычисления произвольного числа Фибоначчи. 
 * Числами Фибоначчи называется последовательность в которой число равно сумме двух предыдущих чисел. 
 * Вызов функции FIBONACCI(10) должен возвращать число 55.
*/

DELIMITER //
DROP FUNCTION IF EXISTS fibonacci//
CREATE FUNCTION fibonacci(n int)
RETURNS int DETERMINISTIC
BEGIN
	DECLARE fib_last_1 INT DEFAULT 0;
	DECLARE fib_last_2 INT DEFAULT 1;
	DECLARE fib_new INT;
	IF (n = 0) THEN 
		RETURN 0;
	ELSEIF (n = 1) THEN 
		RETURN 1;
	ELSE 
		WHILE n > 1 DO
			SET fib_new = fib_last_1 + fib_last_2;
			SET fib_last_1 = fib_last_2;
			SET fib_last_2 = fib_new;
		    SET n = n - 1;
		END WHILE;
		RETURN fib_new;	
	END IF;
END//

DELIMITER ;

-- Проверяем
SELECT fibonacci(1);
SELECT fibonacci(4);
SELECT fibonacci(7);
SELECT fibonacci(10);
