#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` char(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_hash` char(65) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_idx` (`email`),
  UNIQUE KEY `phone_idx` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('1', 'Rosa', 'Leuschke', 'dena.douglas@example.net', '+65(8)42943', 'a6c2cc69a2d8c482293c4c9ccba406854dbce9b2', '1981-07-10 23:19:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('2', 'Maci', 'Deckow', 'trantow.raleigh@example.net', '437.569.487', 'b9cd02d66e277af4216a38454b05aeb41bf99273', '1998-09-28 01:31:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('3', 'Enos', 'Spencer', 'fschneider@example.net', '558-164-557', 'df7ae706c08167735d2d942bd11c260d0fd2c291', '2003-08-15 18:27:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('4', 'Billie', 'Runolfsdottir', 'bartoletti.zita@example.net', '281.861.461', 'c10e326f9718d7955d8e362997913505ddb68289', '2013-02-19 15:53:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('5', 'Cortney', 'Klocko', 'jovanny.dickinson@example.com', '1-469-967-2', '3d4fda1bb8953f7a4d390d5e753816fda90dfdf6', '2018-08-07 16:18:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('6', 'Bell', 'Bogan', 'metz.blaze@example.net', '+22(5)61499', '63bd5903415b4579bec8c0c87a1aead55a6dd9ee', '1978-05-12 02:09:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('7', 'Ana', 'Turner', 'jacobs.cassidy@example.org', '217-999-785', '9c4cab2b849583b29f7fe99843efd196347b7074', '1997-12-29 18:22:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('8', 'Antonietta', 'Bogisich', 'mlangworth@example.com', '(293)825-33', '441c8b8ddd4099308da365c9580eb9bb1b31b5ef', '2015-07-18 20:06:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('9', 'Markus', 'Considine', 'nina72@example.org', '(048)807-94', '03500abe83a943b231282acd2ea1f4460666249e', '1986-10-11 11:18:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('10', 'Ardith', 'Wunsch', 'winona.flatley@example.com', '1-881-772-8', 'dd848c3032e2de59b81284d897a3369f9477e712', '1977-01-05 05:12:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('11', 'Sylvester', 'Adams', 'berniece18@example.net', '+60(9)97263', '9c443a94eefc0b011c57a0bd18c56fbc137fef64', '2009-05-18 14:28:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('12', 'Virgil', 'Corwin', 'isobel46@example.net', '+62(1)62828', '3faefff7a2cb9a0b22a52809840348a738986081', '2016-08-02 01:19:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('13', 'Laney', 'Jenkins', 'nolan.albina@example.net', '848-472-618', 'cf21df235bb090c08da1da435c4ae4d6cba527e7', '1974-01-06 00:31:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('14', 'Johanna', 'Gutmann', 'isporer@example.net', '1-587-177-6', '9c965bd25ac6f5d12b955e85f4bb75c100fbaf48', '1975-06-29 15:04:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('15', 'Alvena', 'Gleason', 'heidi.adams@example.org', '(429)278-87', '34354d0fda391d7903616942f764f4750c879175', '2009-09-14 16:55:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('16', 'Sheila', 'Feeney', 'sadie13@example.net', '313.025.622', '37e5fb284e87fdcd7f7e64b7c405d56848688f46', '1975-12-15 05:05:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('17', 'Bernadine', 'Harris', 'yfeeney@example.net', '255-109-653', 'f74e60af25d254a31776bb9dbab2a69b3057bc03', '1998-12-14 10:54:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('18', 'Jayden', 'Volkman', 'tiara96@example.net', '1-604-844-3', 'a68c1be10494eba96e55a7362ebed56be86b45c9', '2005-06-14 14:09:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('19', 'Felipe', 'Stokes', 'allie.franecki@example.net', '+08(8)61437', '6eff535f108f6cbfef5f7b0c2989f167c19e2f4c', '1981-07-07 13:51:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('20', 'Makayla', 'Cummings', 'abshire.alejandrin@example.com', '1-108-261-7', 'c7e0c9969a64a4e6ece57e38051bac48356afed0', '2019-07-04 04:38:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('21', 'Gerhard', 'McLaughlin', 'haag.fabian@example.com', '+98(8)24853', 'cbed476a2bc142ffe794b030c5da9d6b454da200', '1992-09-19 17:12:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('22', 'Reece', 'Cronin', 'xmarks@example.org', '(783)140-44', '938b0d5d2c7075adae563a3baa9030adcfc3628d', '1986-07-12 17:26:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('23', 'Marshall', 'Wolff', 'mosciski.angel@example.net', '519.365.524', 'a3f1713403719f4690dbcad4024166e628bccbe3', '1978-03-15 21:27:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('24', 'Sydni', 'Price', 'johnson.micah@example.net', '1-011-993-2', '8b9eeed33f8c14e8e84ef9f8165db88a393132ab', '2017-04-23 16:48:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('25', 'Ronny', 'Swaniawski', 'alysha26@example.net', '+38(9)82231', 'fcdf5fb387c8d90078451c82cfc93442c8a3328a', '1993-06-21 03:12:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('26', 'Asia', 'Walker', 'epagac@example.net', '979-980-755', 'e060d40085f9f58be1b3c28986656c0d58d0c716', '2007-09-21 03:38:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('27', 'Stacey', 'Turcotte', 'rachael07@example.com', '675.415.242', '8c1e8963e9989c8c93b175c44e3067227ce9237a', '2016-04-26 13:00:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('28', 'Prince', 'Kunde', 'noble.nader@example.com', '800-737-997', '5ac82a170c045cf1e416946cace571b9d9b407f6', '2015-04-29 07:52:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('29', 'Dasia', 'Stiedemann', 'meghan50@example.org', '(400)157-43', '473bf5dda69f309d0dcb127222f543255bf4e03c', '1983-07-15 07:03:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('30', 'Nichole', 'Cummerata', 'carter.monserrat@example.net', '+23(8)43868', '9b0984ece6710c7ab8de7c6f83e1d38592844673', '2017-08-24 05:27:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('31', 'Marquis', 'Flatley', 'heichmann@example.org', '996.983.974', '315daa251bb0ae38c3e538ab5a0f4b2c447c26a0', '2002-01-06 15:10:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('32', 'Trinity', 'Wilkinson', 'corkery.demarco@example.com', '820-695-192', 'db03354596b63ee3152450ce16c7e71a4629ab59', '2003-05-22 14:08:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('33', 'Lacey', 'Mertz', 'jones.norma@example.org', '469.929.616', '650a38141832ce430e7edc2f65bcfde96e7a7c5a', '1992-08-09 05:38:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('34', 'Albertha', 'Schulist', 'pascale.lemke@example.com', '01560045290', 'd58a6d10e8a2d0457475e9e507250662a21045fd', '1984-06-15 01:27:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('35', 'Gardner', 'Kozey', 'blick.darien@example.net', '1-775-322-9', '56e0475602b4a5e132ed98128cca08751ec31711', '2020-10-22 22:30:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('36', 'Delilah', 'Hayes', 'dickens.mandy@example.net', '(112)641-04', '324dd7b3ac7e584fb24852e7150636c6884a0f27', '2001-02-08 00:57:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('37', 'Joany', 'Moen', 'strosin.aaliyah@example.org', '449.003.885', 'ea9ccf5c9550099d92603aecbd330ef9b0dc64a2', '1972-01-12 22:14:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('38', 'Jensen', 'Kuhn', 'jeanne.mcdermott@example.net', '407-167-390', '3d9005366c9a01bcbdb7d0105baa9d382c04c22c', '2013-01-18 23:13:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('39', 'Lisette', 'Baumbach', 'mariano64@example.net', '(468)772-89', '38c7aefd8041210ccabe3c7194a51e6fa5c54725', '2001-09-14 09:12:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('40', 'Clovis', 'Stokes', 'mitchell.cathryn@example.org', '295-708-362', 'a826219b460cc3f7f5bdf864a9be52c5919230e8', '1980-08-18 18:07:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('41', 'Adah', 'Waelchi', 'hbins@example.org', '608.319.309', '7e0815811e74a79eecc4c7d70f0e352699c8eb58', '1995-04-28 02:38:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('42', 'Eric', 'Cormier', 'bruce16@example.org', '399.744.826', '6f64481b3bd01602f6f730e0e2ee68f0e431fb08', '2017-07-28 23:41:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('43', 'Rahul', 'Zulauf', 'broderick.schmeler@example.com', '877-161-736', '60e2829ab837145b9a69117d50bd20e55b6e12ec', '1979-07-04 01:13:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('44', 'Juvenal', 'Leuschke', 'anastacio.rice@example.com', '(538)283-08', 'a04f27b045f53ca0b73aa84f500aca2b1a1e3f29', '2018-07-14 18:38:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('45', 'Johathan', 'Kihn', 'kstark@example.net', '+12(4)83043', '0e4365ed4514a1ca974d44a7a46d413f9340294c', '1985-08-25 09:27:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('46', 'Fiona', 'Shanahan', 'kirlin.royal@example.org', '(642)845-71', '89be6b0597733410674c6758d195aef48ec7721c', '2000-12-15 02:28:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('47', 'Emery', 'Bartell', 'ankunding.hans@example.net', '(140)933-23', '64d00522a717eb4b4c6b9bd9d812efcb3d46581d', '2006-03-27 08:23:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('48', 'Eudora', 'Schoen', 'rachael82@example.org', '865-581-675', '2bd7e3344a7d9a78d464fd57fe0ed3876470e8f2', '2004-08-06 02:25:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('49', 'Jack', 'Wiza', 'rosemary31@example.com', '897-241-330', '3090ef4d6a3b00f252c4d8a75422301929a8f0a1', '2009-03-20 14:38:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('50', 'Sheldon', 'Brakus', 'ivy43@example.com', '254-085-379', '750bfe1b7663b2f24b3e34f2f00eea086e72e3a6', '1994-07-31 14:13:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('51', 'Ines', 'Pfeffer', 'zboncak.earline@example.org', '+13(4)07207', '936c8afd4cba0b6f0b370b3474094c6df0d1116b', '1987-07-29 01:48:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('52', 'Trenton', 'Rosenbaum', 'jakubowski.lennie@example.net', '030.461.808', '201be054eb9254d6a7e8168d9d02e8cf0e3eb1f3', '2002-10-11 09:21:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('53', 'Amira', 'Crooks', 'louie.cronin@example.com', '1-049-636-9', 'bc94b780a88fbbb72e8b544d9ff0da93daec1295', '1990-01-19 14:58:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('54', 'Marcellus', 'Ward', 'yfunk@example.net', '(340)415-94', 'c9d1d2935bf2ba3594c403e66867c45b398c7bdd', '1988-12-17 18:44:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('55', 'Dayne', 'Tromp', 'leora.shields@example.org', '088-764-609', '4f94b63a485290dc41dbb6e044c5d79ebe00bbff', '1974-12-12 03:59:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('56', 'Yasmine', 'Littel', 'tkshlerin@example.org', '1-906-512-7', '0d659be16258675a150e8ad3de528c96a38d8117', '2001-02-17 15:18:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('57', 'Horacio', 'Ondricka', 'mhauck@example.com', '+91(3)53762', 'fff624c0731d975b5e49dc263ab1c3784fb6a78c', '1975-02-06 00:52:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('58', 'Casimer', 'Mohr', 'rau.amir@example.net', '05562728814', '5c94589f5c6c434a6f0df1110e3825a20d889bcd', '1970-02-15 09:41:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('59', 'Juliana', 'Langosh', 'tbecker@example.com', '(418)088-87', '57a409808c4a507599af88986969a6f1d95a9e43', '1983-07-21 07:44:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('60', 'Marianna', 'Mayer', 'myrl.murray@example.com', '556-999-824', '5270a80abbefd4d784ca53724d6e6460964b2f30', '1999-10-15 20:46:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('61', 'Jermaine', 'VonRueden', 'dmedhurst@example.com', '886-455-633', '508c6158efc2b048f91facf6975c340a079e2df5', '1991-07-17 08:15:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('62', 'Rosella', 'Labadie', 'rene.mcclure@example.org', '1-872-869-9', '24f34e1af8e4b263a679ceafc8570e843c137037', '1995-03-13 23:45:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('63', 'Emmanuel', 'Hilll', 'pbode@example.org', '04999631917', 'fa4314d0545e6020ec6e63888222d39b2cc90e5a', '2019-06-04 14:42:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('64', 'Viola', 'Leffler', 'webster.labadie@example.org', '1-515-355-9', 'd5f739392a2044897737bd372700f48b36e22cc7', '2020-09-08 06:13:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('65', 'Melissa', 'Howe', 'bhessel@example.com', '(065)720-63', 'f0d1f339958ad81e5db1fc4dca848013afe72a55', '1996-11-18 03:52:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('66', 'Gabriel', 'Wunsch', 'bernier.maye@example.org', '626-679-324', '44b0b306a9144dd59a2ab0b335e7d1fc53d28f0a', '2004-10-01 10:38:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('67', 'Sigrid', 'O\'Hara', 'kris.dannie@example.org', '766-437-543', '31b726e591ad6e574a6803f72be4d1ba460a0c06', '1998-09-16 18:41:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('68', 'Ora', 'Mosciski', 'zpagac@example.org', '676-278-144', '81d43ef20bb7b270ace78f754954def2e470576a', '1993-05-04 01:56:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('69', 'Elmo', 'Bernhard', 'xarmstrong@example.com', '006.039.570', 'fc87271009610073466abd3b15ec5f0f7b2d2b6f', '1983-04-03 04:37:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('70', 'Braden', 'Kerluke', 'hollis.swaniawski@example.com', '279.420.582', '606b66c9d2535af4c8214fbfbee4bd4de528f91c', '1988-08-01 19:06:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('71', 'Torey', 'Streich', 'friesen.cierra@example.net', '(976)858-24', '1ab2ca7f12568704ab9d06e24ceb43ae183d2c58', '2009-04-24 17:53:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('72', 'Bernhard', 'Reilly', 'chaz.hintz@example.org', '+58(0)07539', 'ddd63a82c2aa262e8da95de43efe81d0390ce12c', '2013-11-15 16:16:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('73', 'Anjali', 'Upton', 'rward@example.net', '552-519-270', '653c4468b913ec4085da4c326c9157d59782b16e', '2016-03-19 18:45:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('74', 'Paige', 'Nicolas', 'jacobi.dana@example.net', '135.583.643', '3fc3e74b926ea60879a5682cbbbe2fe106b672e6', '2008-08-20 14:33:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('75', 'Brigitte', 'Mertz', 'qstehr@example.com', '+44(1)53581', '400c3a69845a44a51113c186f4ba74c675b05720', '1982-11-03 01:29:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('76', 'Lorenzo', 'Rolfson', 'enos47@example.org', '09080575222', 'a2ede6f66aaa708cb7650bf1e70c9f78afbe0e7b', '2018-03-20 13:53:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('77', 'Miller', 'Pagac', 'schoen.ethelyn@example.com', '535.043.358', 'd595e7df866aa46180e7fe300997a08eb5e2e2cb', '2014-10-01 02:44:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('78', 'Modesto', 'Deckow', 'leonie.schulist@example.com', '226.387.226', '56312b2376d623fc6da37565f6b0f958670df2a1', '1982-03-02 16:56:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('79', 'Hailee', 'Lubowitz', 'rory.muller@example.org', '(463)475-00', 'ad340f664aa6e7990bfeaf3955df33b16093ccfe', '1983-04-16 07:52:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('80', 'Minerva', 'Trantow', 'bwest@example.com', '+80(1)81764', 'f47f94a86322e5370012d9a9e4e352d2598c1e61', '1972-06-07 22:10:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('81', 'Janick', 'Collier', 'uparisian@example.com', '860-334-297', '6ab5f97b7dfbe1c808b4e820e06f563a65676842', '1990-04-07 14:53:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('82', 'Annabell', 'Dickinson', 'erwin.wilderman@example.org', '(494)834-11', 'c99abc11cc7376f92c0d61c75fc659c1aa8345ef', '2002-12-20 06:49:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('83', 'Melissa', 'Schiller', 'adan.bartell@example.net', '06809775714', '67d805d1451d52b4fe2deebc777bec0aa537734f', '1985-04-02 11:23:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('84', 'Sabryna', 'Skiles', 'lmcdermott@example.org', '659-525-341', 'a356a69a70a0b8efdfe1186e88e1d88498946940', '2007-10-07 15:07:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('85', 'Lilliana', 'Langosh', 'jwolf@example.com', '+00(7)33656', '3e747be58471ae804725520a8ad5a76ac0619d95', '1981-10-10 19:47:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('86', 'Clara', 'Boyle', 'lempi38@example.net', '1-687-478-7', '51048682301331fd047d8b38eef59219be089a16', '2010-09-07 01:53:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('87', 'Lazaro', 'Considine', 'mccullough.doyle@example.org', '1-897-560-7', '61d0803c368f50f36d76f9652b86052e592f2cfc', '1994-12-08 05:23:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('88', 'Rosalee', 'Ruecker', 'cassidy33@example.com', '221.974.176', '9577bc13d60b3c26eb55b816f0cbda0bc0ee115d', '1999-01-11 18:51:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('89', 'Rachelle', 'Morissette', 'sanford.corbin@example.net', '461.197.436', 'a71f0b1df8338db6cf40a61523cdb192e57ad813', '1984-08-01 06:21:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('90', 'Samanta', 'Quigley', 'assunta.stehr@example.net', '(911)666-41', 'b7afc2d9d241e9828eb7ccf9a348c6f9702da90a', '2015-06-22 01:23:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('91', 'Leanna', 'Schaefer', 'purdy.aubree@example.net', '102-613-891', '624fde483027469183a0f4f95df3d525e19de39b', '2018-12-08 22:46:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('92', 'Elisha', 'Sauer', 'ccartwright@example.com', '006-252-355', '7f21f3460d701d9c77972b191b9b1ef80f70b0fd', '2006-06-09 21:05:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('93', 'Citlalli', 'Russel', 'larson.german@example.net', '(706)154-52', '52639f561fc9fd17bf487559c1e7059e9a7b7c2f', '2001-12-19 23:36:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('94', 'Juana', 'Dibbert', 'fae.stroman@example.com', '927.368.129', 'b3e755353fe0fb4b6bee81912bfae1e4b2f57fff', '2016-06-21 07:25:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('95', 'Tara', 'Bergnaum', 'russell.beer@example.org', '028-870-538', '1ec29e4491a120e4c0613d266c1e3e6bec1ae10e', '1980-04-04 13:08:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('96', 'Celine', 'Skiles', 'mohammad.steuber@example.org', '1-391-627-3', 'f14765326a60bec20a7e6037944b6d5b750a4608', '2013-03-07 04:05:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('97', 'Kayden', 'Bahringer', 'patience23@example.net', '(057)471-11', '63116a0a0fa2349a00dbefcfa632927eb24ec5b3', '1971-06-09 10:00:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('98', 'Nils', 'Reichert', 'ilynch@example.net', '077-793-587', '809060751d112eb3ab87bee43a1d506de703baa0', '2001-09-23 23:49:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('99', 'Aubree', 'Ullrich', 'golden.pagac@example.com', '05047322815', 'bfbcb96e6910adaf758556991d75fe4eeb7e91a0', '2017-05-13 10:12:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('100', 'Walter', 'Johnston', 'shaylee00@example.org', '(936)592-48', '164025a6bf1b3d066b7a3a4b1f4f972db0ed87fd', '1991-03-18 06:55:39');

#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media_types` (`id`, `name`) VALUES (1, 'dicta');
INSERT INTO `media_types` (`id`, `name`) VALUES (2, 'nisi');
INSERT INTO `media_types` (`id`, `name`) VALUES (4, 'similique');
INSERT INTO `media_types` (`id`, `name`) VALUES (3, 'sint');

#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(245) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_communities_users_admin_idx` (`admin_id`),
  CONSTRAINT `fk_communities_users` FOREIGN KEY (`admin_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('1', 'libero', 'Vel aut laborum dolores amet enim consequatur. Saepe officiis repudiandae cupiditate blanditiis. Maxime dolores corrupti commodi. Sint adipisci dolorem ullam itaque. Quia et repudiandae nisi.', '1');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('2', 'iusto', 'Repellat repellendus aut qui sed deserunt hic numquam. Sequi ab sit minus sunt omnis natus aut. Tenetur quisquam mollitia non ut. Quaerat ex nihil dolorum voluptatem sed.', '2');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('3', 'aut', 'Impedit voluptatem quia dolorum sunt. Qui quod perferendis quia tempora. Labore repellat et consequatur soluta impedit.', '3');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('4', 'voluptatem', 'Omnis soluta fuga magni. Dolorem beatae perspiciatis veritatis non. Suscipit ipsam est incidunt. Aut laboriosam sunt laudantium qui iure culpa.', '4');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('5', 'minus', 'Nihil qui qui harum libero necessitatibus sed dolor. Et quo consequatur eius dolor. Temporibus aperiam soluta suscipit nihil aut.', '5');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('6', 'iusto', 'Cupiditate ipsum consequatur aliquam aut consectetur accusamus. Corrupti sit qui rerum et accusantium.', '6');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('7', 'explicabo', 'In et quis temporibus dolore facilis. Atque accusamus error adipisci corporis dignissimos dignissimos. Hic pariatur placeat laborum quae.', '7');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('8', 'iusto', 'Exercitationem facere incidunt in architecto sit molestiae rerum nam. Delectus laudantium eum repellat error minima illum sunt.', '8');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('9', 'quibusdam', 'Natus quisquam sint quos itaque. Magni omnis aut laborum fuga vel porro. Quis assumenda nulla officiis aperiam quidem. Quis et voluptates voluptatem qui fuga.', '9');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('10', 'distinctio', 'Expedita aspernatur consequatur qui. Qui repudiandae eos et itaque. Est nostrum deleniti est eveniet odit minima quo.', '10');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('11', 'qui', 'Nesciunt quo laborum maxime praesentium qui quam. Aut beatae fugit sint amet soluta et. Dolorem blanditiis ducimus aut officia cum veniam. Asperiores non amet maxime nisi fugit quas.', '11');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('12', 'necessitatibus', 'Quod dolor vitae possimus facilis rem. Doloribus ipsam vitae voluptatem incidunt ipsa ullam harum non.', '12');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('13', 'rem', 'Sit occaecati sunt distinctio et. Dolorem delectus aspernatur repudiandae asperiores. Rerum amet soluta error nemo qui. Rem atque et quo aliquid fugiat et nam ut.', '13');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('14', 'delectus', 'Debitis ea exercitationem illo omnis aut. Veniam est maiores aut ea assumenda. Aut accusamus saepe sed reiciendis expedita. Voluptas magnam adipisci mollitia aut fuga.', '14');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('15', 'suscipit', 'Et ex consequatur non ut cum. Culpa ut accusamus necessitatibus inventore delectus. Magni et in modi animi esse omnis neque. Non consequatur quia placeat eius.', '15');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('16', 'velit', 'Perspiciatis ullam eaque architecto provident quo saepe nesciunt. Sed nesciunt doloribus consequatur quae placeat eligendi. Quod necessitatibus facilis deserunt sit ut beatae quam.', '16');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('17', 'ipsam', 'Possimus totam accusantium nam officiis. Voluptatem voluptas rerum dolores quo impedit debitis et. Occaecati qui ut unde sapiente impedit non.', '17');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('18', 'unde', 'Eveniet nostrum quisquam odio nobis adipisci. Autem voluptatum optio ullam cumque aut et. Delectus consequatur amet est autem amet aliquam ullam. Nam et eaque beatae animi rerum porro.', '18');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('19', 'accusantium', 'Perspiciatis porro natus facilis sint optio quae incidunt. Commodi voluptatum at est facilis nihil ut laboriosam. Nostrum ut nobis non dolorem. Quam veniam sit mollitia sed blanditiis quia in est.', '19');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('20', 'harum', 'Est ad pariatur odio quo cum sapiente assumenda debitis. Ea fugit qui nihil cum molestiae. Qui eligendi ut aliquam.', '20');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('21', 'eos', 'Reprehenderit praesentium voluptate voluptates quia voluptatem fugit dicta. Iure ipsa totam consequuntur. Molestias sunt nisi deleniti et facere est. Tempora voluptatem atque neque ab reprehenderit libero.', '21');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('22', 'reprehenderit', 'Quisquam reprehenderit incidunt qui at. Debitis sed quos dignissimos non. Consequatur dolorem quia provident aut rerum distinctio. Qui ea voluptas illo similique quae iusto vitae.', '22');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('23', 'harum', 'Dolorem tempore ipsa et ullam omnis aliquid voluptates. Repellendus hic voluptatibus velit similique voluptas quaerat. Quas corporis repellat rem deserunt natus.', '23');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('24', 'error', 'Amet laudantium molestias molestiae repellendus nisi blanditiis in. Doloribus dolores nam voluptas. Ut harum nisi molestias quisquam aut. Tempora corrupti soluta porro.', '24');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('25', 'placeat', 'Voluptatem aut hic sed. Enim qui animi debitis adipisci tempore et quo. Sunt aliquam quia possimus nesciunt illum debitis autem. Vitae quasi ab cumque aut vel.', '25');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('26', 'sapiente', 'Qui debitis consectetur sed sequi aut incidunt voluptas. Id consequatur totam non est rerum. Pariatur rem laborum ratione accusantium iusto.', '26');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('27', 'nihil', 'Saepe ut ut doloremque quam a. In animi repudiandae est voluptatibus consequatur repellendus. Unde rerum tempora hic autem. Aut et commodi qui ut vero voluptas repellat.', '27');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('28', 'ut', 'Labore qui qui sapiente voluptas consectetur debitis. Dolorum voluptates qui beatae repellat. Quod distinctio iure blanditiis ut. Pariatur iure optio ullam fugiat atque.', '28');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('29', 'tempora', 'Ullam qui quae doloribus et eos provident. Quis consequuntur soluta ut consequatur. Repellat unde dolorem explicabo ut sit doloremque voluptate est.', '29');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('30', 'quos', 'Qui est at nihil natus ipsum est accusamus. Est qui velit est dolorem maxime. Culpa ut voluptas vel tenetur atque. Laboriosam rerum et debitis qui repudiandae nihil dolores.', '30');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('31', 'consequuntur', 'Natus ab nisi autem hic velit aut. Aspernatur rerum et necessitatibus in nostrum assumenda optio. Labore non deleniti eos recusandae aut ut. Aut eaque dolorem esse quam.', '31');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('32', 'ipsa', 'Maxime ex molestiae itaque non ipsa in. Unde vero nobis consectetur vel et.', '32');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('33', 'qui', 'Nobis dolorem dolor nihil vitae. Alias incidunt eos maxime quod eum. Ad voluptas ducimus beatae. Consequatur cum et laboriosam eius dignissimos reiciendis unde.', '33');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('34', 'id', 'Qui et est quas neque recusandae. Voluptatem pariatur ut voluptatem est quis autem eius id. Praesentium consequuntur quia laudantium modi aliquam dicta sunt. Reiciendis tempore et aut illo voluptates qui aspernatur.', '34');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('35', 'sequi', 'Doloribus porro officia beatae aperiam. Error eos incidunt nisi omnis sapiente autem. Veritatis similique quasi tenetur. Mollitia ab commodi fugiat perspiciatis et. Aliquam qui omnis id at sapiente error.', '35');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('36', 'molestias', 'Qui quaerat eligendi cupiditate assumenda minima et incidunt. Fuga ut consequatur delectus omnis cum quis. Vel ut aut perferendis reiciendis aut ex.', '36');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('37', 'sint', 'Pariatur labore et quis in ipsam nulla. Quam et cumque quis fugiat et necessitatibus officia. Quo aspernatur natus a. Esse facilis voluptatem sint officiis dolorem vero.', '37');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('38', 'qui', 'Illum sunt et omnis consequuntur non voluptas. Sunt architecto veniam temporibus ab dolorum sed. Deleniti quis ut explicabo provident eaque aspernatur.', '38');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('39', 'sunt', 'Nobis numquam rem sit eos laboriosam. Perspiciatis facere voluptatum at tempore minus enim sed. Vitae magni impedit illo voluptates repudiandae sit ipsa facilis.', '39');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('40', 'rerum', 'In est accusantium alias aut omnis ut. Consequatur eum non eos. Tenetur sequi in pariatur exercitationem commodi blanditiis temporibus veniam.', '40');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('41', 'aut', 'Expedita sunt et dolore corporis quis numquam. Sunt quae qui et nemo omnis labore rerum necessitatibus. In placeat impedit est delectus sint rem. Quo deserunt et aliquam qui dolorem beatae consequuntur expedita.', '41');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('42', 'dolorem', 'Dolores occaecati consequatur suscipit autem. Neque qui consequatur ut. Eaque non soluta error magnam voluptatem ea ipsa.', '42');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('43', 'reiciendis', 'Autem temporibus suscipit harum voluptatibus sapiente earum quis. Nesciunt aut rerum in et at qui. Cupiditate id est quas tenetur.', '43');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('44', 'autem', 'Ea enim harum sunt. Enim deleniti sit est sed. Aspernatur animi et sapiente veniam voluptas.', '44');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('45', 'ut', 'Ut voluptatem enim natus ut debitis cum. Et magnam quia veritatis est. Laborum atque voluptas exercitationem iste et.', '45');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('46', 'autem', 'Praesentium et omnis ea molestiae. Cum exercitationem natus quis voluptatem autem. Voluptatem vel iusto itaque voluptatem ut omnis.', '46');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('47', 'expedita', 'Et repudiandae nam dicta perspiciatis. Eius perspiciatis eos et maxime qui maxime necessitatibus. Blanditiis quidem cupiditate ut hic quis voluptas. Dolorum repellendus sint omnis culpa voluptatem.', '47');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('48', 'harum', 'Consequatur sunt quidem maxime natus temporibus ex aperiam. Est quaerat quaerat iure fugit quia. Aut harum saepe placeat ipsa accusantium tenetur expedita quibusdam.', '48');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('49', 'dicta', 'Illo iste molestias magnam aut. Iste veniam quo quia aut eos alias ipsam. Facere dolorum delectus voluptate blanditiis quae ab et.', '49');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('50', 'tempore', 'Facere alias voluptatum aut voluptatum quam natus. Voluptatibus molestiae sit enim aut et ea nemo est.', '50');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('51', 'id', 'Rerum eum labore quia voluptas dolorem. Alias officiis illum perspiciatis eos. Eaque repudiandae placeat distinctio non non quo voluptas.', '51');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('52', 'ea', 'Harum ipsum magni cumque natus molestiae. Quia et enim laudantium unde adipisci provident. Natus expedita accusantium aliquam. Necessitatibus eum est ab dolor voluptatem nobis corporis.', '52');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('53', 'impedit', 'Aut aut pariatur aliquid laborum debitis atque. Rem cupiditate ut ut omnis aliquid expedita. Et error architecto vel ratione ut ut consectetur odio. Dicta molestias est nesciunt consequatur et nulla.', '53');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('54', 'nihil', 'Ut et voluptates neque vel sunt earum saepe quis. Explicabo vel adipisci iure vel excepturi et. Officiis ut ex quos unde quas reprehenderit. Distinctio soluta magni vero modi dolorem consequatur dolorum repudiandae.', '54');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('55', 'porro', 'Molestiae et eius voluptatum sed delectus ab officia. Vel aperiam maxime voluptates. Libero perferendis sit est distinctio quasi. Totam non eos eligendi non dolores maxime.', '55');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('56', 'est', 'Error vel distinctio quia. Est quos cum debitis id. Dolorum voluptatem nesciunt est sint quas omnis sit.', '56');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('57', 'tenetur', 'Sint quae blanditiis quam. Aut voluptate eius eius accusamus exercitationem. Aliquid excepturi placeat repellendus sapiente laudantium unde doloremque. Aperiam eveniet sunt ipsa reiciendis.', '57');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('58', 'voluptatibus', 'Quidem et vitae soluta. Magnam ut dolore molestiae ut ut labore. Aut non distinctio qui quia ut explicabo et. Quos minus dolor quasi autem.', '58');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('59', 'et', 'Fuga eveniet vel ut sed. Eum perspiciatis voluptatum dicta. Veritatis animi ex enim in et voluptatem. Culpa sit repudiandae labore consequatur eum libero accusamus.', '59');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('60', 'sint', 'Ab et impedit expedita deserunt optio sint iste nesciunt. Ea beatae provident dolores enim voluptatem.', '60');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('61', 'quia', 'Deleniti beatae ab laboriosam et. Velit et consequatur in fuga maiores laborum et. Et consequuntur aut sequi laboriosam excepturi. Dolorem quia voluptatibus fugiat dolor.', '61');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('62', 'nihil', 'Harum exercitationem omnis ut suscipit. Architecto atque voluptate dignissimos eum et sed. Et aspernatur enim similique minus.', '62');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('63', 'optio', 'Saepe itaque et aliquam cum eaque quas. Eius eius qui voluptas autem nesciunt accusamus. Accusamus consequatur voluptate distinctio quos iure nostrum voluptatem.', '63');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('64', 'accusamus', 'Sequi sint amet doloremque voluptate ipsa. Delectus et totam sed officia ea ut. Et numquam sequi eos quidem facere. Sit numquam quisquam voluptate id beatae.', '64');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('65', 'hic', 'Iusto nam voluptatibus distinctio qui. Explicabo voluptas dolores perspiciatis. Sed magnam consectetur autem totam.', '65');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('66', 'recusandae', 'Sint fuga assumenda odit cum sint. Velit qui exercitationem rerum odio dicta aspernatur. Et velit at est dignissimos.', '66');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('67', 'veritatis', 'Autem porro atque enim aut accusantium tempore dolorum. Voluptas qui commodi quae expedita eum ea eveniet.', '67');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('68', 'neque', 'Eum numquam iste et nihil maiores explicabo placeat. Magnam dolores eos at quam. Omnis praesentium maiores veniam voluptatem.', '68');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('69', 'nam', 'Similique nihil officiis ut quis culpa tempore. In rerum autem dolores et aut officiis vero. Omnis ipsam nemo velit sequi qui.', '69');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('70', 'repellat', 'Est magnam error eum minima sapiente beatae laudantium. Et cum eaque repudiandae deleniti et rerum nisi. Quia beatae nesciunt illo est.', '70');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('71', 'perferendis', 'Illum ut ut dolore laboriosam necessitatibus. Ut aut beatae laborum quo ea voluptatem dicta quia. Et ut inventore neque qui.', '71');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('72', 'cumque', 'Ea non neque veniam laudantium tempore. Voluptatem nihil unde aut pariatur et magnam doloremque. Sint in repellendus tempora est qui accusamus. At ea deleniti sint enim consequatur.', '72');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('73', 'dolor', 'Veniam dolorum distinctio voluptates. Tenetur culpa repudiandae in odit assumenda cupiditate illum. Facilis porro soluta sint et laborum consequuntur in. Fugit et ducimus qui illo ipsam.', '73');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('74', 'suscipit', 'A ea et nostrum nihil est. Sint unde assumenda error ipsum sint qui. Voluptatem illum aut accusantium quos quas non. Aut aut veniam commodi quasi eum repellat porro est.', '74');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('75', 'eligendi', 'Explicabo numquam omnis ut at velit voluptas omnis non. Quis esse pariatur ad facere ea illo. Illum a laboriosam et vel expedita.', '75');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('76', 'excepturi', 'Beatae tempore doloremque rem amet modi aut animi. Adipisci eius ea autem. Sunt recusandae dolorem eligendi quis. Quasi itaque omnis voluptatem labore culpa.', '76');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('77', 'non', 'Sit voluptas rerum saepe deserunt asperiores magnam atque quasi. Velit quia voluptates magni nesciunt. Delectus sint aut consequatur vitae cupiditate error. In itaque voluptas consequatur tenetur similique nesciunt.', '77');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('78', 'voluptatem', 'Quis aut et et eligendi illo magni. Qui assumenda facere maxime iste quae odit. Qui accusamus tenetur ut et magni.', '78');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('79', 'accusantium', 'Necessitatibus voluptatem voluptatem rerum laboriosam. Tempore natus nesciunt voluptates molestiae porro deleniti. Exercitationem quos dicta tempora autem ad reiciendis vel vel. Soluta sit sapiente dolorem sed molestias est.', '79');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('80', 'consequatur', 'Dolores quia neque qui minus nostrum perspiciatis. Molestias ullam nostrum cum quae dignissimos aut tempore vitae. Omnis nam ut dolorem quam at. Enim sit suscipit nulla sit. Architecto odit suscipit ut aut qui voluptatum.', '80');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('81', 'cum', 'Aspernatur culpa laudantium ex optio quae delectus. Expedita rerum quis cupiditate deserunt qui nulla. At possimus sed soluta soluta eos quos. Fugit ut dolorem esse aperiam in quaerat.', '81');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('82', 'facere', 'Occaecati error dolores ipsam. Qui mollitia est asperiores animi cumque. Voluptate aliquam neque architecto consequatur. Quam consequatur nihil ab itaque quo perspiciatis amet voluptas.', '82');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('83', 'accusamus', 'Vel aperiam dolorem autem est est tempora illo. Similique culpa et consequatur et dolorem. Facere dicta eum numquam quia repellendus doloribus a nulla.', '83');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('84', 'eaque', 'Molestias autem ad consequatur voluptates et recusandae sint ut. Earum culpa vitae vel. Qui et modi aut reiciendis quaerat. Vitae pariatur natus accusamus non. Quisquam aut soluta ad rerum occaecati explicabo laboriosam dolorum.', '84');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('85', 'commodi', 'Omnis harum fugit quia veniam. Totam odit saepe laboriosam aut expedita. Est quis voluptates itaque quia laboriosam et neque aut. Aperiam id minus minus qui consectetur.', '85');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('86', 'voluptate', 'Expedita sit laborum odio qui magnam nobis velit. Eos vitae ad non temporibus. Vero est accusamus iure et omnis voluptate recusandae.', '86');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('87', 'numquam', 'Voluptas officiis aliquam eligendi quos magni soluta. Quia aspernatur dolor quia voluptas commodi voluptate rerum eius. Ea expedita rerum velit non ea eum. Vel impedit nihil itaque ad sit repudiandae fuga.', '87');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('88', 'adipisci', 'Omnis assumenda corrupti quia. Voluptates nobis alias et consequatur est rerum. Temporibus modi accusamus dolores et. Autem voluptatibus dolores eius quam aliquid nihil asperiores.', '88');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('89', 'quibusdam', 'Voluptates et culpa eos recusandae voluptates ut et. Perferendis non eum ad debitis nihil quasi reiciendis. Eum aut qui praesentium vel provident quo officiis. Dolorum et minima impedit quas fuga soluta qui.', '89');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('90', 'ut', 'Officia sit sapiente aut dolorem. Sunt pariatur possimus aliquid magni et. Nulla alias ipsum perferendis quia nam voluptatem non aperiam.', '90');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('91', 'quis', 'Explicabo sed dolorum sed dignissimos sunt deserunt. Nesciunt maiores laudantium qui accusamus placeat accusamus.', '91');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('92', 'eos', 'Quisquam magni earum rerum consequatur magnam quod. Exercitationem officia sequi animi error ut. Cumque molestiae ullam deserunt esse accusamus accusamus in magnam. Hic distinctio odit ab officia molestiae.', '92');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('93', 'ducimus', 'Eligendi qui id voluptatem est labore in. Dolorem ut consequatur culpa. Rerum qui veniam iusto vel itaque et accusantium. Eos dolor dignissimos et cupiditate non non.', '93');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('94', 'sed', 'Consequuntur eveniet necessitatibus minus et necessitatibus ea quis. Quasi reprehenderit nobis et ut animi. Ex non natus possimus natus. Natus qui voluptatem reprehenderit totam.', '94');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('95', 'inventore', 'Sequi non et ea recusandae cumque voluptas deserunt. Dolorem qui sequi numquam nihil. Impedit inventore repudiandae iusto et. Delectus quisquam laboriosam laudantium sit qui ipsam. Cum in est repellendus molestiae ea est.', '95');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('96', 'consequatur', 'Ad ducimus et doloribus veritatis doloremque vero. Perspiciatis ducimus corrupti tenetur mollitia dolor repellat eius. Qui sed sint at sit impedit.', '96');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('97', 'consectetur', 'Mollitia a neque repudiandae esse. Sequi provident a deleniti qui quia ea voluptatibus. Et nihil tenetur iusto. Tempore eos facere aut et repellat fugiat explicabo inventore. Et aut et consequuntur doloribus facilis.', '97');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('98', 'mollitia', 'Recusandae enim soluta consequatur neque blanditiis veniam cupiditate. Nisi expedita magni ut unde. Nisi nostrum ut assumenda sit sequi at reiciendis.', '98');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('99', 'voluptatem', 'Ad voluptas nesciunt minus suscipit rerum. Voluptatem est eaque culpa dignissimos ad. Et ipsam dolorem sit pariatur necessitatibus sunt.', '99');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('100', 'rerum', 'Beatae aut officiis dignissimos odit et iste. Deserunt corporis alias qui soluta sit nisi. Blanditiis ea sequi tempore. Aspernatur quo provident quos ab.', '100');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`community_id`,`user_id`),
  KEY `communities_users_comm_idx` (`community_id`),
  KEY `communities_users_users_idx` (`user_id`),
  CONSTRAINT `fk_communities_users_comm` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`),
  CONSTRAINT `fk_communities_users_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('1', '1', '1983-11-28 01:29:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('2', '2', '1977-01-21 00:23:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('3', '3', '2017-09-16 02:32:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('4', '4', '2006-06-21 06:59:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('5', '5', '2016-12-17 08:34:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('6', '6', '1997-02-05 06:13:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('7', '7', '2016-04-06 19:22:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('8', '8', '1981-12-23 00:41:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('9', '9', '1998-05-21 15:52:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('10', '10', '2016-08-15 14:33:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('11', '11', '1989-02-26 08:30:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('12', '12', '2009-08-07 09:33:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('13', '13', '1990-08-05 11:33:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('14', '14', '2002-11-10 22:50:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('15', '15', '1972-03-26 03:55:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('16', '16', '2011-09-30 19:19:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('17', '17', '1999-04-20 19:43:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('18', '18', '1988-02-04 11:00:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('19', '19', '2016-06-18 17:49:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('20', '20', '1971-06-30 00:34:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('21', '21', '2014-09-03 16:26:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('22', '22', '2009-07-29 10:44:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('23', '23', '1980-08-13 15:17:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('24', '24', '1994-01-07 04:42:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('25', '25', '1975-03-14 07:44:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('26', '26', '2014-03-20 00:21:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('27', '27', '1974-07-12 05:35:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('28', '28', '2005-01-30 15:53:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('29', '29', '2004-10-02 13:02:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('30', '30', '2016-09-19 05:32:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('31', '31', '2009-07-09 17:58:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('32', '32', '1972-03-05 06:15:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('33', '33', '1989-02-07 10:42:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('34', '34', '1985-04-26 15:04:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('35', '35', '2008-02-29 15:08:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('36', '36', '1997-02-12 07:56:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('37', '37', '2018-05-06 09:39:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('38', '38', '2009-03-23 00:35:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('39', '39', '1993-01-11 06:41:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('40', '40', '1985-10-10 23:47:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('41', '41', '2004-07-17 21:39:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('42', '42', '1999-09-03 01:31:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('43', '43', '2010-06-27 00:14:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('44', '44', '2009-12-07 08:20:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('45', '45', '1990-03-07 21:03:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('46', '46', '2001-04-27 21:33:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('47', '47', '2001-06-16 23:46:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('48', '48', '2007-03-03 02:37:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('49', '49', '2002-03-17 12:11:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('50', '50', '1998-12-10 12:35:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('51', '51', '2003-02-04 15:11:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('52', '52', '2005-04-26 04:58:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('53', '53', '1998-01-14 01:37:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('54', '54', '1993-12-05 04:00:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('55', '55', '1980-04-27 01:26:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('56', '56', '2019-08-16 01:28:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('57', '57', '1994-10-26 10:14:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('58', '58', '1972-03-16 17:23:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('59', '59', '1981-09-20 06:40:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('60', '60', '1990-11-15 10:30:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('61', '61', '2010-03-31 23:05:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('62', '62', '1993-10-21 06:05:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('63', '63', '1981-11-19 11:18:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('64', '64', '1981-10-12 20:34:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('65', '65', '1988-08-01 23:14:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('66', '66', '1995-12-25 03:38:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('67', '67', '1988-11-19 00:51:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('68', '68', '2014-07-10 16:45:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('69', '69', '2014-11-23 10:56:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('70', '70', '2009-05-10 00:46:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('71', '71', '2016-07-14 00:45:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('72', '72', '2008-01-15 15:23:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('73', '73', '2012-04-25 13:08:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('74', '74', '2016-10-20 23:12:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('75', '75', '2011-02-20 19:42:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('76', '76', '1994-05-30 17:28:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('77', '77', '1989-04-17 16:19:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('78', '78', '1972-11-04 06:40:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('79', '79', '1994-02-19 02:06:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('80', '80', '1971-07-28 00:44:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('81', '81', '2018-11-05 15:21:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('82', '82', '1994-05-14 03:37:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('83', '83', '1988-04-07 22:24:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('84', '84', '1998-03-25 07:38:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('85', '85', '1991-02-25 11:40:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('86', '86', '1995-03-10 02:32:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('87', '87', '1999-08-13 07:21:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('88', '88', '2020-02-20 17:03:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('89', '89', '2017-02-14 11:12:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('90', '90', '1975-06-25 19:26:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('91', '91', '1971-08-05 18:55:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('92', '92', '2013-03-18 11:51:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('93', '93', '1995-11-01 05:25:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('94', '94', '1977-03-29 02:51:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('95', '95', '1995-08-24 18:12:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('96', '96', '2012-08-01 14:40:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('97', '97', '1983-01-05 19:57:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('98', '98', '2008-09-19 02:55:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('99', '99', '2016-12-04 20:57:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('100', '100', '2019-04-14 05:03:09');


#
# TABLE STRUCTURE FOR: friend_requests
#

DROP TABLE IF EXISTS `friend_requests`;

CREATE TABLE `friend_requests` (
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `accepted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`from_user_id`,`to_user_id`),
  KEY `fk_friend_requests_from_user_idx` (`from_user_id`),
  KEY `fk_friend_requests_to_user_idx` (`to_user_id`),
  CONSTRAINT `fk_friend_requests_users_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_friend_requests_users_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('1', '1', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('2', '2', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('3', '3', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('4', '4', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('5', '5', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('6', '6', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('7', '7', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('8', '8', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('9', '9', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('10', '10', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('11', '11', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('12', '12', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('13', '13', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('14', '14', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('15', '15', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('16', '16', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('17', '17', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('18', '18', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('19', '19', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('20', '20', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('21', '21', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('22', '22', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('23', '23', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('24', '24', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('25', '25', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('26', '26', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('27', '27', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('28', '28', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('29', '29', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('30', '30', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('31', '31', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('32', '32', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('33', '33', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('34', '34', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('35', '35', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('36', '36', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('37', '37', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('38', '38', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('39', '39', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('40', '40', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('41', '41', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('42', '42', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('43', '43', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('44', '44', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('45', '45', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('46', '46', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('47', '47', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('48', '48', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('49', '49', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('50', '50', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('51', '51', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('52', '52', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('53', '53', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('54', '54', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('55', '55', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('56', '56', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('57', '57', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('58', '58', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('59', '59', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('60', '60', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('61', '61', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('62', '62', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('63', '63', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('64', '64', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('65', '65', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('66', '66', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('67', '67', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('68', '68', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('69', '69', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('70', '70', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('71', '71', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('72', '72', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('73', '73', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('74', '74', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('75', '75', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('76', '76', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('77', '77', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('78', '78', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('79', '79', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('80', '80', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('81', '81', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('82', '82', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('83', '83', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('84', '84', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('85', '85', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('86', '86', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('87', '87', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('88', '88', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('89', '89', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('90', '90', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('91', '91', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('92', '92', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('93', '93', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('94', '94', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('95', '95', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('96', '96', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('97', '97', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('98', '98', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('99', '99', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('100', '100', 0);


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `media_types_id` int(10) unsigned NOT NULL,
  `file_name` varchar(245) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '/files/folder/img.png',
  `file_size` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `fk_media_users_idx` (`user_id`),
  KEY `fk_media_media_types` (`media_types_id`),
  CONSTRAINT `fk_media_media_types` FOREIGN KEY (`media_types_id`) REFERENCES `media_types` (`id`),
  CONSTRAINT `fk_media_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('1', '1', 1, 'sint', '1', '1995-10-17 02:32:31');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('2', '2', 2, 'dolorum', '3956', '1971-03-07 08:47:30');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('3', '3', 3, 'possimus', '48632022', '1982-05-30 04:47:22');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('4', '4', 4, 'hic', '950', '2020-03-07 20:09:20');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('5', '5', 1, 'fuga', '98537', '1981-12-05 07:08:52');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('6', '6', 2, 'enim', '14', '1985-02-07 03:11:37');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('7', '7', 3, 'quibusdam', '253474954', '1973-09-29 18:57:39');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('8', '8', 4, 'voluptas', '70575', '2001-11-25 02:48:05');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('9', '9', 1, 'quis', '827927394', '1986-11-05 04:01:52');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('10', '10', 2, 'odit', '729', '2009-06-04 15:56:13');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('11', '11', 3, 'voluptatem', '73', '1994-01-22 08:56:48');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('12', '12', 4, 'quibusdam', '4', '1973-02-20 10:58:47');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('13', '13', 1, 'rerum', '625', '1992-09-20 18:22:01');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('14', '14', 2, 'nesciunt', '72532698', '1994-06-02 23:20:30');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('15', '15', 3, 'reiciendis', '1', '1983-02-05 15:24:55');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('16', '16', 4, 'et', '1865', '1989-02-02 23:31:56');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('17', '17', 1, 'non', '80703013', '1971-02-25 17:20:16');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('18', '18', 2, 'voluptatum', '76679', '1982-01-27 08:21:47');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('19', '19', 3, 'hic', '836092864', '2006-06-14 18:39:23');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('20', '20', 4, 'quisquam', '3106', '2013-12-25 12:34:35');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('21', '21', 1, 'ut', '3464179', '1979-06-01 18:54:44');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('22', '22', 2, 'impedit', '266', '1991-04-08 12:47:45');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('23', '23', 3, 'molestiae', '9', '1984-01-20 03:05:16');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('24', '24', 4, 'maxime', '4547', '2009-09-19 01:14:44');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('25', '25', 1, 'excepturi', '3072481', '1997-04-03 09:32:34');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('26', '26', 2, 'in', '582845392', '2013-10-15 10:20:33');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('27', '27', 3, 'porro', '0', '1978-10-21 14:24:26');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('28', '28', 4, 'consequatur', '64574162', '1989-07-28 01:06:00');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('29', '29', 1, 'nesciunt', '6', '2005-10-10 10:28:28');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('30', '30', 2, 'accusantium', '90534', '1986-11-27 07:20:11');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('31', '31', 3, 'modi', '6694767', '1976-09-17 18:08:17');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('32', '32', 4, 'ducimus', '2062', '1982-02-24 04:28:58');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('33', '33', 1, 'temporibus', '399758781', '1992-03-25 22:11:08');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('34', '34', 2, 'reiciendis', '4284442', '1980-09-18 22:32:39');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('35', '35', 3, 'earum', '81238', '1980-10-24 11:07:21');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('36', '36', 4, 'doloribus', '421', '1996-01-12 06:54:04');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('37', '37', 1, 'velit', '2986913', '1971-03-14 16:07:19');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('38', '38', 2, 'labore', '3147511', '1997-02-18 21:45:26');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('39', '39', 3, 'qui', '555965638', '1982-03-02 00:42:37');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('40', '40', 4, 'sunt', '7815186', '1972-09-06 20:18:13');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('41', '41', 1, 'cum', '347269225', '1985-02-11 12:57:24');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('42', '42', 2, 'sapiente', '0', '2003-11-25 10:32:52');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('43', '43', 3, 'ex', '0', '2001-02-02 10:04:00');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('44', '44', 4, 'excepturi', '36462856', '2013-11-03 09:07:16');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('45', '45', 1, 'excepturi', '4918', '2005-03-14 07:58:30');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('46', '46', 2, 'molestiae', '481214', '2012-03-13 01:50:19');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('47', '47', 3, 'veniam', '288314492', '2004-07-02 20:54:52');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('48', '48', 4, 'soluta', '9470', '1996-01-17 13:18:14');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('49', '49', 1, 'sint', '48630', '2011-11-16 01:13:48');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('50', '50', 2, 'omnis', '9724', '1983-06-17 17:49:07');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('51', '51', 3, 'corporis', '0', '1991-12-27 04:39:58');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('52', '52', 4, 'quaerat', '93', '2008-01-07 13:57:31');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('53', '53', 1, 'eligendi', '83815', '1970-09-29 08:12:59');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('54', '54', 2, 'rem', '2456', '2009-07-03 17:18:46');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('55', '55', 3, 'laborum', '386', '1988-08-03 03:16:49');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('56', '56', 4, 'consectetur', '30910548', '2003-09-14 08:51:17');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('57', '57', 1, 'autem', '193', '2016-03-06 20:38:26');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('58', '58', 2, 'nostrum', '44152602', '2002-09-11 22:42:06');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('59', '59', 3, 'quia', '68611', '2000-01-29 00:17:47');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('60', '60', 4, 'deserunt', '6876890', '2017-10-05 20:19:47');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('61', '61', 1, 'quo', '104719', '1999-08-13 15:27:41');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('62', '62', 2, 'qui', '642932930', '2007-04-08 07:20:42');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('63', '63', 3, 'labore', '662401', '1977-07-07 05:38:46');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('64', '64', 4, 'dolorum', '92658', '2004-05-19 08:07:52');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('65', '65', 1, 'doloremque', '568', '1994-09-01 21:42:10');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('66', '66', 2, 'ut', '56755', '2018-11-15 06:09:44');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('67', '67', 3, 'id', '0', '2020-07-08 18:42:46');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('68', '68', 4, 'aspernatur', '793714', '2018-09-02 18:39:32');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('69', '69', 1, 'dolore', '15', '1991-01-12 02:21:15');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('70', '70', 2, 'enim', '6886676', '1985-07-29 01:34:41');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('71', '71', 3, 'magnam', '27414941', '2007-12-05 16:34:18');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('72', '72', 4, 'aut', '0', '1990-10-08 19:46:47');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('73', '73', 1, 'ipsum', '2', '1980-11-29 21:04:46');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('74', '74', 2, 'rerum', '2', '2014-11-25 21:51:24');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('75', '75', 3, 'velit', '0', '1984-08-05 11:37:57');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('76', '76', 4, 'sunt', '26', '2009-12-27 16:27:43');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('77', '77', 1, 'repellat', '914265', '2017-05-16 13:06:35');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('78', '78', 2, 'in', '1', '1975-03-10 20:07:56');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('79', '79', 3, 'et', '912', '1986-02-28 08:46:24');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('80', '80', 4, 'nulla', '840147270', '2000-03-13 20:25:18');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('81', '81', 1, 'expedita', '664', '1992-09-13 12:39:48');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('82', '82', 2, 'dolores', '7', '2020-05-13 03:07:05');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('83', '83', 3, 'laudantium', '1270983', '1984-09-24 03:47:54');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('84', '84', 4, 'nihil', '1490', '1990-05-27 18:06:54');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('85', '85', 1, 'omnis', '64442', '2012-03-23 16:58:32');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('86', '86', 2, 'quod', '885042211', '1971-06-14 00:40:18');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('87', '87', 3, 'minima', '4', '1992-04-23 11:26:45');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('88', '88', 4, 'quisquam', '53636304', '1984-12-10 12:09:44');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('89', '89', 1, 'ab', '3', '1994-04-05 21:35:04');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('90', '90', 2, 'iste', '1509634', '2006-05-20 18:55:57');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('91', '91', 3, 'ea', '26020', '1972-09-30 22:42:59');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('92', '92', 4, 'porro', '5872562', '2008-07-27 16:55:42');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('93', '93', 1, 'eaque', '341639', '2000-05-22 05:19:03');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('94', '94', 2, 'voluptatem', '320971', '1984-05-27 14:39:32');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('95', '95', 3, 'eaque', '7749', '1972-05-16 18:31:19');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('96', '96', 4, 'et', '59', '2001-12-24 10:36:37');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('97', '97', 1, 'in', '6657', '1974-10-09 06:39:38');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('98', '98', 2, 'quas', '0', '1990-03-31 14:45:33');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('99', '99', 3, 'accusantium', '166753498', '1998-08-21 04:27:58');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('100', '100', 4, 'est', '287578668', '1974-09-12 00:22:23');

#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `txt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_delivered` tinyint(1) DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `fk_messages_from_user_idx` (`from_user_id`),
  KEY `fk_messages_to_user_idx` (`to_user_id`),
  CONSTRAINT `fk_messages_users_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_messages_users_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('1', '1', '1', '', 0, '2016-09-10 08:00:25', '1971-07-21 08:01:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('2', '2', '2', '', 1, '2019-09-07 23:45:42', '2008-06-25 16:40:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('3', '3', '3', '', 1, '2002-04-30 00:54:02', '1998-02-19 02:06:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('4', '4', '4', '', 1, '2016-07-01 04:09:06', '1986-04-16 20:20:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('5', '5', '5', '', 1, '2008-04-01 14:06:37', '1990-11-09 22:44:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('6', '6', '6', '', 1, '2017-01-09 01:03:50', '1991-06-24 23:34:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('7', '7', '7', '', 1, '1978-02-15 06:19:15', '1989-06-07 18:11:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('8', '8', '8', '', 1, '1983-03-10 23:23:24', '1992-06-13 06:21:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('9', '9', '9', '', 0, '1990-02-16 11:18:05', '2014-06-30 21:30:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('10', '10', '10', '', 1, '1993-01-20 21:39:35', '1999-06-12 21:58:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('11', '11', '11', '', 1, '1995-12-30 21:55:37', '1970-07-09 07:10:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('12', '12', '12', '', 0, '1984-02-27 05:33:31', '1994-04-09 22:12:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('13', '13', '13', '', 0, '2020-05-27 12:49:32', '2005-02-08 23:17:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('14', '14', '14', '', 1, '1974-07-21 02:03:21', '1998-08-26 17:13:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('15', '15', '15', '', 0, '1993-07-03 13:35:55', '2000-07-10 06:49:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('16', '16', '16', '', 1, '2003-06-12 11:45:39', '1970-11-24 09:37:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('17', '17', '17', '', 1, '1977-09-25 08:38:01', '2016-02-13 01:04:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('18', '18', '18', '', 1, '2000-02-18 00:42:25', '2017-01-22 07:17:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('19', '19', '19', '', 0, '1991-04-01 05:28:45', '1996-09-24 20:40:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('20', '20', '20', '', 1, '1978-09-05 02:43:45', '2009-02-12 01:44:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('21', '21', '21', '', 0, '2012-03-06 14:48:51', '1997-07-29 11:11:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('22', '22', '22', '', 1, '2006-08-09 13:27:35', '2013-12-19 04:30:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('23', '23', '23', '', 1, '1992-08-16 11:09:03', '1983-07-30 05:24:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('24', '24', '24', '', 0, '1971-02-13 07:09:42', '2018-06-03 19:50:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('25', '25', '25', '', 1, '1993-05-24 14:23:34', '1981-09-21 07:42:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('26', '26', '26', '', 1, '1971-09-30 05:39:15', '1997-10-11 22:03:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('27', '27', '27', '', 0, '1974-07-14 02:34:26', '1976-04-21 03:58:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('28', '28', '28', '', 1, '2016-09-21 06:19:16', '1983-01-17 01:35:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('29', '29', '29', '', 0, '1972-04-16 00:05:57', '1976-11-15 08:24:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('30', '30', '30', '', 0, '1985-08-10 16:38:19', '2012-05-28 05:57:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('31', '31', '31', '', 0, '1994-01-11 09:08:54', '2010-04-12 19:29:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('32', '32', '32', '', 1, '2009-03-03 01:18:38', '2004-01-14 04:45:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('33', '33', '33', '', 0, '2013-07-03 22:07:31', '2006-12-12 03:38:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('34', '34', '34', '', 0, '2002-01-03 04:38:03', '1984-02-15 06:17:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('35', '35', '35', '', 1, '1981-03-30 22:11:36', '1972-07-03 21:02:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('36', '36', '36', '', 0, '1976-06-30 08:42:03', '1993-06-07 11:53:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('37', '37', '37', '', 0, '1999-07-01 20:21:06', '2004-03-11 04:10:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('38', '38', '38', '', 0, '1970-12-25 22:20:47', '1994-06-06 20:54:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('39', '39', '39', '', 1, '2003-02-08 13:18:12', '1976-04-19 12:03:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('40', '40', '40', '', 0, '2007-10-15 19:23:57', '1990-01-04 04:44:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('41', '41', '41', '', 1, '1981-01-15 00:07:24', '2016-08-13 06:03:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('42', '42', '42', '', 1, '1988-05-22 20:16:43', '1989-09-02 04:05:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('43', '43', '43', '', 0, '2007-11-03 20:43:09', '2004-11-02 06:16:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('44', '44', '44', '', 1, '2019-09-29 22:45:20', '2002-12-01 13:33:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('45', '45', '45', '', 1, '1980-04-01 09:58:10', '1999-12-19 17:59:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('46', '46', '46', '', 1, '2018-08-09 15:26:48', '1977-06-11 03:21:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('47', '47', '47', '', 1, '1995-07-11 07:31:42', '1983-06-20 01:15:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('48', '48', '48', '', 0, '2017-09-26 16:26:17', '1973-01-09 18:55:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('49', '49', '49', '', 0, '2003-04-01 12:53:15', '1996-02-22 19:50:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('50', '50', '50', '', 0, '2013-02-05 03:38:01', '1984-06-14 20:09:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('51', '51', '51', '', 0, '1997-01-19 01:45:05', '2012-12-17 01:50:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('52', '52', '52', '', 1, '2012-07-21 21:43:06', '1997-12-15 08:58:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('53', '53', '53', '', 1, '1988-07-04 09:11:29', '1972-12-22 18:32:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('54', '54', '54', '', 0, '2019-07-09 18:00:43', '1975-09-25 23:54:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('55', '55', '55', '', 0, '1999-11-25 11:55:33', '1983-05-17 02:41:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('56', '56', '56', '', 0, '2000-07-06 23:01:58', '1998-09-24 15:54:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('57', '57', '57', '', 0, '2002-09-23 18:05:36', '2007-12-01 16:57:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('58', '58', '58', '', 0, '2016-05-15 01:00:13', '1976-09-21 09:55:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('59', '59', '59', '', 0, '2008-12-08 17:51:00', '2010-09-25 21:43:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('60', '60', '60', '', 1, '2002-01-17 03:50:56', '1993-03-08 00:36:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('61', '61', '61', '', 0, '2000-03-28 22:34:28', '2013-01-15 14:44:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('62', '62', '62', '', 0, '2018-12-19 00:49:03', '1981-06-26 21:46:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('63', '63', '63', '', 1, '1975-05-06 17:11:37', '1970-08-10 19:07:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('64', '64', '64', '', 0, '2008-09-06 20:24:43', '2003-11-29 04:01:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('65', '65', '65', '', 0, '1999-05-06 16:11:06', '1974-03-16 13:49:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('66', '66', '66', '', 0, '2011-09-17 06:04:06', '2021-03-22 17:40:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('67', '67', '67', '', 1, '2020-12-06 03:37:04', '1976-03-13 04:45:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('68', '68', '68', '', 1, '1973-07-30 20:14:53', '2013-03-07 08:36:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('69', '69', '69', '', 1, '1986-08-02 02:30:02', '2004-08-04 16:18:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('70', '70', '70', '', 1, '1970-04-28 08:01:25', '2011-04-24 15:58:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('71', '71', '71', '', 0, '1976-03-30 01:46:33', '1970-11-17 11:29:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('72', '72', '72', '', 1, '1995-09-17 10:00:53', '1973-08-24 08:25:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('73', '73', '73', '', 1, '1987-09-05 04:03:59', '2004-01-13 22:46:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('74', '74', '74', '', 1, '1970-03-24 11:31:11', '2009-04-11 01:07:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('75', '75', '75', '', 0, '2001-12-27 18:07:19', '1983-07-28 06:07:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('76', '76', '76', '', 0, '1979-03-25 12:37:38', '2006-09-20 17:45:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('77', '77', '77', '', 0, '2018-04-20 01:30:28', '2003-12-11 07:45:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('78', '78', '78', '', 1, '1999-07-01 07:11:24', '1980-09-26 10:12:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('79', '79', '79', '', 1, '2004-01-25 02:20:53', '2012-08-09 23:46:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('80', '80', '80', '', 1, '1980-11-20 13:08:13', '2008-08-19 12:14:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('81', '81', '81', '', 1, '1991-03-30 17:56:07', '1972-10-21 08:55:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('82', '82', '82', '', 0, '1972-12-24 17:32:40', '1984-12-03 17:01:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('83', '83', '83', '', 0, '2009-09-16 19:44:00', '1996-10-30 11:40:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('84', '84', '84', '', 0, '1999-04-07 23:20:58', '1970-10-19 07:12:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('85', '85', '85', '', 0, '1996-06-26 04:00:31', '1982-12-17 23:37:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('86', '86', '86', '', 1, '1991-11-20 08:33:58', '1972-08-22 02:09:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('87', '87', '87', '', 1, '1976-03-10 02:15:38', '1999-08-17 23:46:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('88', '88', '88', '', 0, '2006-11-23 10:54:10', '1973-03-03 00:05:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('89', '89', '89', '', 0, '1980-02-18 08:09:56', '1993-06-28 10:02:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('90', '90', '90', '', 1, '2009-04-28 20:59:01', '1971-06-30 21:42:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('91', '91', '91', '', 1, '1972-01-19 16:51:16', '1982-10-01 00:14:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('92', '92', '92', '', 1, '2000-02-22 09:32:38', '1974-11-07 18:48:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('93', '93', '93', '', 1, '2005-12-02 15:21:08', '2009-04-04 20:26:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('94', '94', '94', '', 1, '1972-05-16 14:47:45', '2012-09-10 20:42:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('95', '95', '95', '', 1, '2008-11-16 23:20:22', '1986-10-13 16:12:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('96', '96', '96', '', 0, '1997-02-21 09:20:20', '2008-11-17 00:35:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('97', '97', '97', '', 1, '1991-03-24 14:31:48', '2013-06-02 05:28:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('98', '98', '98', '', 1, '1979-10-10 04:17:28', '1999-06-30 20:00:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('99', '99', '99', '', 0, '2020-03-07 08:48:56', '1995-06-20 14:27:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `update_at`) VALUES ('100', '100', '100', '', 0, '1977-06-04 11:29:54', '1970-03-17 14:52:06');


#
# TABLE STRUCTURE FOR: posts
#

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `txt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_idx` (`user_id`),
  CONSTRAINT `user_posts_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('1', '1', '', '2000-10-16 13:39:23', '2015-08-16 01:39:31');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('2', '2', '', '2013-11-08 04:47:18', '1990-06-09 00:14:23');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('3', '3', '', '1978-07-30 00:05:03', '2007-10-27 04:11:40');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('4', '4', '', '1975-07-21 20:08:20', '1984-08-26 18:34:44');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('5', '5', '', '1975-05-06 01:29:15', '2008-10-03 15:01:43');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('6', '6', '', '1995-12-28 14:06:15', '2002-10-28 19:58:24');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('7', '7', '', '1988-07-14 23:00:23', '1993-04-11 14:03:49');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('8', '8', '', '1976-05-13 00:56:05', '2004-05-21 13:50:45');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('9', '9', '', '1987-11-24 07:30:03', '1987-01-02 06:14:15');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('10', '10', '', '1982-04-17 01:41:04', '1989-02-03 13:51:37');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('11', '11', '', '1987-05-12 12:40:23', '1996-08-04 20:14:18');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('12', '12', '', '2016-04-05 20:36:41', '2019-03-26 11:25:09');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('13', '13', '', '2019-12-06 00:21:24', '1971-03-21 15:35:04');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('14', '14', '', '1993-08-01 13:38:18', '1984-08-18 00:57:29');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('15', '15', '', '1982-07-25 18:45:35', '1976-01-10 16:12:29');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('16', '16', '', '2007-01-22 13:52:34', '1974-05-18 14:05:54');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('17', '17', '', '2010-02-23 06:32:43', '1984-09-25 01:51:11');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('18', '18', '', '2002-10-28 06:21:19', '1986-05-13 21:51:41');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('19', '19', '', '1984-02-19 07:20:40', '2009-08-05 01:01:30');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('20', '20', '', '1990-02-20 09:26:09', '1997-04-20 08:16:07');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('21', '21', '', '2000-11-24 20:50:55', '1987-03-08 12:07:56');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('22', '22', '', '1989-02-27 02:37:00', '2009-06-07 02:47:47');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('23', '23', '', '1994-04-10 11:32:29', '1995-10-18 14:55:23');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('24', '24', '', '1983-04-04 22:47:06', '1991-09-03 07:27:36');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('25', '25', '', '1992-09-15 05:25:28', '1990-06-22 22:33:51');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('26', '26', '', '1972-12-01 18:00:09', '2012-07-09 00:06:00');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('27', '27', '', '1982-01-21 03:56:33', '1998-08-21 18:57:33');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('28', '28', '', '1999-02-12 20:39:10', '1975-10-14 14:06:47');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('29', '29', '', '1971-12-23 08:57:51', '2015-08-23 18:21:54');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('30', '30', '', '2011-10-10 20:17:48', '2001-07-01 09:01:13');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('31', '31', '', '1994-06-25 20:16:27', '1980-08-23 21:33:36');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('32', '32', '', '2020-06-01 17:47:19', '1994-08-22 11:28:08');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('33', '33', '', '2016-12-01 02:10:01', '2000-02-01 20:09:06');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('34', '34', '', '1988-04-13 01:05:45', '1990-07-30 22:19:00');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('35', '35', '', '1980-07-11 02:04:38', '1970-04-07 17:35:00');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('36', '36', '', '1987-09-08 01:28:49', '1988-01-28 16:58:02');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('37', '37', '', '2013-04-03 04:05:46', '1991-06-20 16:39:30');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('38', '38', '', '2019-09-29 09:59:56', '2018-12-20 12:02:49');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('39', '39', '', '1980-12-13 08:47:01', '1976-10-30 10:46:04');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('40', '40', '', '1971-05-11 18:16:44', '1999-08-20 16:58:02');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('41', '41', '', '1983-08-11 14:44:25', '1990-12-13 14:30:41');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('42', '42', '', '1980-06-15 13:38:36', '1995-07-05 17:57:44');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('43', '43', '', '1985-06-15 12:59:52', '2004-06-29 23:54:38');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('44', '44', '', '2015-01-11 00:14:17', '2004-03-17 21:17:32');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('45', '45', '', '2007-12-27 23:19:14', '1999-05-25 15:04:14');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('46', '46', '', '2012-12-09 04:12:02', '1974-09-02 08:43:23');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('47', '47', '', '1983-10-17 03:05:17', '1979-10-31 01:59:01');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('48', '48', '', '1989-12-14 11:19:58', '2013-07-08 11:50:26');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('49', '49', '', '1970-08-02 20:10:15', '1971-02-21 20:27:31');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('50', '50', '', '2012-09-06 16:49:09', '2007-10-25 06:48:17');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('51', '51', '', '2003-09-10 12:20:25', '2001-09-12 14:37:05');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('52', '52', '', '2021-02-11 13:36:30', '1973-12-10 01:33:18');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('53', '53', '', '1980-05-03 05:10:39', '2006-01-02 08:20:33');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('54', '54', '', '1987-05-08 15:18:38', '1983-11-24 22:38:16');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('55', '55', '', '1981-02-10 15:03:12', '2019-02-11 20:08:06');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('56', '56', '', '1989-03-11 02:15:41', '1987-07-21 16:25:18');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('57', '57', '', '2014-12-22 12:41:42', '1983-09-20 10:31:12');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('58', '58', '', '2016-03-11 15:05:49', '1989-09-10 05:47:49');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('59', '59', '', '1986-11-04 12:56:23', '1985-04-28 19:46:53');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('60', '60', '', '1978-06-01 18:25:20', '2004-08-17 06:31:56');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('61', '61', '', '1984-03-24 18:57:46', '2017-06-22 10:38:47');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('62', '62', '', '1976-12-23 12:37:38', '2006-02-07 23:00:49');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('63', '63', '', '2006-02-28 21:27:20', '2011-12-26 13:04:59');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('64', '64', '', '1987-05-24 07:35:33', '1980-06-05 00:54:45');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('65', '65', '', '2009-01-27 02:37:00', '1971-03-05 15:30:53');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('66', '66', '', '1987-07-20 01:46:19', '2015-11-24 11:38:14');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('67', '67', '', '2010-05-05 04:39:26', '2002-01-20 17:42:37');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('68', '68', '', '1983-03-24 20:24:50', '2008-03-08 05:50:21');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('69', '69', '', '2000-11-16 17:32:23', '1991-12-13 14:52:38');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('70', '70', '', '2011-04-27 21:00:16', '1974-04-03 12:03:49');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('71', '71', '', '1987-10-09 03:18:46', '2013-01-07 21:22:25');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('72', '72', '', '2007-06-25 11:09:57', '1980-02-26 20:35:44');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('73', '73', '', '1985-04-02 17:34:02', '2017-07-19 23:16:06');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('74', '74', '', '1996-12-15 10:07:44', '1986-07-16 23:44:59');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('75', '75', '', '1990-02-08 22:49:11', '2000-07-26 12:03:59');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('76', '76', '', '1983-07-04 13:57:43', '2015-02-16 23:24:04');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('77', '77', '', '1982-10-06 10:29:20', '2009-05-04 23:45:16');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('78', '78', '', '1997-09-19 00:04:42', '2007-01-29 16:48:53');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('79', '79', '', '1986-04-25 00:16:12', '1995-09-06 14:12:03');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('80', '80', '', '2000-12-14 21:00:11', '1986-11-01 21:56:11');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('81', '81', '', '2018-04-28 09:33:40', '1990-06-20 11:27:28');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('82', '82', '', '2001-11-25 17:49:49', '1975-03-01 01:12:00');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('83', '83', '', '1996-02-12 15:30:45', '1981-01-23 03:19:50');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('84', '84', '', '2003-04-02 17:55:03', '1999-12-09 11:07:56');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('85', '85', '', '1996-04-14 18:12:05', '1977-08-18 01:04:23');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('86', '86', '', '1970-04-16 22:18:18', '1977-04-03 17:50:21');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('87', '87', '', '1998-02-28 21:04:38', '2006-10-02 17:57:53');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('88', '88', '', '1998-07-16 20:34:46', '1998-11-25 02:54:55');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('89', '89', '', '1980-03-01 18:06:36', '2015-07-21 07:21:01');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('90', '90', '', '2001-03-04 18:40:49', '1976-10-31 02:52:39');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('91', '91', '', '1999-05-12 00:01:17', '1996-12-20 02:25:32');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('92', '92', '', '2014-12-14 10:42:36', '2010-05-07 12:30:15');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('93', '93', '', '2020-01-16 23:26:16', '1974-10-17 04:56:38');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('94', '94', '', '2020-02-15 16:08:27', '1989-04-08 23:51:26');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('95', '95', '', '1999-12-11 01:42:56', '1977-11-25 00:43:40');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('96', '96', '', '1978-01-09 02:09:23', '2016-01-03 23:52:04');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('97', '97', '', '2000-12-09 06:15:24', '2020-10-01 15:20:26');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('98', '98', '', '2014-04-15 02:35:04', '1972-11-27 10:49:46');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('99', '99', '', '1980-04-28 18:45:14', '2018-09-25 07:53:50');
INSERT INTO `posts` (`id`, `user_id`, `txt`, `created_at`, `updated_at`) VALUES ('100', '100', '', '1971-02-01 22:59:45', '2001-11-09 09:18:18');


#
# TABLE STRUCTURE FOR: posts_likes
#

DROP TABLE IF EXISTS `posts_likes`;

CREATE TABLE `posts_likes` (
  `post_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `like_type` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`post_id`,`user_id`),
  KEY `post_idx` (`post_id`),
  KEY `user_idx` (`user_id`),
  CONSTRAINT `posts_likes_fk` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  CONSTRAINT `users_likes_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('1', '1', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('2', '2', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('3', '3', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('4', '4', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('5', '5', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('6', '6', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('7', '7', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('8', '8', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('9', '9', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('10', '10', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('11', '11', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('12', '12', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('13', '13', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('14', '14', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('15', '15', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('16', '16', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('17', '17', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('18', '18', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('19', '19', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('20', '20', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('21', '21', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('22', '22', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('23', '23', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('24', '24', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('25', '25', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('26', '26', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('27', '27', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('28', '28', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('29', '29', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('30', '30', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('31', '31', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('32', '32', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('33', '33', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('34', '34', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('35', '35', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('36', '36', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('37', '37', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('38', '38', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('39', '39', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('40', '40', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('41', '41', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('42', '42', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('43', '43', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('44', '44', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('45', '45', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('46', '46', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('47', '47', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('48', '48', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('49', '49', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('50', '50', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('51', '51', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('52', '52', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('53', '53', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('54', '54', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('55', '55', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('56', '56', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('57', '57', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('58', '58', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('59', '59', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('60', '60', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('61', '61', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('62', '62', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('63', '63', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('64', '64', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('65', '65', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('66', '66', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('67', '67', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('68', '68', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('69', '69', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('70', '70', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('71', '71', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('72', '72', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('73', '73', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('74', '74', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('75', '75', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('76', '76', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('77', '77', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('78', '78', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('79', '79', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('80', '80', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('81', '81', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('82', '82', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('83', '83', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('84', '84', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('85', '85', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('86', '86', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('87', '87', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('88', '88', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('89', '89', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('90', '90', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('91', '91', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('92', '92', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('93', '93', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('94', '94', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('95', '95', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('96', '96', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('97', '97', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('98', '98', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('99', '99', 1);
INSERT INTO `posts_likes` (`post_id`, `user_id`, `like_type`) VALUES ('100', '100', 1);


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `gender` enum('f','m','x') COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `photo_id` bigint(20) unsigned DEFAULT NULL,
  `user_status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `photo_id` (`photo_id`),
  CONSTRAINT `fk_profiles_media` FOREIGN KEY (`photo_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_profiles_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('1', 'f', '1980-06-25', '1', 'Neque ut officia earum in pari', 'Mooreview', '5');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('2', 'x', '1999-04-23', '2', 'Minus ipsum est nemo quaerat u', 'Laviniaburgh', '54152');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('3', 'x', '1980-10-27', '3', 'Expedita cumque nemo laborum i', 'Yundtmouth', '11644111');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('4', 'x', '2012-06-07', '4', 'Ut recusandae quis enim rem no', 'South Wyattborough', '756');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('5', 'f', '2010-06-28', '5', 'Et et et et doloremque non vol', 'New Dahlia', '99839');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('6', 'm', '2006-02-26', '6', 'Suscipit commodi a soluta volu', 'Port Aida', '');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('7', 'f', '2017-02-11', '7', 'Reprehenderit voluptatem vel s', 'East Cassandra', '');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('8', 'x', '1988-03-16', '8', 'Temporibus culpa vel aut persp', 'New Dorrisfurt', '68200739');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('9', 'f', '1979-07-21', '9', 'Nulla aspernatur harum veritat', 'New Coltonberg', '5679286');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('10', 'x', '2019-08-06', '10', 'Rerum nihil necessitatibus dis', 'East Amir', '50919548');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('11', 'x', '1981-07-18', '11', 'Esse sed laborum et in sit ass', 'New Abelardo', '78420');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('12', 'm', '2011-04-07', '12', 'Voluptatem et maxime sit in ni', 'Purdyside', '15751511');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('13', 'm', '1986-10-19', '13', 'Excepturi iste ea deserunt fug', 'New Moisesstad', '73');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('14', 'x', '2015-04-30', '14', 'Dolorum aut necessitatibus dol', 'Howellchester', '');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('15', 'x', '1994-09-14', '15', 'Eaque modi soluta quia modi vo', 'Milfordside', '71');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('16', 'f', '1985-08-03', '16', 'Soluta enim deleniti consequat', 'East Alva', '618941');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('17', 'f', '1975-04-02', '17', 'Enim enim sit possimus impedit', 'Letitiashire', '36171');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('18', 'm', '2017-12-09', '18', 'Eaque ad voluptate beatae dolo', 'North Margaret', '92462834');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('19', 'f', '2019-04-14', '19', 'Eos ea nisi repudiandae facili', 'Mikelview', '396429799');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('20', 'f', '2010-04-18', '20', 'Id iste deleniti officia quaer', 'East Spencer', '20700448');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('21', 'm', '2003-12-10', '21', 'Itaque dicta eos est corrupti ', 'Wisozkmouth', '6');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('22', 'x', '1997-04-18', '22', 'Ut quidem fuga voluptatum nihi', 'New Coralie', '28606');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('23', 'x', '1998-07-06', '23', 'Sed earum et recusandae asperi', 'Willmsburgh', '40763312');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('24', 'x', '2017-03-20', '24', 'Alias aut harum enim ea quos d', 'North Muhammadberg', '32055');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('25', 'f', '2009-02-13', '25', 'Cum quo nam et voluptas. Natus', 'Herzogbury', '60418939');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('26', 'f', '1995-11-25', '26', 'Repellat autem velit hic eaque', 'Sengerport', '63');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('27', 'm', '1980-05-04', '27', 'Qui vel quia in consequatur ip', 'Feliciaside', '919937');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('28', 'f', '2015-09-29', '28', 'Quia error perferendis recusan', 'Cartwrighthaven', '8196');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('29', 'f', '1989-07-01', '29', 'Deserunt cumque veritatis et u', 'Ryanland', '');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('30', 'm', '2000-03-02', '30', 'Aut nobis reprehenderit sint d', 'Adrientown', '799');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('31', 'm', '2006-09-29', '31', 'Ea sunt eum est voluptates. Vo', 'New Juwan', '608990778');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('32', 'm', '2005-06-19', '32', 'Qui alias in nihil qui accusan', 'Port Arnaldomouth', '569');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('33', 'm', '2017-08-30', '33', 'Quidem at quia et. Quod nulla ', 'Noemiebury', '');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('34', 'f', '2021-01-25', '34', 'Ex ipsa impedit autem ipsa vol', 'West Chloe', '59962');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('35', 'x', '2009-06-05', '35', 'Saepe ut enim dolores iste. Fa', 'Walshhaven', '469629');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('36', 'x', '2017-06-09', '36', 'Sint laborum minus qui nam. Au', 'Xzavierfurt', '277832631');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('37', 'm', '1996-04-21', '37', 'Delectus et minus eius ut moll', 'Eberthaven', '11045');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('38', 'm', '2016-04-05', '38', 'Qui occaecati nesciunt soluta ', 'Alexandrohaven', '777482');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('39', 'f', '1970-06-21', '39', 'Ut soluta quia ipsa accusantiu', 'Ricemouth', '906709');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('40', 'x', '2000-04-24', '40', 'Ut iure eum libero beatae nihi', 'New Sydni', '9');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('41', 'x', '1972-10-29', '41', 'Perspiciatis sed nulla molesti', 'Port Era', '28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('42', 'x', '2007-01-12', '42', 'Quo id earum velit accusantium', 'West Mandy', '4509');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('43', 'x', '1973-10-20', '43', 'Quia amet voluptatum repellat ', 'New Jameyburgh', '8336');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('44', 'm', '2015-08-02', '44', 'Harum id quia qui rerum aliqua', 'Abagailtown', '');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('45', 'm', '1984-06-20', '45', 'Laborum in incidunt praesentiu', 'Lake Jovanibury', '37557');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('46', 'm', '1999-06-18', '46', 'Vel molestias dolores earum eu', 'South Terrell', '');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('47', 'm', '1992-09-20', '47', 'Est eum optio minus et qui fug', 'Feilberg', '448');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('48', 'f', '1994-09-23', '48', 'Necessitatibus et ipsa est sed', 'Audieville', '42882');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('49', 'x', '2017-12-02', '49', 'Et enim consequatur consequunt', 'Danykastad', '6290');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('50', 'f', '1971-10-15', '50', 'Ipsam et expedita accusantium.', 'West Pinkie', '3897');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('51', 'x', '1996-09-16', '51', 'Debitis repellat reiciendis do', 'Lake Hiltonhaven', '2450671');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('52', 'm', '2014-06-06', '52', 'Voluptatum sunt nobis exceptur', 'North Kristianstad', '');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('53', 'm', '1987-01-12', '53', 'Aut architecto est dolor est. ', 'New Augustus', '7');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('54', 'f', '2003-05-20', '54', 'Asperiores et alias modi eveni', 'North Alexa', '22156438');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('55', 'f', '1971-01-25', '55', 'Dignissimos ut voluptatem volu', 'North Mitchelstad', '101475');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('56', 'x', '2018-10-11', '56', 'Ipsam aut nostrum et hic imped', 'South Larissa', '32058796');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('57', 'm', '1999-07-28', '57', 'Est est vel voluptas eveniet v', 'New Emie', '1');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('58', 'x', '2018-09-26', '58', 'Eius corrupti consequuntur vol', 'Douglaston', '5995459');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('59', 'f', '1976-05-21', '59', 'Porro aut fugit eligendi perfe', 'South Abefurt', '');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('60', 'm', '1994-09-26', '60', 'Sit enim dolores dolores labor', 'West Margot', '19533606');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('61', 'x', '2016-06-08', '61', 'Accusantium magnam sunt offici', 'New Princess', '13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('62', 'x', '2020-11-16', '62', 'Ut aut eveniet consequatur lab', 'Rodriguezton', '81');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('63', 'x', '1991-10-04', '63', 'Veritatis et debitis quae est ', 'South Kyleeland', '861651228');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('64', 'm', '1976-08-30', '64', 'Suscipit dolor dolore consequa', 'Hillaryhaven', '13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('65', 'm', '1979-12-06', '65', 'Modi sint maiores harum odit. ', 'South Alexiebury', '67556');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('66', 'm', '1998-12-11', '66', 'Qui voluptatem doloribus offic', 'West Trace', '9238');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('67', 'x', '1999-01-09', '67', 'Deserunt quia non rerum nulla ', 'New Joana', '896763');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('68', 'f', '2017-01-13', '68', 'Dicta in autem dolor eum sit a', 'Darrenmouth', '6');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('69', 'f', '1987-01-30', '69', 'Unde molestiae esse est aut es', 'North Elenafurt', '734');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('70', 'f', '1986-01-27', '70', 'Quia numquam non quia ut tempo', 'Cordiefurt', '');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('71', 'm', '1986-07-30', '71', 'Ab provident sed voluptatibus ', 'Haleyberg', '4769104');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('72', 'f', '1986-04-11', '72', 'Enim repellendus quasi sequi q', 'Farrellburgh', '85756234');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('73', 'x', '1995-01-09', '73', 'Totam nostrum occaecati est as', 'Lake Davinburgh', '3828');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('74', 'm', '2007-04-13', '74', 'Incidunt omnis incidunt porro ', 'West Elmer', '89688679');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('75', 'm', '2016-03-05', '75', 'Voluptate neque illo sit maior', 'New Juanitaburgh', '5241');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('76', 'f', '1973-01-03', '76', 'Eligendi eligendi adipisci eaq', 'East Mabellehaven', '50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('77', 'm', '1995-11-19', '77', 'Ut cum ipsum totam facilis tem', 'North Nedra', '73565');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('78', 'x', '2002-12-22', '78', 'Fuga ea sunt inventore enim ul', 'Burleyburgh', '6172');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('79', 'm', '1994-08-14', '79', 'Impedit labore explicabo moles', 'Berniertown', '836');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('80', 'f', '2020-11-23', '80', 'Et omnis voluptatem ducimus om', 'North Anibal', '44022');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('81', 'f', '1989-04-13', '81', 'Eius delectus molestias repell', 'Marjolainemouth', '29850');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('82', 'm', '1995-10-23', '82', 'Pariatur non eos voluptatem ev', 'Wolffort', '54926499');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('83', 'f', '2003-04-07', '83', 'Reiciendis et et omnis fuga a ', 'North Krystel', '446624');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('84', 'm', '1975-01-03', '84', 'Repellat aut quis non. Volupta', 'Lexieton', '371361');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('85', 'm', '2020-07-10', '85', 'Quo illum voluptates labore od', 'Jaronchester', '917357661');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('86', 'm', '1973-09-26', '86', 'Dolores magni mollitia reicien', 'Port Beaumouth', '');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('87', 'f', '1986-03-12', '87', 'Quia et qui distinctio sed qua', 'West Ubaldo', '438058');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('88', 'f', '1983-02-06', '88', 'Voluptatem et aspernatur dolor', 'Quincyfurt', '690');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('89', 'f', '1974-03-07', '89', 'Laborum blanditiis placeat err', 'Port Abbie', '');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('90', 'f', '2013-03-11', '90', 'Error magni explicabo qui veli', 'East Arianna', '3004596');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('91', 'x', '2019-09-14', '91', 'Quia sit voluptatem unde sed d', 'Oramouth', '343017471');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('92', 'm', '2000-04-08', '92', 'Non hic cumque aut assumenda e', 'Haagmouth', '873498');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('93', 'm', '2001-06-02', '93', 'Quia iure rem laborum rerum di', 'Dallaschester', '58831460');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('94', 'f', '1991-06-17', '94', 'Eos quae aut veritatis. Nisi v', 'West Denisport', '6227476');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('95', 'm', '1998-09-09', '95', 'Quae aliquam rerum atque non. ', 'New Madelineberg', '3');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('96', 'm', '1984-06-28', '96', 'Similique facilis qui ex nam q', 'Lucasmouth', '8716567');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('97', 'f', '2012-05-19', '97', 'Dolorem rerum beatae voluptas.', 'South Elwyn', '39356');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('98', 'x', '2009-01-10', '98', 'Incidunt qui ipsam et cum amet', 'New Brannon', '53031');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('99', 'x', '2015-02-18', '99', 'Suscipit non aliquam nemo dese', 'East Reggie', '');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status`, `city`, `country`) VALUES ('100', 'x', '1972-04-20', '100', 'Temporibus est et nostrum inve', 'Vernieview', '17860853');
