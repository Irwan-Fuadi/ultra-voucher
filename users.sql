DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

BEGIN;
INSERT INTO `users` VALUES (1, 'Zaki', 2);
INSERT INTO `users` VALUES (2, 'Ilham', NULL);
INSERT INTO `users` VALUES (3, 'Irwan', 2);
INSERT INTO `users` VALUES (4, 'Arka', 3);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
