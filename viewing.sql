CREATE TABLE IF NOT EXISTS `std6102041510097`.`viewing` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `client_id` INT(11) NULL DEFAULT NULL,
  `property_id` INT(11) NULL DEFAULT NULL,
  `view_date` DATE NULL DEFAULT NULL,
  `comment` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `client_id` (`client_id` ASC),
  CONSTRAINT `viewing_ibfk_1`
    FOREIGN KEY (`client_id`)
    REFERENCES `std6102041510097`.`client` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8