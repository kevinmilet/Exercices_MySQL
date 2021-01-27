-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 27 jan. 2021 à 14:50
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
-- Base de données : `clients`
--
CREATE DATABASE IF NOT EXISTS `clients` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `clients`;

-- --------------------------------------------------------

--
-- Structure de la table `cities`
--

CREATE TABLE `cities` (
  `id_cities` int(11) NOT NULL,
  `city` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cities`
--

INSERT INTO `cities` (`id_cities`, `city`) VALUES
(1, 'Albert'),
(2, 'Amiens'),
(3, 'Paris');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id_client` int(11) UNSIGNED NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `city` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id_client`, `lastname`, `firstname`, `city`) VALUES
(3, 'Milet', 'Kevin', 1),
(4, 'Doe', 'John', 3),
(5, 'Flantier', 'Noël', 3),
(6, 'Bramard', 'Lucien', 2),
(7, 'Tata', 'Yoyo', 1);

-- --------------------------------------------------------

--
-- Structure de la table `commands`
--

CREATE TABLE `commands` (
  `id_command` int(10) UNSIGNED NOT NULL,
  `id_client` int(11) UNSIGNED NOT NULL,
  `command_number` char(4) NOT NULL,
  `command_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commands`
--

INSERT INTO `commands` (`id_command`, `id_client`, `command_number`, `command_date`) VALUES
(1, 3, 'C001', '2021-01-27'),
(2, 5, 'C002', '2020-12-03'),
(3, 6, 'C003', '2020-11-19'),
(4, 7, 'C004', '2021-01-27');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id_cities`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id_client`),
  ADD KEY `fk_city_id_cities` (`city`);

--
-- Index pour la table `commands`
--
ALTER TABLE `commands`
  ADD PRIMARY KEY (`id_command`),
  ADD KEY `fk_id_client_id_client` (`id_client`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cities`
--
ALTER TABLE `cities`
  MODIFY `id_cities` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id_client` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `commands`
--
ALTER TABLE `commands`
  MODIFY `id_command` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `fk_city_id_cities` FOREIGN KEY (`city`) REFERENCES `cities` (`id_cities`);

--
-- Contraintes pour la table `commands`
--
ALTER TABLE `commands`
  ADD CONSTRAINT `fk_id_client_id_client` FOREIGN KEY (`id_client`) REFERENCES `clients` (`id_client`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
