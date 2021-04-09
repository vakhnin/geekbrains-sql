/* Практическое задание #04. */

/* Задание # 2.
 * Используя сервис http://filldb.info или другой по вашему желанию, 
 * сгенерировать тестовые данные для всех таблиц, используя vk-data.sql, 
 * учитывая логику связей. 
 * Для всех таблиц, где это имеет смысл, создать не менее 100 строк. 
 * Для media_types создать ровно 4 строки. 
 * Загрузить тестовые данные. 
 * Приложить к отчёту полученный дамп с данными.
*/

/* 
 * Тестовые данные сгенерированны. Файл - fulldb.sql
 * Тестовые данные загруженны в БД. 
 */


/* Задание # 3.
 * Написать запрос для переименования названий типов медиа (колонка name в media_types), 
 * которые вы получили в пункте 3 в осмысленные (например, в "фото", "видео", ...)
 */


-- Меняем названия медиа
INSERT INTO media_types (id,name)  
    VALUES 
    (1, 'фото'),
    (2, 'видео'),
    (3, 'документ'),
    (4, 'таблица')
    AS new_names
    ON duplicate KEY 
    UPDATE name=new_names.name
    
 -- Проверяем изменения
 SELECT * FROM media_types mt ;

/* Задание # 4.
 * Написать название темы курсового проекта (в комментарии).
 */

/*
 * Для курсового проекта я выбрал создание БД сайта, похожего на Кинопоиск
 */


