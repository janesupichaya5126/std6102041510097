CREATE TABLE IF NOT EXISTS `std6102041510097`.`user` (
  `id` INT NOT NULL,
  `username` VARCHAR(128) NOT NULL,
  `email` VARCHAR(160) NOT NULL,
  `password` VARCHAR(128) NOT NULL,
  `created_at` DATETIME NULL,
  `updated_at` TIMESTAMP NULL,
  `is_active` ENUM('Active', 'Inactive')DEFAULT 'Active',
  PRIMARY KEY (`id`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
ENGINE = InnoDB