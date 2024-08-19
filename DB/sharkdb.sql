-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema sharkdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `sharkdb` ;

-- -----------------------------------------------------
-- Schema sharkdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sharkdb` DEFAULT CHARACTER SET utf8 ;
USE `sharkdb` ;

-- -----------------------------------------------------
-- Table `shark_species`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `shark_species` ;

CREATE TABLE IF NOT EXISTS `shark_species` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `description` TEXT NULL,
  `max_length` INT NULL,
  `max_weight` INT NULL,
  `image_url` VARCHAR(2000) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS sharkuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'sharkuser'@'localhost' IDENTIFIED BY 'sharkuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'sharkuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `shark_species`
-- -----------------------------------------------------
START TRANSACTION;
USE `sharkdb`;
INSERT INTO `shark_species` (`id`, `name`, `description`, `max_length`, `max_weight`, `image_url`) VALUES (1, 'Great White Shark', 'The Largest predatory shark', 7, 2270, 'https://i.pinimg.com/564x/37/f9/eb/37f9eb55e20ed6ae8333ef06b68fed45.jpg');
INSERT INTO `shark_species` (`id`, `name`, `description`, `max_length`, `max_weight`, `image_url`) VALUES (2, 'Mako Shark', 'The fastest known species of shark', 2, 1750, 'https://i.pinimg.com/564x/b4/ab/a1/b4aba14a519d250aeb69a57544a966d6.jpg');
INSERT INTO `shark_species` (`id`, `name`, `description`, `max_length`, `max_weight`, `image_url`) VALUES (3, 'Hammerhead Shark', 'A giant shark with a distinct \"hammer\" shaped head', 6, 230, 'https://i.pinimg.com/564x/81/68/58/816858e028323a26353a64e5887886eb.jpg');
INSERT INTO `shark_species` (`id`, `name`, `description`, `max_length`, `max_weight`, `image_url`) VALUES (4, 'Whale Shark', 'The largest currently living shark', 14, 21000, 'https://i.pinimg.com/564x/a7/af/01/a7af0124e58cd525f654fda02b4b2912.jpg');
INSERT INTO `shark_species` (`id`, `name`, `description`, `max_length`, `max_weight`, `image_url`) VALUES (5, 'Bull Shark', 'An aggressive shark that can travel in fresh water', 3, 130, 'https://i.pinimg.com/736x/83/0d/d4/830dd46bd03894af7bceef17dd83fe14.jpg');
INSERT INTO `shark_species` (`id`, `name`, `description`, `max_length`, `max_weight`, `image_url`) VALUES (6, 'Basking Shark', 'Large plankton eating shark', 10, 14500, 'https://i.pinimg.com/564x/ce/43/8e/ce438e29d33356b03b4edfc12e3604d7.jpg');
INSERT INTO `shark_species` (`id`, `name`, `description`, `max_length`, `max_weight`, `image_url`) VALUES (7, 'Tiger Shark', 'A solitary, motly notcturnal hunter, has the widest food spectrum of all sharks', 4, 635, 'https://i.pinimg.com/564x/a4/21/3a/a4213ad6cbdbc706bf669f6eca583022.jpg');
INSERT INTO `shark_species` (`id`, `name`, `description`, `max_length`, `max_weight`, `image_url`) VALUES (8, 'Nurse Shark', 'An inshore bottomdwelling shark', 4, 330, 'https://i.pinimg.com/564x/5d/5b/86/5d5b867528404f22cb8225e19a1bb57d.jpg');
INSERT INTO `shark_species` (`id`, `name`, `description`, `max_length`, `max_weight`, `image_url`) VALUES (9, 'Greenland Shark', 'An extremely laong lived shark  that lives in cold environments', 6, 775, 'https://i.pinimg.com/564x/25/c4/9d/25c49d046a04df2e7df22e451ae5b614.jpg');
INSERT INTO `shark_species` (`id`, `name`, `description`, `max_length`, `max_weight`, `image_url`) VALUES (10, ' Megalodon', 'An extinct shark that is regarded as one of the largest and most powerful predators to have ever lived', 20, 59000, 'https://i.etsystatic.com/37725742/r/il/5b3656/6092994198/il_1588xN.6092994198_jkxj.jpg');

COMMIT;

