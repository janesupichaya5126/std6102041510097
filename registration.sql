CREATE TABLE IF NOT EXISTS `std6102041510097`.`registration` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `property_for_rent_id` INT(11) NULL DEFAULT NULL,
  `dateJoined` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `client_id` (`property_for_rent_id` ASC),
  CONSTRAINT `fk_registration_pfr_id`
    FOREIGN KEY (`property_for_rent_id`)
    REFERENCES `std6102041510097`.`property_for_rent` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8