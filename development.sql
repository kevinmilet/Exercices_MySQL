-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 27 jan. 2021 à 11:22
-- Version du serveur :  10.4.16-MariaDB
-- Version de PHP : 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `development`
--
CREATE DATABASE IF NOT EXISTS `development`;

USE `development`;

-- --------------------------------------------------------

--
-- Structure de la table `frameworks`
--

CREATE TABLE `frameworks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(40) NOT NULL,
  `languagesId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `frameworks`
--

INSERT INTO `frameworks` (`id`, `name`, `languagesId`) VALUES
(1, 'Qt', 3),
(2, 'SDK Android', 4),
(3, 'Bootstrap', 6),
(4, 'Foundation', 6),
(5, 'KNACSS', 6),
(6, 'Avalanche', 6),
(7, 'Miligram', 6),
(8, 'Skeleton', 6),
(9, 'Hoisin', 6),
(10, 'Inuit', 6),
(11, 'Mimic', 6),
(12, 'Ministrap', 6),
(13, 'Lotus', 6),
(14, 'Jquery', 7),
(15, 'Angular', 7),
(16, 'ReactJS', 7),
(17, 'Vue.js', 7),
(18, 'Ember.js', 7),
(19, 'Meteor.js', 7),
(20, 'Laravel', 8),
(21, 'Symfony', 8),
(22, 'CodeIgniter', 8),
(23, 'Yii', 8),
(24, 'Phalcon', 8),
(25, 'Lumen', 8),
(26, 'Silex', 8),
(27, 'Slim', 8),
(28, '.NET', 9),
(29, '.NET', 10),
(30, 'Django', 11),
(31, 'Ruby On Rails', 12);

-- --------------------------------------------------------

--
-- Structure de la table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `languages`
--

INSERT INTO `languages` (`id`, `name`) VALUES
(1, 'Assembleur'),
(2, 'C'),
(3, 'C++'),
(4, 'Java'),
(5, 'HTML'),
(6, 'CSS'),
(7, 'JavaScript'),
(8, 'PHP'),
(9, 'C#'),
(10, 'VB'),
(11, 'Python'),
(12, 'Ruby'),
(13, 'Swift');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `frameworks`
--
ALTER TABLE `frameworks`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `frameworks`
--
ALTER TABLE `frameworks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
