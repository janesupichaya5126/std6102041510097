CREATE TABLE IF NOT EXISTS `std6102041510097`.`staff` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `staff_no` VARCHAR(5) NULL DEFAULT NULL,
  `f_name` VARCHAR(100) NULL DEFAULT NULL,
  `l_name` VARCHAR(100) NULL DEFAULT NULL,
  `position` VARCHAR(50) NULL DEFAULT NULL,
  `sex` VARCHAR(2) NULL DEFAULT NULL,
  `d_o_b` DATE NULL DEFAULT NULL,
  `salary` FLOAT(7,2) NULL DEFAULT NULL,
  `branch_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `branch_id_idx` (`branch_id` ASC),
  CONSTRAINT `branch_id`
    FOREIGN KEY (`branch_id`)
    REFERENCES `std6102041510097`.`branch` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8