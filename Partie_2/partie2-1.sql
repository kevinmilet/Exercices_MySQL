DROP DATABASE IF EXISTS `webDevelopment`;

CREATE DATABASE `webDevelopment`;

USE `webDevelopment`;

CREATE TABLE `languages` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `language` VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE `tools` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `tool` VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE `frameworks` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE `libraries` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `library` VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE `ide` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS `frameworks` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

