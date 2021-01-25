DROP DATABASE IF EXISTS `webDevelopment`;

CREATE DATABASE `webDevelopment`;

USE `webDevelopment`;

-- Exercice 1
-- Dans la base de données webDevelopment, créer la table languages avec les colonnes :
-- id (type INT, auto-incrémenté, clé primaire)
-- language (type VARCHAR)

CREATE TABLE `languages` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `language` VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

-- Exercice 2
-- Dans la base de données webDevelopment, créer la table tools avec les colonnes suivantes :
-- id (type INT, auto-incrémenté, clé primaire)
-- tool (type VARCHAR)

CREATE TABLE `tools` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `tool` VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

-- Exercice 3
-- Dans la base de données webDevelopment, créer la table frameworks avec les colonnes suivantes :
-- id (type INT, auto-incrémenté, clé primaire)
-- name (type VARCHAR)

CREATE TABLE `frameworks` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

-- Exercice 4
-- Dans la base de données webDevelopment, créer la table libraries avec les colonnes suivantes :
-- id (type INT, auto-incrémenté, clé primaire)
-- library (type VARCHAR)

CREATE TABLE `libraries` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `library` VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

-- Exercice 5
-- Dans la base de données webDevelopment, créer la table ide avec les colonnes suivantes :
-- id (type INT, auto-incrémenté, clé primaire)
-- ideName (type VARCHAR)

CREATE TABLE `ide` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

-- Exercice 6
-- Dans la base de données webDevelopment, créer, si elle n'existe pas, la table frameworks avec les colonnes suivantes :

-- id (type INT, auto-incrémenté, clé primaire)
-- name (type VARCHAR)

CREATE TABLE IF NOT EXISTS `frameworks` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

