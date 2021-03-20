/* Практическое задание #02. */

/* Задание # 4.
* (по желанию) Ознакомьтесь более подробно с документацией утилиты mysqldump. 
* Создайте дамп единственной таблицы help_keyword базы данных mysql. 
* Причем добейтесь того, чтобы дамп содержал только первые 100 строк таблицы.
*/

/*
 * В командной строке создаем дамп таблицы help_keyword БД mysql
 * в файл help_keyword_first_100.sql
mysqldump --where="1 ORDER BY help_keyword_id LIMIT 100" mysql help_keyword > help_keyword_first_100.sql
*/
