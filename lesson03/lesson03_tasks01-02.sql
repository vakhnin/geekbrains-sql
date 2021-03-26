/* Практическое задание #03. */

/* Задание # 1. 
 * Проанализировать структуру БД vk с помощью скрипта, 
 * который мы создали на занятии (les-3.sql), 
 * и внести предложения по усовершенствованию (если такие идеи есть). 
 * Создайте у себя БД vk с помощью скрипта из материалов урока. 
 * Напишите пожалуйста, всё ли понятно по структуре.
*/

/* Структуру БД проанализировал
 * Предложений по усовершенствованию нет
 * Для себя добавил CREATE TABLE IF NOT EXISTS и INSERT IGNORE
 * По структуре все понятно 
 */
CREATE DATABASE IF NOT EXISTS vk;

-- используем БД vk
USE vk;

-- Создадим таблицу users.
CREATE TABLE IF NOT EXISTS users (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(145) NOT NULL, -- COMMENT "Имя",
  last_name VARCHAR(145) NOT NULL,
  email VARCHAR(145) NOT NULL,
  phone CHAR(11) NOT NULL,
  password_hash CHAR(65) DEFAULT NULL,
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP, -- NOW()
  UNIQUE INDEX email_unique_idx (email),
  UNIQUE INDEX phone_unique_idx (phone)
) ENGINE=InnoDB;

-- Заполним таблицу, добавим Петю и Васю
INSERT IGNORE INTO users VALUES (1, 'Petya', 'Petukhov', 'petya@mail.com', '89212223334', DEFAULT, DEFAULT);
INSERT IGNORE INTO users VALUES (2, 'Vasya', 'Vasilkov', 'vasya@mail.com', '89212023334', DEFAULT, DEFAULT);

-- Посмотрим на содержимое таблицы
SELECT * FROM users;

-- Создадим таблицу с профилем пользователя, чтобы не хранить все данные в таблице users
-- 1:1 связь
CREATE TABLE IF NOT EXISTS profiles (
  user_id BIGINT UNSIGNED NOT NULL PRIMARY KEY,
  gender ENUM('f', 'm', 'x') NOT NULL, -- CHAR(1)
  birthday DATE NOT NULL,
  photo_id INT UNSIGNED,
  user_status VARCHAR(30),
  city VARCHAR(130),
  country VARCHAR(130),
  CONSTRAINT fk_profiles_users FOREIGN KEY (user_id) REFERENCES users (id) -- ON DELETE CASCADE ON UPDATE CASCADE
);

-- Заполним таблицу, добавим профили для уже созданных Пети и Васи
INSERT IGNORE INTO profiles VALUES (1, 'm', '1997-12-01', NULL, NULL, 'Moscow', 'Russia'); -- профиль Пети
INSERT IGNORE INTO profiles VALUES (2, 'm', '1988-11-02', NULL, NULL, 'Moscow', 'Russia'); -- профиль Васи

SELECT * FROM profiles;

-- Создадим таблицу с сообщениями пользователей.
CREATE TABLE IF NOT EXISTS messages (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  from_user_id BIGINT UNSIGNED NOT NULL,
  to_user_id BIGINT UNSIGNED NOT NULL,
  txt TEXT NOT NULL, -- txt = ПРИВЕТ
  is_delivered BOOLEAN DEFAULT False,
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP, -- NOW()
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки",
  INDEX fk_messages_from_user_idx (from_user_id),
  INDEX fk_messages_to_user_idx (to_user_id),
  CONSTRAINT fk_messages_users_1 FOREIGN KEY (from_user_id) REFERENCES users (id),
  CONSTRAINT fk_messages_users_2 FOREIGN KEY (to_user_id) REFERENCES users (id)
);

