USE `webDevelopment`;

ALTER TABLE `languages` ADD COLUMN `versions` VARCHAR(30);

ALTER TABLE `frameworks` ADD COLUMN `version` INT;

ALTER TABLE `languages` CHANGE `versions` `version` VARCHAR(30);

ALTER TABLE `frameworks` CHANGE `name` `framework` VARCHAR(30);

ALTER TABLE `frameworks` MODIFY `version` VARCHAR(10);
