/* Практическое задание #02. */

/* Задание # 2.
* Создайте базу данных example, разместите в ней таблицу users, 
* состоящую из двух столбцов, числового id и строкового name.
*/
-- создание базы данных example
CREATE DATABASE IF NOT EXISTS example;
-- выбираем БД для работы
USE example;
-- создание таблицы users
CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY, 
    name VARCHAR(100)
   );
-- наполнение таблицы users
INSERT IGNORE INTO users VALUES 
    (1, 'John'),
    (2, 'Harry');
-- проверяем заполнение БД
SELECT * FROM 	users;
