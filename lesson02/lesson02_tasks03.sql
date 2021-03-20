/* Практическое задание #02. */

/* Задание # 3.
* Создайте дамп базы данных example из предыдущего задания, 
* разверните содержимое дампа в новую базу данных sample.
*/

/*
 * В командной строке создаем дамп БД example
 * в файл example.sql
mysqldump example > example.sql
*/

-- Создаем БД sample
CREATE DATABASE IF NOT EXISTS sample;

/*
 * В командной строке загружаем дамп из файла example.sql
 * в БД sample
mysql sample < example.sql
*/

-- Проверяем, как загрузился дамп
USE sample;
SELECT * FROM 	users;
