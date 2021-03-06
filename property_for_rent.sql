CREATE TABLE IF NOT EXISTS `std6102041510097`.`property_for_rent` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `property_no` VARCHAR(5) NULL DEFAULT NULL,
  `type` VARCHAR(50) NULL DEFAULT NULL,
  `rooms` INT(5) NULL DEFAULT NULL,
  `rent` FLOAT(7,2) NULL DEFAULT NULL,
  `private_owner_id` INT(11) NULL DEFAULT NULL,
  `staff_id` INT(11) NULL DEFAULT NULL,
  `branch_id` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `branch_id` (`branch_id` ASC),
  INDEX `private_owner_id` (`private_owner_id` ASC),
  INDEX `staff_id` (`staff_id` ASC),
  CONSTRAINT `property_for_rent_ibfk_1`
    FOREIGN KEY (`branch_id`)
    REFERENCES `std6102041510097`.`branch` (`id`),
  CONSTRAINT `property_for_rent_ibfk_2`
    FOREIGN KEY (`private_owner_id`)
    REFERENCES `std6102041510097`.`private_owner` (`id`),
  CONSTRAINT `property_for_rent_ibfk_3`
    FOREIGN KEY (`staff_id`)
    REFERENCES `std6102041510097`.`staff` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;