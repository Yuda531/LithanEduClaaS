CREATE TABLE `kyn_a4`.`role` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `description` VARCHAR(255) NULL DEFAULT NULL,
  `name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`));
  
  CREATE TABLE `kyn_a4`.`user_role` (
  `user_id` BIGINT NOT NULL,
  `role_id` BIGINT NOT NULL,
  PRIMARY KEY (`user_id`, `role_id`));
  
INSERT INTO `kyn_a4`.`role` (`description`, `name`) VALUES ('for Admin', 'Administrator');
INSERT INTO `kyn_a4`.`role` (`description`, `name`) VALUES ('for User', 'Users');

  