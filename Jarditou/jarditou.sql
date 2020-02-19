-- phpMyAdmin SQL Dump
-- version 5.0.0-rc1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  mer. 19 fév. 2020 à 14:44
-- Version du serveur :  5.7.24-log
-- Version de PHP :  7.2.19

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

CREATE TABLE `categories` (
  `cat_id` int(10) UNSIGNED NOT NULL COMMENT 'Clé de la table catégorie',
  `cat_nom` varchar(200) NOT NULL COMMENT 'Nom de la catégorie',
  `cat_parent` int(10) UNSIGNED DEFAULT NULL COMMENT 'Catégorie parente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

CREATE TABLE `produits` (
  `pro_id` int(10) UNSIGNED NOT NULL COMMENT 'Clé de la table produits',
  `pro_cat_id` int(10) UNSIGNED NOT NULL COMMENT 'Catégorie du produit',
  `pro_ref` varchar(10) NOT NULL COMMENT 'Référence produit',
  `pro_libelle` varchar(200) NOT NULL COMMENT 'Nom du produit',
  `pro_description` varchar(1000) DEFAULT NULL COMMENT 'Description du produit',
  `pro_prix` decimal(6,2) UNSIGNED NOT NULL COMMENT 'Prix ',
  `pro_stock` int(11) NOT NULL DEFAULT '0' COMMENT 'Nombre d''unités en stock',
  `pro_couleur` varchar(30) DEFAULT NULL COMMENT 'Couleur',
  `pro_photo` varchar(250) DEFAULT 'jpg' COMMENT 'Extension de la photo',
  `pro_d_ajout` date NOT NULL COMMENT 'Date d''ajout',
  `pro_d_modif` datetime DEFAULT NULL COMMENT 'Date de modification',
  `pro_bloque` tinyint(1) DEFAULT NULL COMMENT 'Bloquer le produit à la vente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`pro_id`, `pro_cat_id`, `pro_ref`, `pro_libelle`, `pro_description`, `pro_prix`, `pro_stock`, `pro_couleur`, `pro_photo`, `pro_d_ajout`, `pro_d_modif`, `pro_bloque`) VALUES
(7, 27, 'barb001', 'Aramis ', '', '110.00', 3, 'Brun', '7.jpg', '2018-04-18', '2019-11-05 00:00:00', NULL),
(8, 27, 'barb002', 'Athos', 'eeeeeeeee', '249.00', 1, 'Noir', '8.jpg', '2016-06-14', '2020-01-07 07:49:42', NULL),
(11, 27, 'barb003', 'Clatronic', 'Fusce rutrum odio sem, quis finibus nisl finibus a. Praesent dictum ex in lectus porta, vitae varius lacus eleifend. Sed sed lacinia mi, sed egestas odio. Integer a congue lectus.', '135.90', 10, 'Chrome', '11.jpg', '2017-10-18', NULL, NULL),
(12, 27, 'barb004', 'Camping', '', '88.00', 5, 'Noir', '12.jpg', '2018-08-20', NULL, 1),
(13, 13, 'brou001', 'Green', 'Fusce interdum ex justo, vel imperdiet erat volutpat non. Donec et maximus lacus. ', '49.00', 25, 'Verte', '13.jpg', '2018-08-01', NULL, NULL),
(14, 13, 'brou002', 'Silver', 'Pellentesque ultrices vestibulum sagittis.', '88.00', 0, 'Argent', '14.jpg', '2018-08-09', NULL, NULL),
(15, 13, 'brou003', 'Yellow', 'Sed lobortis pulvinar orci, ut efficitur urna egestas eu.', '54.49', 3, 'Jaune', '15.jpg', '2018-08-12', NULL, NULL),
(16, 2, 'GA410', 'Bêche GA 410', 'Nulla at consequat orci.', '19.90', 50, 'Gris', '16.png', '2018-08-13', NULL, NULL),
(17, 2, 'beche002', 'Bêche GA 388', 'Curabitur varius interdum nulla, sit amet consequat massa. Vestibulum rutrum leo lectus. Phasellus sit amet viverra velit.', '24.90', 1, 'Argent', '17.png', '2018-03-15', NULL, NULL),
(18, 2, 'scm0555', 'Scie à main SCM0555', 'Pellentesque fermentum ut est sagittis feugiat. Morbi in turpis augue. Maecenas dapibus ligula velit, ac gravida risus imperdiet in.', '31.19', 0, 'Bleue', '18.png', '2018-08-19', NULL, NULL),
(19, 2, 'scm559', 'Scie couteau', '', '14.90', 4, 'Bleu', '19.png', '2018-04-13', '2019-10-31 00:00:00', NULL),
(20, 2, 'h0662', 'Hache H062', 'Cras nec dapibus erat. Cras bibendum auctor dui quis tristique.', '31.19', 0, 'Noir', '20.png', '2018-08-12', NULL, NULL),
(21, 11, 'DB0703', 'Titan', 'Etiam eu sem ligula. Donec aliquet velit a condimentum sagittis. Nullam ipsum augue, porta non vestibulum cursus, eleifend tempor erat. Proin et turpis molestie augue mollis laoreet. Nulla lorem tellus, pellentesque nec hendrerit vehicula, consectetur non nisl. Maecenas eget accumsan lectus. Vivamus eleifend lorem scelerisque augue rutrum laoreet. ', '599.99', 4, 'Bleue', '21.png', '1999-08-26', NULL, NULL),
(22, 11, 'DB0755', 'Attila', 'Là où passe Attila, l\'herbe ne repousse pas.', '499.99', 0, 'Bleue', '22.png', '2018-05-16', NULL, NULL),
(23, 28, 'LAM121', 'Aquitaine', 'Integer aliquet accumsan eleifend. Pellentesque mauris tortor, ultricies a pulvinar ut, fringilla ac mi. Sed consequat, nibh at tempus porttitor, tellus nunc dictum nulla, sed finibus felis augue sed libero. Donec augue mi, mattis et orci ac, mollis feugiat elit.', '12.00', 0, 'Rouge', '23.jpg', '2018-03-17', NULL, NULL),
(24, 28, 'LAM233', 'Brown', 'Morbi porta ultricies nibh vel varius. Vestibulum nec rutrum ex, vel posuere nisi. Ut scelerisque sit amet ligula sed imperdiet. Morbi lacinia sapien in elementum iaculis. Vivamus a ultrices enim. ', '9.98', 500, 'Brun', '24.jpg', '2018-03-17', NULL, NULL),
(25, 25, 'PRS-01C', 'Biarritz', 'Quisque fermentum, dui eu elementum sagittis, risus lorem placerat ipsum, vitae venenatis tellus sapien id nibh. Suspendisse et aliquet tellus, in suscipit magna.', '157.00', 5, 'Brun', '25.jpg', '2018-08-19', NULL, NULL),
(26, 25, 'PRS-38A', 'Cannes', 'Curabitur sodales sem vitae ex commodo, in ullamcorper quam congue. Aliquam erat volutpat. Praesent mollis at velit eu molestie. Proin ac tellus a enim venenatis ultrices vitae sed libero. Vivamus at vulputate orci. Curabitur mattis ac turpis id tempus. Sed turpis enim, egestas ac arcu et, elementum luctus ante.', '299.40', 4, 'rOSE', '26.jpg', '2018-08-12', NULL, NULL),
(27, 25, 'PRS-87F', 'Crotoy', 'Morbi porta ultricies nibh vel varius. Vestibulum nec rutrum ex, vel posuere nisi. Ut scelerisque sit amet ligula sed imperdiet. Morbi lacinia sapien in elementum iaculis.', '89.00', 21, 'Rouge', '27.jpg', '2018-04-12', '2018-08-21 00:00:00', NULL),
(28, 21, 'POT_001', 'Agave', '. Vivamus a ultrices enim. Etiam at viverra justo. Cras consectetur justo euismod mi maximus, ac tincidunt leo suscipit. Quisque fermentum, dui eu elementum sagittis, risus lorem placerat ipsum, vitae venenatis tellus sapien id nibh.', '288.32', 11, 'Orange', '28.jpg', '2017-11-12', NULL, NULL),
(29, 21, 'POT-002', 'Dark', 'Curabitur sodales sem vitae ex commodo, in ullamcorper quam congue. Aliquam erat volutpat. Praesent mollis at velit eu molestie.', '32.50', 45, 'Noir', '29.jpg', '2018-08-19', NULL, NULL),
(30, 21, 'POT_003', 'Fuschia', 'Vel porta orci convallis. Duis sodales vehicula porta. Etiam sit amet scelerisque massa. ', '149.97', 0, 'Rose', '30.jpg', '2018-03-04', NULL, NULL),
(31, 6, 'POT-381', 'Iris', 'Praesent nunc dui, porta at leo eget, iaculis ultrices quam. Mauris vulputate metus in nisl aliquam, et sollicitudin nisl mollis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ', '245.00', 10, 'Marron', '31.jpg', '2017-04-16', NULL, NULL),
(32, 2, 'SEC-A', 'Bahco', 'In hac habitasse platea dictumst. Quisque at sagittis nunc.', '9.90', 280, 'Orange', '32.jpg', '2018-08-14', NULL, NULL),
(33, 2, 'SEC-B', 'Red', 'Phasellus ac gravida lorem. Aliquam sed aliquam nisl. Etiam non ornare sapien. Aenean ut tellus non risus varius bibendum quis vel ligula.', '14.99', 16, 'Rouge', '33.jpg', '2018-08-05', NULL, NULL),
(34, 10, 'ENH0335', 'Einhell', 'Suspendisse congue nibh sed dui commodo sollicitudin. Vestibulum augue eros, accumsan vel vulputate ut, gravida id libero. Nullam sodales urna id nulla porta vestibulum. Aliquam lectus lacus, tincidunt nec metus.', '335.00', 1, 'Rouge', '34.jpg', '2018-05-17', NULL, NULL),
(35, 10, 'GRIZ_001', 'Grizzly', 'luctus aliquet enim. Phasellus quis velit quis tellus pharetra aliquam in at urna. Cras vitae turpis erat. Phasellus libero arcu, fringilla sit amet tempus blandit, congue eu nulla. Morbi id efficitur tellus.', '990.00', 1, 'Chrome', '35.jpg', '2018-08-05', NULL, NULL),
(36, 9, 'HERO', 'Hero', NULL, '75.00', 7, 'Vert', '36.jpg', '2018-08-13', NULL, NULL),
(37, 9, 'SL1280', 'SL 1280', 'Quisque nec nisi risus. Fusce eu est non velit mollis tristique a et magna. Proin sodales.', '120.50', 5, 'Vert', '37.jpg', '2018-08-05', '2018-08-22 00:00:00', NULL),
(38, 10, '6cv', 'Red 6CV ', 'uis vehicula risus in nibh lobortis euismod. In hac habitasse platea dictumst. Quisque at sagittis nunc. Phasellus ac gravida lorem. Aliquam sed aliquam nisl. Etiam non ornare sapien.', '348.00', 2, 'Rouge', '38.jpg', '2018-08-16', '2020-01-20 08:53:04', NULL),
(39, 10, 'TRIKE', 'Trike', 'Aenean ut tellus non risus varius bibendum quis vel ligula. ', '497.00', 1, 'Rouge', '39.jpg', '2018-08-21', '2018-08-21 10:05:51', NULL),
(40, 9, 'WAZAA', 'Wazaa', NULL, '68.00', 14, 'Vert', '40.jpg', '2018-04-27', NULL, NULL),
(41, 9, 'ZOOM', 'Zoom', 'Nunc magna erat, ultrices et facilisis non, viverra in turpis. Nulla orci mi, maximus eu facilisis a, pretium sit amet ex.', '49.00', 223, 'Gris', '41.jpg', '2018-08-13', '2020-02-04 09:23:57', NULL),
(49, 4, 'ef', 'fedf', 'fedf', '14.00', 1, 'Noire', 'tondeuse-thermique-autopropulsee-46-cm-149-cc-60-l-essence-4-en-1-multifonction-autotractee-de-brast-P-7322362-14074556_128.jpg', '2020-02-19', NULL, 0),
(51, 4, 'fdesqdgf', 'fedf', 'fedf', '14.00', 1, 'Noire', 'tondeuse-thermique-autopropulsee-46-cm-149-cc-60-l-essence-4-en-1-multifonction-autotractee-de-brast-P-7322362-14074556_130.jpg', '2020-02-19', NULL, 0),
(52, 4, 'sdgf', 'fsde', 'fsedf', '89.00', 1, 'Verte', 'tondeuse-thermique-autopropulsee-46-cm-149-cc-60-l-essence-4-en-1-multifonction-autotractee-de-brast-P-7322362-14074556_131.jpg', '2020-02-19', NULL, 0),
(53, 4, 'sdgfdes', 'fsde', 'fsedf', '89.00', 1, 'Verte', 'tondeuse-thermique-autopropulsee-46-cm-149-cc-60-l-essence-4-en-1-multifonction-autotractee-de-brast-P-7322362-14074556_132.jpg', '2020-02-19', NULL, 0),
(54, 3, 'etgtfh', 'fgrd', 'fsrfd', '14.00', 1, 'Noire', 'tondeuse-thermique-autopropulsee-46-cm-149-cc-60-l-essence-4-en-1-multifonction-autotractee-de-brast-P-7322362-14074556_133.jpg', '2020-02-19', NULL, 0),
(55, 3, 'etgtfsqed', 'fgrd', 'fsrfd', '14.00', 1, 'Noire', 'tondeuse-thermique-autopropulsee-46-cm-149-cc-60-l-essence-4-en-1-multifonction-autotractee-de-brast-P-7322362-14074556_134.jpg', '2020-02-19', NULL, 0),
(56, 3, 'etgtzzz', 'fgrd', 'fsrfd', '14.00', 1, 'Noire', 'tondeuse-thermique-autopropulsee-46-cm-149-cc-60-l-essence-4-en-1-multifonction-autotractee-de-brast-P-7322362-14074556_135.jpg', '2020-02-19', NULL, 0),
(57, 3, 'etgtyjuyhu', 'fgrd', 'fsrfd', '14.00', 1, 'Noire', 'tondeuse-thermique-autopropulsee-46-cm-149-cc-60-l-essence-4-en-1-multifonction-autotractee-de-brast-P-7322362-14074556_136.jpg', '2020-02-19', NULL, 0),
(58, 3, 'etgtfhn', 'fgrd', 'fsrfd', '14.00', 1, 'Noire', 'tondeuse-thermique-autopropulsee-46-cm-149-cc-60-l-essence-4-en-1-multifonction-autotractee-de-brast-P-7322362-14074556_137.jpg', '2020-02-19', NULL, 0),
(59, 3, 'etgtefs', 'fgrd', 'fsrfd', '14.00', 1, 'Noire', 'tondeuse-thermique-autopropulsee-46-cm-149-cc-60-l-essence-4-en-1-multifonction-autotractee-de-brast-P-7322362-14074556_138.jpg', '2020-02-19', NULL, 0),
(60, 3, 'etgtefsfes', 'fgrd', 'fsrfd', '14.00', 1, 'Noire', 'tondeuse-thermique-autopropulsee-46-cm-149-cc-60-l-essence-4-en-1-multifonction-autotractee-de-brast-P-7322362-14074556_139.jpg', '2020-02-19', NULL, 0),
(63, 3, 'fhgnb', 'fgrd', 'fsrfd', '14.00', 1, 'Noire', 'tondeuse-thermique-autopropulsee-46-cm-149-cc-60-l-essence-4-en-1-multifonction-autotractee-de-brast-P-7322362-14074556_142.jpg', '2020-02-19', NULL, 0),
(64, 3, 'jjj', 'fgrd', 'fsrfd', '14.00', 1, 'Noire', 'tondeuse-thermique-autopropulsee-46-cm-149-cc-60-l-essence-4-en-1-multifonction-autotractee-de-brast-P-7322362-14074556_143.jpg', '2020-02-19', NULL, 0),
(65, 3, 'erfgh', 'fgrd', 'fsrfd', '14.00', 1, 'Noire', 'tondeuse-thermique-autopropulsee-46-cm-149-cc-60-l-essence-4-en-1-multifonction-autotractee-de-brast-P-7322362-14074556_144.jpg', '2020-02-19', NULL, 0),
(66, 3, 'kkkui', 'fgrd', 'fsrfd', '14.00', 1, 'Noire', 'tondeuse-thermique-autopropulsee-46-cm-149-cc-60-l-essence-4-en-1-multifonction-autotractee-de-brast-P-7322362-14074556_145.jpg', '2020-02-19', NULL, 0),
(67, 3, 'khgvcf', 'fgrd', 'fsrfd', '14.00', 1, 'Noire', 'tondeuse-thermique-autopropulsee-46-cm-149-cc-60-l-essence-4-en-1-multifonction-autotractee-de-brast-P-7322362-14074556_146.jpg', '2020-02-19', NULL, 0),
(68, 11, 'feeeee', 'dqes', 'ds', '5.00', 1, 'Verte', 'tondeuse-thermique-autopropulsee-46-cm-149-cc-60-l-essence-4-en-1-multifonction-autotractee-de-brast-P-7322362-14074556_147.jpg', '2020-02-19', NULL, 0),
(69, 12, 'gfffff', 'sdf', 'fe', '2.00', 1, 'Noire', 'tondeuse-thermique-autopropulsee-46-cm-149-cc-60-l-essence-4-en-1-multifonction-autotractee-de-brast-P-7322362-14074556_148.jpg', '2020-02-19', NULL, 0),
(70, 12, 'gfffffhjg', 'sdf', 'fe', '2.00', 1, 'Noire', 'tondeuse-thermique-autopropulsee-46-cm-149-cc-60-l-essence-4-en-1-multifonction-autotractee-de-brast-P-7322362-14074556_149.jpg', '2020-02-19', NULL, 0),
(71, 12, 'gfffffhjgh', 'sdf', 'fe', '2.00', 1, 'Noire', 'tondeuse-thermique-autopropulsee-46-cm-149-cc-60-l-essence-4-en-1-multifonction-autotractee-de-brast-P-7322362-14074556_150.jpg', '2020-02-19', NULL, 0),
(73, 12, 'gfhrttdy', 'sdf', 'fe', '2.00', 1, 'Noire', 'tondeuse-thermique-autopropulsee-46-cm-149-cc-60-l-essence-4-en-1-multifonction-autotractee-de-brast-P-7322362-14074556_152.jpg', '2020-02-19', NULL, 0),
(74, 12, 'gfhll', 'sdf', 'fe', '2.00', 1, 'Noire', 'tondeuse-thermique-autopropulsee-46-cm-149-cc-60-l-essence-4-en-1-multifonction-autotractee-de-brast-P-7322362-14074556_153.jpg', '2020-02-19', NULL, 0),
(75, 12, 'ouytr', 'sdf', 'fe', '2.00', 1, 'Noire', 'tondeuse-thermique-autopropulsee-46-cm-149-cc-60-l-essence-4-en-1-multifonction-autotractee-de-brast-P-7322362-14074556_154.jpg', '2020-02-19', NULL, 0),
(76, 12, 'azer', 'sdf', 'fe', '2.00', 1, 'Noire', 'tondeuse-thermique-autopropulsee-46-cm-149-cc-60-l-essence-4-en-1-multifonction-autotractee-de-brast-P-7322362-14074556_155.jpg', '2020-02-19', NULL, 0),
(77, 12, 'azerhjyh', 'sdf', 'fe', '2.00', 1, 'Noire', 'tondeuse-thermique-autopropulsee-46-cm-149-cc-60-l-essence-4-en-1-multifonction-autotractee-de-brast-P-7322362-14074556_156.jpg', '2020-02-19', NULL, 0),
(78, 3, 'etdgt', 'rzed', 'fsed', '89.00', 5, 'Noire', 'tondeuse-thermique-autopropulsee-46-cm-149-cc-60-l-essence-4-en-1-multifonction-autotractee-de-brast-P-7322362-14074556_157.jpg', '2020-02-19', NULL, 0),
(79, 3, 'etdgtsqedr', 'rzed', 'fsed', '89.00', 5, 'Noire', 'tondeuse-thermique-autopropulsee-46-cm-149-cc-60-l-essence-4-en-1-multifonction-autotractee-de-brast-P-7322362-14074556_158.jpg', '2020-02-19', NULL, 0),
(81, 3, 'yuiytg', 'rzed', 'fsed', '89.00', 5, 'Noire', 'tondeuse-thermique-autopropulsee-46-cm-149-cc-60-l-essence-4-en-1-multifonction-autotractee-de-brast-P-7322362-14074556_160.jpg', '2020-02-19', NULL, 0),
(82, 10, 'getyh', 'terhftg', 'gdtrh', '14.00', 5, 'Blanc', 'tondeuse-thermique-autopropulsee-46-cm-149-cc-60-l-essence-4-en-1-multifonction-autotractee-de-brast-P-7322362-14074556_161.jpg', '2020-02-19', NULL, 0),
(83, 15, 'r-t', 'ty', 'hyth', '45.00', 5, 'bleu', 'tondeuse-thermique-autopropulsee-46-cm-149-cc-60-l-essence-4-en-1-multifonction-autotractee-de-brast-P-7322362-14074556_162.jpg', '2020-02-19', NULL, 0),
(84, 13, 'fret', 'er', 'gfer', '89.00', 3, 'Noire', 'tondeuse-thermique-autopropulsee-46-cm-149-cc-60-l-essence-4-en-1-multifonction-autotractee-de-brast-P-7322362-14074556_163.jpg', '2020-02-19', NULL, 0),
(85, 15, 'sfd', 'ef', 'fer', '14.00', 1, 'Noire', 'tondeuse-thermique-autopropulsee-46-cm-149-cc-60-l-essence-4-en-1-multifonction-autotractee-de-brast-P-7322362-14074556_164.jpg', '2020-02-19', NULL, 0),
(86, 15, 'sfdfsedfg', 'ef', 'fer', '14.00', 1, 'Noire', 'tondeuse-thermique-autopropulsee-46-cm-149-cc-60-l-essence-4-en-1-multifonction-autotractee-de-brast-P-7322362-14074556_165.jpg', '2020-02-19', NULL, 0),
(87, 15, 'sfdfsedfgf', 'ef', 'fer', '14.00', 1, 'Noire', 'tondeuse-thermique-autopropulsee-46-cm-149-cc-60-l-essence-4-en-1-multifonction-autotractee-de-brast-P-7322362-14074556_166.jpg', '2020-02-19', NULL, 0),
(88, 15, 'eeeeee', 'ef', 'fer', '14.00', 1, 'Noire', 'tondeuse-thermique-autopropulsee-46-cm-149-cc-60-l-essence-4-en-1-multifonction-autotractee-de-brast-P-7322362-14074556_167.jpg', '2020-02-19', NULL, 0),
(89, 15, 'jyf', 'ef', 'fer', '14.00', 1, 'Noire', 'tondeuse-thermique-autopropulsee-46-cm-149-cc-60-l-essence-4-en-1-multifonction-autotractee-de-brast-P-7322362-14074556_168.jpg', '2020-02-19', NULL, 0),
(90, 15, 'trgx', 'ef', 'fer', '14.00', 1, 'Noire', 'tondeuse-thermique-autopropulsee-46-cm-149-cc-60-l-essence-4-en-1-multifonction-autotractee-de-brast-P-7322362-14074556_169.jpg', '2020-02-19', NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `ID` int(250) NOT NULL,
  `nom` varchar(250) NOT NULL,
  `prenom` varchar(250) NOT NULL,
  `mail` varchar(250) NOT NULL,
  `lgn` varchar(250) NOT NULL,
  `psswrd` varchar(250) NOT NULL,
  `date_inscr` datetime DEFAULT NULL,
  `date_dern_connex` datetime DEFAULT NULL,
  `role` varchar(25) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`ID`, `nom`, `prenom`, `mail`, `lgn`, `psswrd`, `date_inscr`, `date_dern_connex`, `role`) VALUES
(23, 'dgrg', 'ger', 'dave.loper@afpa.fr', 'pepere', '$2y$10$HgKaNkdw.X4dwSGkr7cifOQVV.Lq/38XhDGTSPk/W9pKR01NjnYU6', '2020-02-03 08:46:41', '2020-02-03 08:46:41', 'user'),
(24, 'zfer', 're', 'clem@gmail.fr', 'clem', '$2y$10$gKhHJF4m3JY3Lb0Gci7aK.0XE5ZaUBkb5gzyRs6DBSr6N91uVPa0C', '2020-02-03 10:47:25', '2020-02-03 10:47:25', 'admin');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`),
  ADD KEY `fk_categories_cat_parent` (`cat_parent`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`pro_id`),
  ADD UNIQUE KEY `idx_pro_ref` (`pro_ref`),
  ADD KEY `fk_produits_cat_id` (`pro_cat_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `mail` (`mail`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Clé de la table catégorie', AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `pro_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Clé de la table produits', AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

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

