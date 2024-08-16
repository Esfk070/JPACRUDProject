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
CREATE USER 'sharkuser'@'localhost' IDENTIFIED BY 'sharkuser@localhost';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'sharkuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `shark_species`
-- -----------------------------------------------------
START TRANSACTION;
USE `sharkdb`;
INSERT INTO `shark_species` (`id`, `name`, `description`, `max_length`, `max_weight`, `image_url`) VALUES (1, 'Great White Shark', NULL, NULL, NULL, NULL);

COMMIT;

