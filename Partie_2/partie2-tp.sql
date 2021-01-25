DROP DATABASE IF EXISTS `codex`;

CREATE DATABASE IF NOT EXISTS`codex`;

USE `codex`;

CREATE TABLE IF NOT EXISTS `clients` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `lastname` VARCHAR(255) NOT NULL,
    `firstname` VARCHAR(255) NOT NULL,
    `birthdate` DATE NOT NULL,
    `adress` VARCHAR(255) NOT NULL,
    `firstPhoneNumber` SMALLINT NOT NULL,
    `secondPhoneNumber` SMALLINT NULL,
    `mail` VARCHAR(30) NOT NULL,
    PRIMARY KEY (`id`)
);
