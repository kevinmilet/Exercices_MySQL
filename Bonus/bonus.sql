-- BONUS CLES ETRANGERES
-- Créer une bdd de clients (nom, prénom, ville de résidence) pour gérer leurs commandes.

DROP DATABASE IF EXISTS `clients`;

CREATE DATABASE `clients`;

CREATE TABLE `clients` (
    `id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `lastname` VARCHAR(30) NOT NULL,
    `firstname` VARCHAR(30) NOT NULL,
    `city` INT NOT NULL
);

CREATE TABLE `cities`(
    `id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `city` VARCHAR(30) NOT NULL
);

CREATE TABLE `commands`;