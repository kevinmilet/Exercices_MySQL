-- Exercicec 1
-- Dans la table languages, supprimer toutes les lignes parlant de HTML.

DELETE FROM `languages` where `language` = 'HTML';

-- Exercice 2
-- Dans la table frameworks, modifier toutes les lignes ayant le framework Symfony par Symfony2.

UPDATE `frameworks` SET `framework` = 'Symfony2' WHERE `framework` = 'Symfony';

-- Exercice 3
-- Dans la table languages, modifier la ligne du langage JavaScript version 5 par la version 5.1

UPDATE `languages` SET `version` = '5.1' WHERE `language` = 'Javascript' AND `version` = '5';