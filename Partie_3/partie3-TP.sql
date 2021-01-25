USE `codex`;

ALTER TABLE `clients` (
    DROP COLUMN `secondPhoneNumber`,
    CHANGE `firstPhoneNumber` `phoneNumber` VARCHAR(30),
    ADD COLUMN `zipCode` VARCHAR(10),
    ADD COLUMN `city` VARCHAR(30)
);


