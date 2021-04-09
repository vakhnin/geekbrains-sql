/* Практическое задание #06 
 * "Операторы, фильтрация, сортировка и ограничение. Агрегация данных". 
 */

/* Задание # 1.
 * Пусть задан некоторый пользователь.
 * Найдите человека, который больше всех общался с нашим пользователем, 
 * иначе, кто написал пользователю наибольшее число сообщений. 
 * (можете взять пользователя с любым id).
 * (по желанию: можете найти друга, с которым пользователь больше всего общался)
*/

USE hw6;

-- Пользователь, который написал больше всех сообщений пользователю с id = 1
SELECT 
	(SELECT
		concat(first_name, ' ', last_name)
	FROM
		users u
	WHERE
		id = from_user_id) AS top_writer_user
FROM messages m WHERE to_user_id = 1
GROUP BY from_user_id ORDER BY count(*) DESC LIMIT 1;

-- (по желанию) 
-- Пользователь, с которым больше всего общался (отправлял и получал сообщения) 
-- с пользователем с id = 1
SELECT
	(SELECT
		concat(first_name, ' ', last_name)
	FROM
		users
	WHERE
		id = uid) AS top_chat_user FROM (
SELECT from_user_id AS uid FROM messages m WHERE  to_user_id=1 
UNION ALL
SELECT to_user_id AS uid FROM messages m WHERE  from_user_id=1) 
AS t GROUP BY uid ORDER BY count(*) DESC LIMIT 1;

