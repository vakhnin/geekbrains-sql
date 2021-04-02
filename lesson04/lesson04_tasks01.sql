/* Практическое задание #04. */

/* Задание # 1.
 * Повторить все действия по доработке БД vk (скрипт в материалах к уроку, les-4.sql).
*/

/* 
 * Все действия в les-4.sql повторены
 * БД модифицированна
 * После модификации структура БД сохранена:
 * mysqldump vk --no-data > vk-empty.sql
 */

-- CHECK CONSTRAINTS
USE vk;

-- совершенствуем таблицу дружбы
-- добавляем ограничение, что отправитель запроса на дружбу 
-- не может быть одновременно и получателем
ALTER TABLE friend_requests 
ADD CONSTRAINT sender_not_reciever_check 
CHECK (from_user_id != to_user_id);

-- добавляем ограничение, что номер телефона должен состоять из 11
-- символов и только из цифр
ALTER TABLE users 
ADD CONSTRAINT phone_check
CHECK (REGEXP_LIKE(phone, '^[0-9]{11}$'));

-- делаем id photo пользователей уникальными
ALTER TABLE profiles MODIFY COLUMN photo_id BIGINT UNSIGNED DEFAULT NULL UNIQUE;

-- делаем foreign key на media
ALTER TABLE profiles 
ADD CONSTRAINT fk_profiles_media 
FOREIGN KEY (photo_id) REFERENCES media (id);
USE vk;



