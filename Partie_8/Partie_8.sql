USE `development`;

-- Exercice 1
-- Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework l'afficher aussi.

SELECT `languages`.`name` AS `Languages`, `frameworks`.`name` AS `Frameworks` FROM `languages` LEFT JOIN `frameworks` ON `languages`.`id` = `frameworks`.`languagesId`;

-- Exercice 2
-- Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework ne pas l'afficher.

SELECT `languages`.`name` AS `Languages`, `frameworks`.`name` AS `Frameworks` FROM `languages` INNER JOIN `frameworks` ON `languages`.`id` = `frameworks`.`languagesId`;

-- Exercice 3
-- Afficher le nombre de framework qu'a un langage.

SELECT `languages`.`name` AS `Languages`, COUNT(`frameworks`.`languagesId`) AS `Frameworks` FROM `languages` INNER JOIN `frameworks` ON `languages`.`id` = `frameworks`.`languagesId` GROUP BY `frameworks`.`languagesId`; 

-- Exercice 4
-- Afficher les langages ayant plus de 3 frameworks.

SELECT `languages`.`name` AS `Languages`, COUNT(`frameworks`.`languagesId`) AS `Frameworks` FROM `languages` INNER JOIN `frameworks` ON `languages`.`id` = `frameworks`.`languagesId` GROUP BY `frameworks`.`languagesId` HAVING COUNT(`frameworks`.`languagesId`) > 3; -- ou HAVING `Frameworks` > 3