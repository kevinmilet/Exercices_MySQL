-- Créer la base codex. Y créer une table clients qui aura comme colonnes :


-- Colonne	Type	Attributs
-- id INT	Auto-incrémenté, clé primaire
-- lastname	VARCHAR	
-- firstname	VARCHAR	
-- birthDate	DATE	
-- address	VARCHAR	
-- firstPhoneNumber	INT	
-- secondPhoneNumber	INT	
-- mail	VARCHAR	

DROP DATABASE IF EXISTS `codex`;

CREATE DATABASE IF NOT EXISTS`codex`;

USE `codex`;

CREATE TABLE IF NOT EXISTS `clients` (
    `id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `lastname` VARCHAR(255) NOT NULL,
    `firstname` VARCHAR(255) NOT NULL,
    `birthdate` DATE NOT NULL,
    `adress` VARCHAR(255) NOT NULL,
    `firstPhoneNumber` SMALLINT NOT NULL,
    `secondPhoneNumber` SMALLINT NULL,
    `mail` VARCHAR(30) NOT NULL,
);
