/* 
Skrypt tworzący bazę danych aqua.db wraz ze strukturą i danymi testowymi.
GitHub https://github.com/traczu/Aqua-Pi
Grupa https://groups.google.com/forum/#!forum/aqua-pi
*/

CREATE DATABASE `aqua` /*!40100 DEFAULT CHARACTER SET latin1 */;

CREATE TABLE `aquariums` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `devices` (
  `id` int(11) NOT NULL,
  `aquarium_id` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_idx` (`aquarium_id`),
  CONSTRAINT `id` FOREIGN KEY (`aquarium_id`) REFERENCES `aquariums` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/* 
No mamy zapał do tworzenia tej bazy...
Ale pomału pewnie coś drgnie :-)
Pozdro!
Maciej
*/