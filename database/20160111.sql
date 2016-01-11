CREATE TABLE `access` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `configuration` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL DEFAULT '0',
  `key_` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `person` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `dni` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `birthdate` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `medicalcoverage` varchar(255) NOT NULL,
  `maritalstate` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `person` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_User_username` (`username`),
  KEY `FK_User_person` (`person`),
  CONSTRAINT `FK_User_person` FOREIGN KEY (`person`) REFERENCES `person` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `useraccess` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL DEFAULT '0',
  `user` bigint(20) NOT NULL,
  `access` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_UserAccess_user` (`user`),
  KEY `FK_UserAccess_access` (`access`),
  CONSTRAINT `FK_UserAccess_access` FOREIGN KEY (`access`) REFERENCES `access` (`id`),
  CONSTRAINT `FK_UserAccess_user` FOREIGN KEY (`user`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
