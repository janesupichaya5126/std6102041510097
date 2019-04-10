CREATE TABLE IF NOT EXISTS `std6102041510097`.`viewing` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `client_id` INT(11) NULL DEFAULT NULL,
  `property_for_rent_id` INT(11) NULL DEFAULT NULL,
  `view_date` DATE NULL DEFAULT NULL,
  `comment` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `client_id` (`client_id` ASC),
  INDEX `fk_viewing_pfr_id_idx` (`property_for_rent_id` ASC),
  CONSTRAINT `fk_viewing_client_id`
    FOREIGN KEY (`client_id`)
    REFERENCES `std6102041510097`.`client` (`id`),
  CONSTRAINT `fk_viewing_pfr_id`
    FOREIGN KEY (`property_for_rent_id`)
    REFERENCES `std6102041510097`.`property_for_rent` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8