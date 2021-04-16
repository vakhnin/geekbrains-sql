/* Практическое задание #07 
 * "Сложные запросы". 
 */

USE hw7;

/* Задание # 1.
 * Составьте список пользователей users, 
 * которые осуществили хотя бы один заказ orders в интернет магазине.
*/

-- Решение с подзапросом
SELECT name FROM users 
WHERE id 
	IN (SELECT user_id FROM orders);


-- Решение с JOIN
SELECT name FROM users u 
	JOIN orders o ON u.id = o.user_id
	GROUP BY u.name 

/* Задание # 2.
 * Выведите список товаров products и разделов catalogs, который соответствует товару.
*/


-- Решение с подзапросом
SELECT 
	p.name, 
	(SELECT c.name FROM catalogs AS c WHERE p.catalog_id=c.id) AS catalog
FROM products AS p;

-- Решение с JOIN
SELECT p.name, c.name AS catalog 
FROM products p
	LEFT JOIN catalogs c ON p.catalog_id=c.id

/* Задание # 2.
 * (по желанию) Пусть имеется таблица рейсов flights (id, from, to) 
 * и таблица городов cities (label, name). 
 * Поля from, to и label содержат английские названия городов, поле name — русское. 
 * Выведите список рейсов flights с русскими названиями городов.
*/

-- Подготовка данных
DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
  `label` VARCHAR(255) COMMENT 'en',
  `name` VARCHAR(255) COMMENT 'ru'
) COMMENT = 'Список городов';

INSERT INTO cities VALUES
	('moscow', 'Москва'),
	('irkutsk', 'Иркутск'),
	('novgorod', 'Новгород'),
	('kazan', 'Казань'),
	('omsk', 'Омск');

DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
  id BIGINT UNSIGNED UNIQUE PRIMARY KEY AUTO_INCREMENT,
  `from` VARCHAR(255) COMMENT 'Откуда',
  `to` VARCHAR(255) COMMENT 'Куда'
) COMMENT = 'Расписание рейсов';

INSERT INTO flights VALUES
	(NULL, 'moscow', 'omsk'),
	(NULL, 'novgorod', 'kazan'),
	(NULL, 'irkutsk', 'moscow'),
	(NULL, 'omsk', 'irkutsk'),
	(NULL, 'moscow', 'kazan');

-- Выводим рейсы с русскими названиями
-- Решение с подзапросом
SELECT 
	id, 
	(SELECT name FROM cities WHERE label=flights.`from`) AS 'From',
	(SELECT name FROM cities WHERE label=flights.`to`) AS 'To'
FROM flights;

-- Решение с JOIN
SELECT f2.id, c2.name AS 'From', c3.name AS 'To' 
	FROM flights f2 
		JOIN cities c2 ON c2.label=f2.`from`
		JOIN cities c3 ON c3.label=f2.`to`	
	ORDER BY f2.id
	
