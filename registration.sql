CREATE TABLE IF NOT EXISTS `std6102041510097`.`registration` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `client_id` INT(11) NULL DEFAULT NULL,
  `branch_id` INT(11) NULL DEFAULT NULL,
  `staff_id` INT(11) NULL DEFAULT NULL,
  `dateJoined` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `client_id` (`client_id` ASC),
  INDEX `branch_id` (`branch_id` ASC),
  INDEX `staff_id` (`staff_id` ASC),
  CONSTRAINT `registration_ibfk_1`
    FOREIGN KEY (`client_id`)
    REFERENCES `std6102041510097`.`client` (`id`),
  CONSTRAINT `registration_ibfk_2`
    FOREIGN KEY (`branch_id`)
    REFERENCES `std6102041510097`.`branch` (`id`),
  CONSTRAINT `registration_ibfk_3`
    FOREIGN KEY (`staff_id`)
    REFERENCES `std6102041510097`.`staff` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8