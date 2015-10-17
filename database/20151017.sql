CREATE DATABASE waretech_DrTech;

USE waretech_DrTech;

CREATE TABLE `access` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `configuration` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL DEFAULT '0',
  `key_` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL DEFAULT '0',
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_User_username` (`username`),
  UNIQUE KEY `UK_User_firstname_lastname` (`firstname`,`lastname`)
);

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
);
