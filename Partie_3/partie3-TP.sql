-- Dans la base codex, dans la table clients :

-- supprimer la colonne secondPhoneNumber
-- renommer la colonne firstPhoneNumber en phoneNumber
-- changer le type de la colonne phoneNumber en VARCHAR
-- ajouter les colonnes zipCode(VARCHAR) et city(VARCHAR)

USE `codex`;

ALTER TABLE `clients` DROP COLUMN `secondPhoneNumber`;

ALTER TABLE `clients` CHANGE `firstPhoneNumber` `phoneNumber` VARCHAR(30);

ALTER TABLE `clients` ADD COLUMN `zipCode` VARCHAR(10);

ALTER TABLE `clients` ADD COLUMN `city` VARCHAR(30);
