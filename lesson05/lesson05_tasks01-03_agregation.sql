/* Практическое задание #05 "Агрегация данных". */

/* Задание # 1.
 * Подсчитайте средний возраст пользователей в таблице users.
*/

USE hw5;

/* «Агрегация данных». Для задания 1. */
-- Подготавливаем БД для задания (из фала hw-5-data.sql)
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at datetime DEFAULT CURRENT_TIMESTAMP,
  updated_at datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Покупатели';

INSERT INTO
  users (name, birthday_at)
VALUES
  ('Геннадий', '1990-10-05'),
  ('Наталья', '1984-11-12'),
  ('Александр', '1985-05-20'),
  ('Сергей', '1988-02-14'),
  ('Иван', '1998-01-12'),
  ('Мария', '2006-08-29');
  
-- Выводим средний возраст пользователей
SELECT AVG(TIMESTAMPDIFF(YEAR, birthday_at, NOW())) AS average_age FROM users;


/* Задание # 2.
 * Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. 
 * Следует учесть, что необходимы дни недели текущего года, а не года рождения.
*/
 
-- Данные подготовлены в предыдущем задании

/*
 *  Выводим количество дней рождений пользователей,
 *  приходящихся на каждый день недели в текущем году
*/ 
SELECT
	count(*),
	DAYNAME(CONCAT(YEAR(now()), '-', DATE_FORMAT(birthday_at, '%m-%d'))) AS day_of_week
FROM
	users
GROUP BY
	day_of_week;

/* Задание # 3.
 * (по желанию) Подсчитайте произведение чисел в столбце таблицы.
*/

/* «Агрегация данных». Для задания 3. */
-- Подготавливаем БД для задания (из фала hw-5-data.sql)
CREATE TABLE x (id INT PRIMARY KEY);

INSERT INTO x VALUES (1), (2), (3), (4), (5);

-- Выводим произведение столбца id
SELECT round(EXP(sum(LN(id)))) AS mult FROM x;
