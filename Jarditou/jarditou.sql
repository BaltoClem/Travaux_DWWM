-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 13 déc. 2019 à 08:14
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
-- Base de données :  `jarditou`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Clé de la table catégorie',
  `cat_nom` varchar(200) NOT NULL COMMENT 'Nom de la catégorie',
  `cat_parent` int(10) UNSIGNED DEFAULT NULL COMMENT 'Catégorie parente',
  PRIMARY KEY (`cat_id`),
  KEY `fk_categories_cat_parent` (`cat_parent`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_nom`, `cat_parent`) VALUES
(1, 'Outillage', NULL),
(2, 'Outillage manuel', 1),
(3, 'Outillage mécanique', 2),
(4, 'Plants et semis', NULL),
(5, 'Arbres et arbustes', NULL),
(6, 'Pots et accessoires', NULL),
(7, 'Mobilier de jardin', NULL),
(8, 'Matériaux', NULL),
(9, 'Tondeuses éléctriques', 3),
(10, 'Tondeuses à moteur thermique', 3),
(11, 'Débroussailleuses', 3),
(12, 'Sécateurs', 2),
(13, 'Brouettes', 2),
(14, 'Tomates', 4),
(15, 'Poireaux', 4),
(16, 'Salade', 4),
(17, 'Haricots', 4),
(18, 'Thuyas', 5),
(19, 'Oliviers', 5),
(20, 'Pommiers', 5),
(21, 'Pots de fleurs', 6),
(22, 'Soucoupes', 6),
(23, 'Supports', 6),
(24, 'Transats', 7),
(25, 'Parasols', 7),
(26, 'Tonnelles', 7),
(27, 'Barbecues', 7),
(28, 'Lames de terrasse', 8),
(29, 'Grillages', 8),
(30, 'Panneaux de clôture', 8);

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

DROP TABLE IF EXISTS `produits`;
CREATE TABLE IF NOT EXISTS `produits` (
  `pro_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Clé de la table produits',
  `pro_cat_id` int(10) UNSIGNED NOT NULL COMMENT 'Catégorie du produit',
  `pro_ref` varchar(10) NOT NULL COMMENT 'Référence produit',
  `pro_libelle` varchar(200) NOT NULL COMMENT 'Nom du produit',
  `pro_description` varchar(1000) DEFAULT NULL COMMENT 'Description du produit',
  `pro_prix` decimal(6,2) UNSIGNED NOT NULL COMMENT 'Prix ',
  `pro_stock` int(11) NOT NULL DEFAULT '0' COMMENT 'Nombre d''unités en stock',
  `pro_couleur` varchar(30) DEFAULT NULL COMMENT 'Couleur',
  `pro_photo` varchar(10) DEFAULT 'jpg' COMMENT 'Extension de la photo',
  `pro_d_ajout` date NOT NULL COMMENT 'Date d''ajout',
  `pro_d_modif` datetime DEFAULT NULL COMMENT 'Date de modification',
  `pro_bloque` tinyint(1) DEFAULT NULL COMMENT 'Bloquer le produit à la vente',
  PRIMARY KEY (`pro_id`),
  KEY `fk_produits_cat_id` (`pro_cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`pro_id`, `pro_cat_id`, `pro_ref`, `pro_libelle`, `pro_description`, `pro_prix`, `pro_stock`, `pro_couleur`, `pro_photo`, `pro_d_ajout`, `pro_d_modif`, `pro_bloque`) VALUES
(11, 27, 'Richard', 'Aldana', 'htrth', '2424.00', 5727, 'tyutyu', 'jpg', '2017-10-18', '2019-07-30 00:00:00', NULL),
(12, 27, 'barb004', 'Camping', 'Phasellus auctor mattis justo, in semper urna congue eget. Nunc sit amet nunc sed dui fringilla scelerisque a eget sem. Aenean cursus eros vehicula arcu blandit, sit amet faucibus leo finibus. Duis pharetra felis eget viverra tempor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas', '88.00', 5, 'Noir', 'jpg', '2018-08-20', NULL, 1),
(13, 13, 'brou001', 'Green', 'Fusce interdum ex justo, vel imperdiet erat volutpat non. Donec et maximus lacus. ', '49.00', 25, 'Verte', 'jpg', '2018-08-01', NULL, NULL),
(15, 13, 'brou003', 'Yellow', 'Sed lobortis pulvinar orci, ut efficitur urna egestas eu.', '54.49', 3, 'Jaune', 'jpg', '2018-08-12', NULL, NULL),
(16, 2, 'GA410', 'Bêche GA 410', 'Nulla at consequat orci.', '19.90', 50, 'Gris', 'png', '2018-08-13', '2019-07-17 00:00:00', NULL),
(17, 2, 'beche002', 'Bêche GA 388', 'Curabitur varius interdum nulla, sit amet consequat massa. Vestibulum rutrum leo lectus. Phasellus sit amet viverra velit.', '24.90', 1, 'Argent', 'png', '2018-03-15', NULL, NULL),
(19, 2, 'scm559', 'Scie couteau', 'raesent ante felis, iaculis vitae lectus sed, luctus laoreet metus. Aenean mattis egestas eleifend. Morbi dictum erat ut lorem porta, a volutpat nibh ultrices. Nunc ut tortor ac velit fringilla dictum at non nulla.', '14.90', 4, 'Bleu', 'png', '2018-04-13', '2019-07-17 00:00:00', NULL),
(20, 2, 'h0662', 'Hache H062', 'Cras nec dapibus erat. Cras bibendum auctor dui quis tristique.', '31.19', 0, 'Noir', 'png', '2018-08-12', NULL, NULL),
(21, 11, 'DB0703', 'Titan', 'Etiam eu sem ligula. Donec aliquet velit a condimentum sagittis. Nullam ipsum augue, porta non vestibulum cursus, eleifend tempor erat. Proin et turpis molestie augue mollis laoreet. Nulla lorem tellus, pellentesque nec hendrerit vehicula, consectetur non nisl. Maecenas eget accumsan lectus. Vivamus eleifend lorem scelerisque augue rutrum laoreet. ', '599.99', 4, 'Bleue', 'png', '1999-08-26', '2019-07-17 00:00:00', NULL),
(22, 11, 'DB0755', 'Attila', 'Là où passe Attila, l\'herbe ne repousse pas.', '499.99', 0, 'Bleue', 'png', '2018-05-16', NULL, NULL),
(23, 28, 'LAM121', 'Aquitaine', 'Integer aliquet accumsan eleifend. Pellentesque mauris tortor, ultricies a pulvinar ut, fringilla ac mi. Sed consequat, nibh at tempus porttitor, tellus nunc dictum nulla, sed finibus felis augue sed libero. Donec augue mi, mattis et orci ac, mollis feugiat elit.', '12.00', 0, 'Rouge', 'jpg', '2018-03-17', NULL, NULL),
(24, 28, 'LAM233', 'Brown', 'Morbi porta ultricies nibh vel varius. Vestibulum nec rutrum ex, vel posuere nisi. Ut scelerisque sit amet ligula sed imperdiet. Morbi lacinia sapien in elementum iaculis. Vivamus a ultrices enim. ', '9.98', 500, 'Brun', 'jpg', '2018-03-17', NULL, NULL),
(25, 25, 'PRS-01C', 'Biarritz', 'Quisque fermentum, dui eu elementum sagittis, risus lorem placerat ipsum, vitae venenatis tellus sapien id nibh. Suspendisse et aliquet tellus, in suscipit magna.', '157.00', 5, 'Brun', 'jpg', '2018-08-19', '2019-07-17 00:00:00', 1),
(26, 25, 'PRS-38A', 'Cannes', 'Curabitur sodales sem vitae ex commodo, in ullamcorper quam congue. Aliquam erat volutpat. Praesent mollis at velit eu molestie. Proin ac tellus a enim venenatis ultrices vitae sed libero. Vivamus at vulputate orci. Curabitur mattis ac turpis id tempus. Sed turpis enim, egestas ac arcu et, elementum luctus ante.', '299.40', 4, 'rOSE', 'jpg', '2018-08-12', NULL, NULL),
(27, 25, 'PRS-87F', 'Crotoy', 'Morbi porta ultricies nibh vel varius. Vestibulum nec rutrum ex, vel posuere nisi. Ut scelerisque sit amet ligula sed imperdiet. Morbi lacinia sapien in elementum iaculis.', '89.00', 21, 'Rouge', 'jpg', '2018-04-12', '2018-08-21 00:00:00', NULL),
(28, 21, 'POT_001', 'Agave', '. Vivamus a ultrices enim. Etiam at viverra justo. Cras consectetur justo euismod mi maximus, ac tincidunt leo suscipit. Quisque fermentum, dui eu elementum sagittis, risus lorem placerat ipsum, vitae venenatis tellus sapien id nibh.', '288.32', 11, 'Orange', 'jpg', '2017-11-12', NULL, NULL),
(29, 21, 'POT_002', 'Dark', 'Caca', '32.05', 45, 'Noir', 'jpg', '2018-08-19', '2019-07-15 00:00:00', 1),
(30, 21, 'POT_003', 'Fuschia', 'Vel porta orci convallis. Duis sodales vehicula porta. Etiam sit amet scelerisque massa. ', '149.97', 0, 'Rose', 'jpg', '2018-03-04', NULL, NULL),
(31, 6, 'POT-381', 'Iris', 'Praesent nunc dui, porta at leo eget, iaculis ultrices quam. Mauris vulputate metus in nisl aliquam, et sollicitudin nisl mollis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ', '245.00', 10, 'Marron', 'jpg', '2017-04-16', NULL, NULL),
(32, 2, 'SEC-A', 'Bahco', 'In hac habitasse platea dictumst. Quisque at sagittis nunc.', '9.90', 280, 'Orange', 'jpg', '2018-08-14', '2019-07-17 00:00:00', NULL),
(33, 27, 'SEC-B', 'Red', 'Phasellus ac gravida lorem. Aliquam sed aliquam nisl. Etiam non ornare sapien. Aenean ut tellus non risus varius bibendum quis vel ligula.', '14.99', 16, 'Rouge', 'jpg', '2018-08-05', '2019-07-30 00:00:00', 1),
(34, 10, 'ENH0335', 'Einhell', 'Suspendisse congue nibh sed dui commodo sollicitudin. Vestibulum augue eros, accumsan vel vulputate ut, gravida id libero. Nullam sodales urna id nulla porta vestibulum. Aliquam lectus lacus, tincidunt nec metus.', '335.00', 1, 'Rouge', 'jpg', '2018-05-17', NULL, NULL),
(35, 10, 'GRIZ_001', 'Grizzly', 'luctus aliquet enim. Phasellus quis velit quis tellus pharetra aliquam in at urna. Cras vitae turpis erat. Phasellus libero arcu, fringilla sit amet tempus blandit, congue eu nulla. Morbi id efficitur tellus.', '990.00', 1, 'Chrome', 'jpg', '2018-08-05', NULL, NULL),
(36, 9, 'HERO', 'Hero', '', '75.00', 7, 'Vert', 'jpg', '2018-08-13', '2019-07-17 00:00:00', NULL),
(37, 9, 'hercule', 'SL 1280', 'Quisque nec nisi risus. Fusce eu est non velit mollis tristique a et magna. Proin sodales.', '120.50', 5, 'Vert', 'jpg', '2018-08-05', '2018-08-22 00:00:00', 1),
(40, 9, 'WAZAA', 'Wazaa', NULL, '68.00', 14, 'Vert', 'jpg', '2018-04-27', NULL, 0),
(41, 6, 'regez', 'ezefe', 'ezfzefze', '12.00', 4, 'bleu', 'png', '0000-00-00', NULL, 1),
(43, 1, 'grrger', 'pd', 'regergergerg', '12.00', 1, 'jaunr', 'jpg', '0000-00-00', NULL, NULL),
(44, 1, 'ttrrt', 'trhtrh', 'rhttrh', '12.00', 1, 'bleu', 'jpg', '0000-00-00', NULL, NULL),
(45, 1, 'ggugug', 'ugugu', 'uyguygug', '12.00', 1, 'cacadoit', 'jpg', '0000-00-00', NULL, 1),
(58, 2, 'rgreg', 'ergeg', 'rgergre', '0.00', 0, 'rgregegr', 'rgre', '0000-00-00', NULL, NULL),
(59, 8, 'zefezf', 'ezfzefzef', 'zefzefezffze', '0.00', 0, 'feezfzf', 'efzef', '0000-00-00', NULL, NULL),
(60, 1, 'jtyjtyh', 'regerg', 'jtyjyj', '9999.99', 12, 'tytth', 'jpg', '0000-00-00', NULL, NULL),
(61, 1, 'hyhyth', 'yhythtyh', 'tyhtyhtyh', '9999.99', 572, 'rhth', 'jpg', '0000-00-00', NULL, NULL),
(62, 1, 'thrthrt', 'trhrth', 'trhtrhrt', '56.00', 785, 'thrth', 'jpg', '0000-00-00', NULL, NULL),
(63, 1, 'yututu', 'tututu', 'ututut', '8787.00', 878, 'kuhhiu', 'jpg', '0000-00-00', NULL, NULL),
(64, 1, 'trhrh', 'trhtrh', 'rthrth', '12.00', 12, 'trgtrh', 'png', '0000-00-00', NULL, NULL),
(65, 1, 'ufhfh', 'hfhffh', 'hfytryt', '12.00', 45, 'op', 'jpg', '0000-00-00', NULL, NULL),
(66, 1, 'ttuitgh', 'ytfty', 'hiuiyi', '45.00', 12, 'bleu', 'jpg', '0000-00-00', NULL, 1),
(68, 1, 'Richard', 'Aldana', 'hrhtrthr', '2424.00', 5727, 'tyutyu', 'png', '0000-00-00', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `us_nom` varchar(20) COLLATE utf8_bin NOT NULL,
  `us_prenom` varchar(20) COLLATE utf8_bin NOT NULL,
  `us_mail` varchar(60) COLLATE utf8_bin NOT NULL,
  `us_login` varchar(20) COLLATE utf8_bin NOT NULL,
  `us_mdp` varchar(60) COLLATE utf8_bin NOT NULL,
  `us_d_inscri` date NOT NULL,
  `us_d_derconnexion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`us_login`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`us_nom`, `us_prenom`, `us_mail`, `us_login`, `us_mdp`, `us_d_inscri`, `us_d_derconnexion`) VALUES
('Agaasse', 'Jimmy', 'jimmy.agaasse@orange.fr', 'Herme', '$2y$10$UVHE3c.qyUHcq.WVBbBGg.IsvTZlVjrBHbHhn63fBF5j2/ae.vgQ2', '2019-07-18', NULL);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `fk_categories_cat_parent` FOREIGN KEY (`cat_parent`) REFERENCES `categories` (`cat_id`);

--
-- Contraintes pour la table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `fk_produits_cat_id` FOREIGN KEY (`pro_cat_id`) REFERENCES `categories` (`cat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