-- Добавим два сообщения от Пети к Васе, одно сообщение от Васи к Пете
INSERT IGNORE INTO messages VALUES (1, 1, 2, 'Hi!', 1, DEFAULT, DEFAULT); -- сообщение от Пети к Васе номер 1
INSERT IGNORE INTO messages VALUES (2, 1, 2, 'Vasya!', 1, DEFAULT, DEFAULT); -- сообщение от Пети к Васе номер 2
INSERT IGNORE INTO messages VALUES (3, 2, 1, 'Hi, Petya', 1, DEFAULT, DEFAULT); -- сообщение от Пети к Васе номер 2

-- смотрим на сообщения
SELECT * FROM messages;

-- Создадим таблицу запросов в друзья.
CREATE TABLE IF NOT EXISTS friend_requests (
  from_user_id BIGINT UNSIGNED NOT NULL,
  to_user_id BIGINT UNSIGNED NOT NULL,
  accepted BOOLEAN DEFAULT False,
  PRIMARY KEY(from_user_id, to_user_id),
  INDEX fk_friend_requests_from_user_idx (from_user_id),
  INDEX fk_friend_requests_to_user_idx (to_user_id),
  CONSTRAINT fk_friend_requests_users_1 FOREIGN KEY (from_user_id) REFERENCES users (id),
  CONSTRAINT fk_friend_requests_users_2 FOREIGN KEY (to_user_id) REFERENCES users (id)
);

-- Добавим запрос на дружбу от Пети к Васе
INSERT IGNORE INTO friend_requests VALUES (1, 2, 1);

SELECT * FROM friend_requests;

-- Создадим таблицу сообществ.
CREATE TABLE IF NOT EXISTS communities (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(145) NOT NULL,
  description VARCHAR(245) DEFAULT NULL,
  admin_id BIGINT UNSIGNED NOT NULL,
  INDEX communities_users_admin_idx (admin_id),
  CONSTRAINT fk_communities_users FOREIGN KEY (admin_id) REFERENCES users (id)
) ENGINE=InnoDB;

-- Добавим сообщество с создателем Петей
INSERT IGNORE INTO communities VALUES (1, 'Number1', 'I am number one', 1);

SELECT * FROM communities;

-- Создадим таблицу для хранения информации обо всех участниках всех сообществ.
-- Таблица связи пользователей и сообществ
CREATE TABLE IF NOT EXISTS communities_users (
  community_id BIGINT UNSIGNED NOT NULL,
  user_id BIGINT UNSIGNED NOT NULL,
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP, 
  PRIMARY KEY (community_id, user_id),
  INDEX communities_users_comm_idx (community_id),
  INDEX communities_users_users_idx (user_id),
  CONSTRAINT fk_communities_users_comm FOREIGN KEY (community_id) REFERENCES communities (id),
  CONSTRAINT fk_communities_users_users FOREIGN KEY (user_id) REFERENCES users (id)
) ENGINE=InnoDB;

-- Добавим запись вида Вася участник сообщества Number 1
INSERT IGNORE INTO communities_users VALUES (1, 2, DEFAULT);

SELECT * FROM communities_users;

-- Создадим таблицу для хранения типов медиа файлов, каталог типов медифайлов.
CREATE TABLE IF NOT EXISTS media_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name varchar(45) NOT NULL UNIQUE -- изображение, музыка, документ
) ENGINE=InnoDB;

-- Добавим типы в каталог
INSERT IGNORE INTO media_types VALUES (1, 'изображение');
INSERT IGNORE INTO media_types VALUES (2, 'музыка');
INSERT IGNORE INTO media_types VALUES (3, 'документ');

SELECT * FROM media_types;

-- Создадим таблицу всех медиафайлов.
CREATE TABLE IF NOT EXISTS media (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, -- Картинка 1
  user_id BIGINT UNSIGNED NOT NULL,
  media_types_id INT UNSIGNED NOT NULL, -- фото
  file_name VARCHAR(245) DEFAULT NULL COMMENT '/files/folder/img.png',
  file_size BIGINT UNSIGNED,
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  INDEX media_media_types_idx (media_types_id),
  INDEX media_users_idx (user_id),
  CONSTRAINT fk_media_media_types FOREIGN KEY (media_types_id) REFERENCES media_types (id),
  CONSTRAINT fk_media_users FOREIGN KEY (user_id) REFERENCES users (id)
);

