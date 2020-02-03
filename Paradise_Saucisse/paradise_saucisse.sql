-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 13 déc. 2019 à 08:15
-- Version du serveur :  5.7.26-log
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `paradise_saucisse`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `cli_id` varchar(20) NOT NULL,
  `cli_mdp` varchar(150) NOT NULL,
  `cli_mail` varchar(100) NOT NULL,
  `cli_tel` varchar(10) NOT NULL,
  `cli_dnaissance` datetime DEFAULT NULL,
  PRIMARY KEY (`cli_id`),
  UNIQUE KEY `cli_id` (`cli_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`cli_id`, `cli_mdp`, `cli_mail`, `cli_tel`, `cli_dnaissance`) VALUES
('Herme', 'epbygte', 'jimmy.agaasse@orange.fr', '610579205', '1994-12-12 00:00:00'),
('Hermito', '$2y$10$2GIyHEI2iV6815XxbXThHOOHL1DeYX2Q2aJfH7Io8pV7selp/UbN2', 'jimmy.agaasse@orange.fr', '0610579205', NULL),
('toto', '$2y$10$XwDabhQ8gSbowbhYDbzPmeBiOMl3uS4oaJrV.WzZ9f0uSacEGHnSi', 'toto@toto.com', '0123456789', NULL),
('tatsuyaru', '$2y$10$qtFE4EFpu.AYInzqA3UNsuYkDN3Zg1XgENBrA7SAXeUQM4AKq3MVy', 'teste@teste.com', '0000000000', NULL),
('Josiane', '$2y$10$bfcQ9qRIinP/vjNISDn/u.TlWIVvRcPkLUVCU12Xmwb9czfRd/qeO', 'josiane@balasco.fr', '0458926233', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

DROP TABLE IF EXISTS `produits`;
CREATE TABLE IF NOT EXISTS `produits` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_nom` varchar(20) NOT NULL,
  `pro_description` varchar(200) DEFAULT NULL,
  `pro_prix` int(11) NOT NULL,
  PRIMARY KEY (`pro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
