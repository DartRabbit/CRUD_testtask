CREATE TABLE `test`.`User` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(25) NOT NULL,
  `age` INT NOT NULL,
  `isAdmin` BIT(1) NOT NULL DEFAULT False,
  `createdDate` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
  ENGINE = InnoDB
  DEFAULT CHARACTER SET = utf8;
