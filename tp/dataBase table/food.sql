-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 14 avr. 2022 à 21:15
-- Version du serveur :  5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tp`
--

-- --------------------------------------------------------

--
-- Structure de la table `food`
--

DROP TABLE IF EXISTS `food`;
CREATE TABLE IF NOT EXISTS `food` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `kcal` int(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `food`
--

INSERT INTO `food` (`id`, `title`, `kcal`, `description`) VALUES
(1, 'Salade de fruit', 102, 'tres bien pour les diabetiques'),
(2, 'Pizza', 26, 'gras ... adaptee pour prendre du poids '),
(3, 'Malaxe de banane', 350, 'gras tres bon plus consomer en afrique de l\'ouest'),
(7, 'Mbongo', 203, 'Nourriture camerounaise mange si tu veux caller a yaounde'),
(5, 'Pizza ', 128, 'trop bon'),
(6, 'Pomme Sautee', 100, 'Nouriturre Affricaine'),
(8, 'Choux sautee', 128, 'vegetarien'),
(9, 'Taro', 2350, 'est un plat divin'),
(10, 'taro', 2340, 'est un plat divin'),
(11, 'Omelette', 126, 'Fast Food pour les celibataire'),
(12, 'Pistache', 675, 'bon mets de pistaches contre la prostate'),
(13, 'Pistache', 654, 'bon mets de pistaches contre la prostate'),
(14, 'Poisson a la poÃªle', 573, 'trop bon'),
(15, 'Salade', 474, 'hgdybbklnfdsc'),
(16, 'Rotis de porc', 235, 'Tres bon surtout avec du piment');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
