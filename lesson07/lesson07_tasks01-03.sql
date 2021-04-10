/* Практическое задание #07 
 * "Сложные запросы". 
 */

USE hw7;

/* Задание # 1.
 * Составьте список пользователей users, 
 * которые осуществили хотя бы один заказ orders в интернет магазине.
*/

SELECT name FROM users 
WHERE id 
	IN (SELECT user_id FROM orders);

/* Задание # 2.
 * Выведите список товаров products и разделов catalogs, который соответствует товару.
*/

SELECT 
	p.name, 
	(SELECT c.name FROM catalogs AS c WHERE p.catalog_id=c.id) 
FROM products AS p;

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
SELECT 
	id, 
	(SELECT name FROM cities WHERE label=flights.`from`) AS 'From',
	(SELECT name FROM cities WHERE label=flights.`to`) AS 'To'
FROM flights;
