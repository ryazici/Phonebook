CREATE USER 'phonebook'@'localhost' IDENTIFIED BY 'password';

GRANT ALL PRIVILEGES ON * . * TO 'phonebook'@'localhost';


DROP SCHEMA IF EXISTS `phonebook`;

CREATE SCHEMA `phonebook`;

use `phonebook`;

SET foreign_key_checks  = 0;

DROP TABLE IF EXISTS `contact_detail`;

CREATE TABLE `contact_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mail` varchar(100) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ;


DROP TABLE IF EXISTS `contact`;

CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `contact_detail_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_DETAIL_idx` (`contact_detail_id`),
  CONSTRAINT `FK_DETAIL` FOREIGN KEY (`contact_detail_id`) REFERENCES `contact_detail` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
