USE `codex`;

ALTER TABLE `clients` DROP COLUMN `secondPhoneNumber`;

ALTER TABLE `clients` CHANGE `firstPhoneNumber` `phoneNumber` VARCHAR(30);

ALTER TABLE `clients` ADD COLUMN `zipCode` VARCHAR(10);

ALTER TABLE `clients` ADD COLUMN `city` VARCHAR(30);


