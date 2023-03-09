-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 09 mars 2023 à 09:41
-- Version du serveur :  8.0.32-0ubuntu0.20.04.2
-- Version de PHP : 7.4.3-4ubuntu2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `Projet`
--

-- --------------------------------------------------------

--
-- Structure de la table `badge`
--

CREATE TABLE `badge` (
  `badgeid` int NOT NULL,
  `badgecode` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `opencasier` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `badge`
--

INSERT INTO `badge` (`badgeid`, `badgecode`, `opencasier`) VALUES
(1, '76 83 3c f8', 1),
(6, 'A1 B2 C3 D4', 7),
(7, 'A1 B2 C3 D4', 7),
(8, 'A1 B2 C3 D4', 7),
(9, 'A1 B2 C3 D4', 7),
(10, 'A1 B2 C3 D4', 7),
(11, 'A1 B2 C3 D4', 7),
(12, 'A1 B2 C3 D4', 7),
(13, 'A1 B2 C3 D4', 7),
(14, 'A1 B2 C3 D4', 7),
(15, 'A1 B2 C3 D4', 7),
(16, 'A1 B2 C3 D4', 7),
(17, 'A1 B2 C3 D4', 7),
(18, 'A1 B2 C3 D4', 7),
(19, 'A3 6B F9 C4', 8);

-- --------------------------------------------------------

--
-- Structure de la table `casier`
--

CREATE TABLE `casier` (
  `casierid` int NOT NULL,
  `porte` tinyint(1) NOT NULL,
  `cle` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `casier`
--

INSERT INTO `casier` (`casierid`, `porte`, `cle`) VALUES
(1, 1, 0),
(2, 1, 1),
(3, 1, 0),
(4, 0, 1),
(5, 0, 0),
(6, 1, 0),
(7, 1, 1),
(8, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `logs`
--

CREATE TABLE `logs` (
  `heure` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `badgeid` varchar(11) NOT NULL,
  `casierid` int NOT NULL,
  `succes` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `logs`
--

INSERT INTO `logs` (`heure`, `badgeid`, `casierid`, `succes`) VALUES
('2023-03-08 18:17:22', '76 83 3c f8', 1, 1),
('2023-03-08 18:20:46', '76 83 3c f8', 1, 1),
('2023-03-09 09:29:44', '76 83 3c f8', 1, 1),
('2023-03-09 09:31:46', '76 83 3c f8', 1, 1),
('2023-03-09 09:32:36', 'd9 f9 b1 47', 1, 0),
('2023-03-09 09:36:35', '76 83 3c f8', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `test`
--

CREATE TABLE `test` (
  `id` int NOT NULL,
  `badge` varchar(500) NOT NULL,
  `userid` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `test`
--

INSERT INTO `test` (`id`, `badge`, `userid`) VALUES
(1, 'GYUVGJ', 1),
(2, '0B3AK809', 1),
(3, '76 83 3c f8', 1),
(4, '76 83 3c f8', 1),
(5, 'd9 f9 b1 47', 1),
(6, '1!76 83 3c f8!cle!porte', 1),
(7, '1!76 83 3c f8!cle!porte', 1),
(8, '1!76 83 3c f8!cle!porte', 1),
(9, '1!76 83 3c f8!cle!porte', 1),
(10, '83', 1),
(11, '76 83 3c f8', 1),
(12, '76 83 3c f8', 1),
(13, '76 83 3c f8', 1),
(14, '76 83 3c f8', 1),
(15, '76 83 3c f8', 1),
(16, '76 83 3c f8', 1),
(17, '76 83 3c f8', 1),
(18, '76 83 3c f8', 1),
(19, '76 83 3c f8', 1),
(20, '76 83 3c f8', 1),
(21, '76 83 3c f8', 1),
(22, '76 83 3c f8', 1),
(23, '76 83 3c f8', 1),
(24, '76 83 3c f8', 1),
(25, '76 83 3c f8', 1),
(26, '76 83 3c f8', 1),
(27, '76 83 3c f8', 1),
(28, '76 83 3c f8', 1),
(29, 'd9 f9 b1 47', 1),
(30, 'd9 f9 b1 47', 1),
(31, '76 83 3c f8', 1),
(32, '76 83 3c f8', 1),
(33, '76 83 3c f8', 1),
(34, '76 83 3c f8', 1),
(35, '76 83 3c f8', 1),
(36, '76 83 3c f8', 1),
(37, '76 83 3c f8', 1),
(38, '76 83 3c f8', 1),
(39, '76 83 3c f8', 1),
(40, '76 83 3c f8', 1),
(41, '76 83 3c f8', 1);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `nom` varchar(10) NOT NULL,
  `prenom` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `badgeid` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `nom`, `prenom`, `badgeid`) VALUES
(1, 'LAURENT', 'Arthur', 1),
(2, 'PROCUREUR', 'Hugo', 2),
(7, 'MOI', 'Lui', 6),
(8, 'MOI', 'Lui', 7),
(9, 'MOI', 'Lui', 8),
(10, 'MOI', 'Lui', 9),
(11, 'MOI', 'Lui', 10),
(12, 'MOI', 'Lui', 11),
(13, 'MOI', 'Lui', 12),
(14, 'MOI', 'Lui', 13),
(15, 'MOI', 'Lui', 14),
(16, 'MOI', 'Lui', 15),
(17, 'MOI', 'Lui', 16),
(18, 'MOI', 'Lui', 17),
(19, 'MOI', 'Lui', 18),
(20, 'jean', 'michel', 19);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `badge`
--
ALTER TABLE `badge`
  ADD PRIMARY KEY (`badgeid`);

--
-- Index pour la table `casier`
--
ALTER TABLE `casier`
  ADD PRIMARY KEY (`casierid`);

--
-- Index pour la table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `badge`
--
ALTER TABLE `badge`
  MODIFY `badgeid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `casier`
--
ALTER TABLE `casier`
  MODIFY `casierid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `test`
--
ALTER TABLE `test`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
