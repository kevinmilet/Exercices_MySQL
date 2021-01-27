-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 27 jan. 2021 à 11:20
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
-- Base de données : `webdevelopment`
--

CREATE DATABASE IF NOT EXISTS `webDevelopment`;

USE `webDevelopment`;

-- --------------------------------------------------------

--
-- Structure de la table `frameworks`
--

CREATE TABLE `frameworks` (
  `id` int(11) NOT NULL,
  `framework` varchar(30) DEFAULT NULL,
  `version` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `frameworks`
--

INSERT INTO `frameworks` (`id`, `framework`, `version`) VALUES
(1, 'Symfony2', '2.8'),
(2, 'Symfony2', '3'),
(3, 'JQuery', '1.6'),
(4, 'JQuery', '2.10');

-- --------------------------------------------------------

--
-- Structure de la table `ide`
--

CREATE TABLE `ide` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(40) NOT NULL,
  `version` varchar(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `ide`
--

INSERT INTO `ide` (`id`, `name`, `version`, `date`) VALUES
(1, 'Eclipse', '3.3', '2007-06-01'),
(2, 'Eclipse', '3.5', '2009-06-01'),
(3, 'Eclipse', '3.6', '2010-06-01'),
(4, 'Eclipse', '3.7', '2011-06-01'),
(5, 'Eclipse', '4.3', '2013-06-13'),
(6, 'NetBeans', '7', '2011-04-01'),
(7, 'NetBeans', '8.2', '2016-10-03');

-- --------------------------------------------------------

--
-- Structure de la table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `language` varchar(255) NOT NULL,
  `version` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `languages`
--

INSERT INTO `languages` (`id`, `language`, `version`) VALUES
(2, 'JavaScript', '5.1'),
(3, 'PHP', '5.2'),
(4, 'PHP', '5.4'),
(6, 'JavaScript', '6'),
(7, 'JavaScript', '7'),
(8, 'JavaScript', '8'),
(9, 'PHP', '7');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `frameworks`
--
ALTER TABLE `frameworks`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ide`
--
ALTER TABLE `ide`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `ide`
--
ALTER TABLE `ide`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
