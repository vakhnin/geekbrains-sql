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
SELECT (
	SELECT
		concat(first_name, ' ', last_name)
	FROM
		users
	WHERE
		id = uid) AS top_chat_user 
FROM (
	SELECT from_user_id AS uid FROM messages m WHERE  to_user_id=1
	UNION ALL
	SELECT to_user_id AS uid FROM messages m WHERE  from_user_id=1
	) AS t 
GROUP BY uid ORDER BY count(*) DESC LIMIT 1;

/* Задание # 2.
 * Подсчитать общее количество лайков на посты, которые получили пользователи младше 18 лет.
 */
SELECT count(*) FROM posts_likes 
WHERE post_id IN 
	(SELECT id FROM posts WHERE user_id IN 
		(SELECT user_id FROM profiles WHERE TIMESTAMPDIFF(YEAR, birthday , NOW()) < 18)) 
	AND like_type=1;


/* Задание # 3.
 * Определить, кто больше поставил лайков (всего) - мужчины или женщины?
 */	
SELECT  IF (
        SUM(CASE WHEN gender = 'm' THEN 1 ELSE 0 END)
        >  SUM(CASE WHEN gender = 'f' THEN 1 ELSE 0 END),
        'male did more likes',
        'female did more likes') AS who_did_more_likes
FROM    profiles, posts_likes WHERE profiles.user_id=posts_likes.user_id;

/* Задание # 4.
 *  (по желанию) Найти пользователя, 
 * который проявляет наименьшую активность в использовании социальной сети 
 * (тот, кто написал меньше всего сообщений, отправил меньше всего заявок в друзья, ...)
 */
SELECT (SELECT
		concat(first_name, ' ', last_name)
	FROM
		users u
	WHERE
		id = uid) AS less_active_user
FROM 
	(SELECT admin_id AS uid FROM communities
	UNION ALL
	SELECT user_id AS uid FROM communities_users
	UNION ALL
	SELECT from_user_id AS uid FROM friend_requests
	UNION ALL
	SELECT from_user_id AS uid FROM messages
	UNION ALL
	SELECT user_id AS uid FROM posts
	UNION ALL
	SELECT user_id AS uid FROM posts_likes) AS t
GROUP BY uid ORDER BY count(*) LIMIT 1;
