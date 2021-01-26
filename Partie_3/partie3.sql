USE `webDevelopment`;

-- Exercice 1
-- Dans la base de données webDevelopment, ajouter à la table languages une colonne versions (VARCHAR).

ALTER TABLE `languages` ADD `versions` VARCHAR(30);
-- possible avec ADD COLUMN

-- Exercice 2
-- Dans la base de données webDevelopment, ajouter à la table frameworks une colonne version (INT).

ALTER TABLE `frameworks` ADD `version` INT;

-- Exercice 3
-- Dans la base de données webDevelopment, dans la table languages renommer la colonne versions en version.

ALTER TABLE `languages` CHANGE `versions` `version` VARCHAR(30);

-- Exercice 4
-- Dans la base de données webDevelopment, dans la table frameworks, renommer la colonne name en framework.

ALTER TABLE `frameworks` CHANGE `name` `framework` VARCHAR(30);

-- Exercice 5
-- Dans la base de données webDevelopment, dans la table frameworks changer le type de la colonne version en VARCHAR de taille 10.

ALTER TABLE `frameworks` MODIFY `version` VARCHAR(10);