-- Добавим два изображения, которые добавил Петя
INSERT IGNORE INTO media VALUES (1, 1, 1, 'im.jpg', 100, DEFAULT);
INSERT IGNORE INTO media VALUES (2, 1, 1, 'im1.png', 78, DEFAULT);
-- Добавим документ, который добавил Вася
INSERT IGNORE INTO media VALUES (3, 2, 3, 'doc.docx', 1024, DEFAULT);

SELECT * FROM media;

/* Задание # 2. 
 * Придумать 2-3 таблицы для БД vk, которую мы создали на занятии 
 * (с перечнем полей, указанием индексов и внешних ключей). 
 * Прислать результат в виде скрипта *.sql.
 * 
 * Возможные таблицы:
 * a. Посты пользователя
 * b. Лайки на посты пользователей, лайки на медиафайлы
 * c. Черный список
 * d. Школы, университеты для профиля пользователя
 * e. Чаты (на несколько пользователей)
 * f. Посты в сообществе
*/

/*
 * Добавил таблицы постов, лайков постов, лайков медиа
 * Заполнил проверочными данными
 * Были проверены отказы добавления с неверными значениями внешних ключей
 */

-- Создадим таблицу постов
CREATE TABLE IF NOT EXISTS posts (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  text TEXT NOT NULL,
  user_id BIGINT UNSIGNED NOT NULL, -- чей пост
  media_id BIGINT UNSIGNED,  
  CONSTRAINT fk_posts_users FOREIGN KEY (user_id) REFERENCES users (id),
  CONSTRAINT fk_posts_media FOREIGN KEY (media_id) REFERENCES media (id)
) ENGINE=InnoDB;

-- Добавим пост, с медиа, от Пети
INSERT IGNORE INTO posts VALUES (1, 'See the picture!', 1, 2);

-- Добавим пост, без медиа, от Васи
INSERT IGNORE INTO posts VALUES (2, 'It\'s my first post', 2, NULL);

-- Посмотрим посты
SELECT * FROM posts;

-- Создадим таблицу лайков постов
CREATE TABLE IF NOT EXISTS posts_likes (
  user_id BIGINT UNSIGNED NOT NULL, -- кто лайкнул
  post_id BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (user_id, post_id), 
  CONSTRAINT fk_posts_likes_users FOREIGN KEY (user_id) REFERENCES users (id),
  CONSTRAINT fk_posts_likes_posts FOREIGN KEY (post_id) REFERENCES posts (id)
) ENGINE=InnoDB;

-- Добавим лайк поста Пети от Васи
INSERT IGNORE INTO posts_likes VALUES (2, 1);
-- Петя лайкнул свой пост
INSERT IGNORE INTO posts_likes VALUES (1, 1);

-- Посмотрим лайки постов
SELECT * FROM posts_likes;

-- Создадим таблицу лайков постов
CREATE TABLE IF NOT EXISTS media_likes (
  user_id BIGINT UNSIGNED NOT NULL, -- кто лайкнул
  media_id BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (user_id, media_id), 
  CONSTRAINT fk_media_likes_users FOREIGN KEY (user_id) REFERENCES users (id),
  CONSTRAINT fk_media_likes_media FOREIGN KEY (media_id) REFERENCES media (id)
) ENGINE=InnoDB;

-- Добавим лайк медиа Пети от Васи
INSERT IGNORE INTO media_likes VALUES (2, 2);
-- Петя лайкнул свое медиа
INSERT IGNORE INTO media_likes VALUES (1, 2);

-- Посмотрим лайки медиа
SELECT * FROM media_likes;
