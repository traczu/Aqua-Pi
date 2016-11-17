/* 
Skrypt tworzący bazę danych aqua.db wraz ze strukturą i danymi testowymi.
GitHub https://github.com/traczu/Aqua-Pi
Grupa https://groups.google.com/forum/#!forum/aqua-pi
*/

CREATE DATABASE `aqua`;

USE `aqua`;

CREATE TABLE `aquariums` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
);

CREATE TABLE `devices` (
  `id` INT NOT NULL,
  `aquarium_id` INT NULL,
  `name` VARCHAR(45) NULL,
  `description` VARCHAR(500) NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_devices_aquariums_aquarium_id` 
    FOREIGN KEY (`aquarium_id`) 
    REFERENCES `aquariums` (`id`) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION
);

/* 
No mamy zapał do tworzenia tej bazy...
Ale pomału pewnie coś drgnie :-)
Pozdro!
Maciej
*/