-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Jeu 12 Septembre 2013 à 16:06
-- Version du serveur: 5.5.24-log
-- Version de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `vyper`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) DEFAULT NULL,
  `continent` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `text` text,
  `releaseDate` date DEFAULT NULL,
  `releaseTime` time DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `translator` varchar(50) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `sourceURL` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `metaKeywords` text,
  `artistsKeywords` varchar(255) DEFAULT NULL,
  `relatedPicture` int(11) DEFAULT NULL,
  `relatedGallery` int(11) DEFAULT NULL,
  `relatedVideo` int(11) DEFAULT NULL,
  `relatedTheme` int(11) DEFAULT NULL,
  `relatedItem` int(11) DEFAULT NULL,
  `relatedEvent` int(11) DEFAULT NULL,
  `relatedTour` int(11) DEFAULT NULL,
  `forumURL` varchar(255) DEFAULT NULL,
  `live` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `live` (`live`),
  KEY `deleted` (`deleted`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `article`
--

INSERT INTO `article` (`id`, `user`, `continent`, `title`, `description`, `text`, `releaseDate`, `releaseTime`, `author`, `translator`, `source`, `sourceURL`, `type`, `metaKeywords`, `artistsKeywords`, `relatedPicture`, `relatedGallery`, `relatedVideo`, `relatedTheme`, `relatedItem`, `relatedEvent`, `relatedTour`, `forumURL`, `live`, `deleted`, `created`, `modified`) VALUES
(1, 1, 1, 'Nouveau single de Misaruka', 'au revoir, nouveau single du groupe, paraîtra le 20 novembre.', '<span style="font-weight: normal;">Le news avec </span><b>gras</b><div><b><br></b></div><div><font color="#ff6666"><b>Et couleur</b></font></div>', '2013-09-12', '17:51:00', 'Tomo', 'Aude', 'Site officiel', 'http://dlonline.ocnk.net/product/775', 8, 'Misaruka, single, au revoir, 20 novembre 2013, reprise, MALICE MIZER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2013-09-12 15:54:29', '2013-09-12 15:54:29'),
(2, 1, 1, 'Interview avec Una', 'Peu avant sa prestation au J.E Live House, JaME a eu l occasion de s entretenir avec la mannequin et chanteuse Una.', '<i>JaME tenait à remercier <b>Una</b> ainsi que l équipe de Japan Expo pour avoir rendu cette interview possible.</i>\r\n\r\n\r\n<center><iframe width="640" height="360" src="http://www.youtube.com/embed/ECx8qlJk6j4?feature=player_detailpage" frameborder="0" allowfullscreen=""></iframe></center>', '2013-09-10', '09:32:00', 'Aude Kasperski et Cyrielle', '', '', '', 6, 'Japan Expo 2013, Una, single, Juicy Juicy, 14 août 2013, Ura-Harajuku', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2013-09-12 15:58:28', '2013-09-12 15:58:28');

-- --------------------------------------------------------

--
-- Structure de la table `articletype`
--

CREATE TABLE IF NOT EXISTS `articletype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `live` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `live` (`live`),
  KEY `deleted` (`deleted`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Contenu de la table `articletype`
--

INSERT INTO `articletype` (`id`, `name`, `live`, `deleted`, `created`, `modified`) VALUES
(1, 'contest', 1, 0, '2013-09-12 14:56:02', '2013-09-12 14:56:02'),
(2, 'file', 1, 0, '2013-09-12 14:56:02', '2013-09-12 14:56:02'),
(3, 'glossary', 1, 0, '2013-09-12 14:56:02', '2013-09-12 14:56:02'),
(4, 'guide', 1, 0, '2013-09-12 14:56:02', '2013-09-12 14:56:02'),
(5, 'information', 1, 0, '2013-09-12 14:56:02', '2013-09-12 14:56:02'),
(6, 'interview', 1, 0, '2013-09-12 14:56:02', '2013-09-12 14:56:02'),
(7, 'live report', 1, 0, '2013-09-12 14:56:03', '2013-09-12 14:56:03'),
(8, 'news', 1, 0, '2013-09-12 14:56:03', '2013-09-12 14:56:03'),
(9, 'review', 1, 0, '2013-09-12 14:56:03', '2013-09-12 14:56:03');

-- --------------------------------------------------------

--
-- Structure de la table `continent`
--

CREATE TABLE IF NOT EXISTS `continent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `live` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `live` (`live`),
  KEY `deleted` (`deleted`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `continent`
--

INSERT INTO `continent` (`id`, `name`, `live`, `deleted`, `created`, `modified`) VALUES
(1, 'World', 1, 0, '2013-09-12 10:27:21', '2013-09-12 10:27:21'),
(2, 'Africa', 1, 0, '2013-09-12 10:27:21', '2013-09-12 10:27:21'),
(3, 'America', 1, 0, '2013-09-12 10:27:21', '2013-09-12 10:27:21'),
(4, 'East-Asia & Oceania', 1, 0, '2013-09-12 10:27:21', '2013-09-12 10:27:21'),
(5, 'Europe', 1, 0, '2013-09-12 10:27:21', '2013-09-12 10:27:21'),
(6, 'Middle East', 1, 0, '2013-09-12 10:27:21', '2013-09-12 10:27:21');

-- --------------------------------------------------------

--
-- Structure de la table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `live` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `live` (`live`),
  KEY `deleted` (`deleted`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=238 ;

--
-- Contenu de la table `country`
--

INSERT INTO `country` (`id`, `name`, `live`, `deleted`, `created`, `modified`) VALUES
(1, 'Afghanistan', 1, 0, '2013-09-10 15:12:43', '2013-09-10 15:12:43'),
(2, 'Albania', 1, 0, '2013-09-10 15:12:43', '2013-09-10 15:12:43'),
(3, 'Algeria', 1, 0, '2013-09-10 15:12:43', '2013-09-10 15:12:43'),
(4, 'American Samoa', 1, 0, '2013-09-10 15:12:43', '2013-09-10 15:12:43'),
(5, 'Andorra', 1, 0, '2013-09-10 15:12:43', '2013-09-10 15:12:43'),
(6, 'Angola', 1, 0, '2013-09-10 15:12:43', '2013-09-10 15:12:43'),
(7, 'Anguilla', 1, 0, '2013-09-10 15:12:43', '2013-09-10 15:12:43'),
(8, 'Antigua and Barbuda', 1, 0, '2013-09-10 15:12:43', '2013-09-10 15:12:43'),
(9, 'Argentina', 1, 0, '2013-09-10 15:12:43', '2013-09-10 15:12:43'),
(10, 'Armenia', 1, 0, '2013-09-10 15:12:43', '2013-09-10 15:12:43'),
(11, 'Aruba', 1, 0, '2013-09-10 15:12:43', '2013-09-10 15:12:44'),
(12, 'Australia', 1, 0, '2013-09-10 15:12:44', '2013-09-10 15:12:44'),
(13, 'Austria', 1, 0, '2013-09-10 15:12:44', '2013-09-10 15:12:44'),
(14, 'Azerbaijan', 1, 0, '2013-09-10 15:12:44', '2013-09-10 15:12:44'),
(15, 'Bahamas', 1, 0, '2013-09-10 15:12:44', '2013-09-10 15:12:44'),
(16, 'Bahrain', 1, 0, '2013-09-10 15:12:44', '2013-09-10 15:12:44'),
(17, 'Bangladesh', 1, 0, '2013-09-10 15:12:44', '2013-09-10 15:12:44'),
(18, 'Barbados', 1, 0, '2013-09-10 15:12:44', '2013-09-10 15:12:44'),
(19, 'Belarus', 1, 0, '2013-09-10 15:12:44', '2013-09-10 15:12:44'),
(20, 'Belgium', 1, 0, '2013-09-10 15:12:44', '2013-09-10 15:12:44'),
(21, 'Belize', 1, 0, '2013-09-10 15:12:44', '2013-09-10 15:12:44'),
(22, 'Benin', 1, 0, '2013-09-10 15:12:44', '2013-09-10 15:12:44'),
(23, 'Bermuda', 1, 0, '2013-09-10 15:12:44', '2013-09-10 15:12:44'),
(24, 'Bhutan', 1, 0, '2013-09-10 15:12:44', '2013-09-10 15:12:44'),
(25, 'Bolivia', 1, 0, '2013-09-10 15:12:45', '2013-09-10 15:12:45'),
(26, 'Bosnia and Herzegovina', 1, 0, '2013-09-10 15:12:45', '2013-09-10 15:12:45'),
(27, 'Botswana', 1, 0, '2013-09-10 15:12:45', '2013-09-10 15:12:45'),
(28, 'Brazil', 1, 0, '2013-09-10 15:12:45', '2013-09-10 15:12:45'),
(29, 'British Indian Ocean Territory', 1, 0, '2013-09-10 15:12:45', '2013-09-10 15:12:45'),
(30, 'British Virgin Islands', 1, 0, '2013-09-10 15:12:45', '2013-09-10 15:12:45'),
(31, 'Brunei', 1, 0, '2013-09-10 15:12:45', '2013-09-10 15:12:45'),
(32, 'Bulgaria', 1, 0, '2013-09-10 15:12:45', '2013-09-10 15:12:45'),
(33, 'Burkina Faso', 1, 0, '2013-09-10 15:12:45', '2013-09-10 15:12:45'),
(34, 'Burundi', 1, 0, '2013-09-10 15:12:45', '2013-09-10 15:12:45'),
(35, 'Cambodia', 1, 0, '2013-09-10 15:12:45', '2013-09-10 15:12:45'),
(36, 'Cameroon', 1, 0, '2013-09-10 15:12:45', '2013-09-10 15:12:45'),
(37, 'Canada', 1, 0, '2013-09-10 15:12:45', '2013-09-10 15:12:45'),
(38, 'Cape Verde', 1, 0, '2013-09-10 15:12:46', '2013-09-10 15:12:46'),
(39, 'Cayman Islands', 1, 0, '2013-09-10 15:12:46', '2013-09-10 15:12:46'),
(40, 'Central African Republic', 1, 0, '2013-09-10 15:12:46', '2013-09-10 15:12:46'),
(41, 'Chad', 1, 0, '2013-09-10 15:12:46', '2013-09-10 15:12:46'),
(42, 'Chile', 1, 0, '2013-09-10 15:12:46', '2013-09-10 15:12:46'),
(43, 'China', 1, 0, '2013-09-10 15:12:46', '2013-09-10 15:12:46'),
(44, 'Christmas Island', 1, 0, '2013-09-10 15:12:46', '2013-09-10 15:12:46'),
(45, 'Cocos (Keeling) Islands', 1, 0, '2013-09-10 15:12:46', '2013-09-10 15:12:46'),
(46, 'Colombia', 1, 0, '2013-09-10 15:12:46', '2013-09-10 15:12:46'),
(47, 'Comoros', 1, 0, '2013-09-10 15:12:46', '2013-09-10 15:12:46'),
(48, 'Congo-Brazza', 1, 0, '2013-09-10 15:12:46', '2013-09-10 15:12:46'),
(49, 'Congo-Kinshasa', 1, 0, '2013-09-10 15:12:46', '2013-09-10 15:12:46'),
(50, 'Cook Islands', 1, 0, '2013-09-10 15:12:46', '2013-09-10 15:12:46'),
(51, 'Costa Rica', 1, 0, '2013-09-10 15:12:47', '2013-09-10 15:12:47'),
(52, 'Croatia', 1, 0, '2013-09-10 15:12:47', '2013-09-10 15:12:47'),
(53, 'Cuba', 1, 0, '2013-09-10 15:12:47', '2013-09-10 15:12:47'),
(54, 'Cyprus', 1, 0, '2013-09-10 15:12:47', '2013-09-10 15:12:47'),
(55, 'Czech Republic', 1, 0, '2013-09-10 15:12:47', '2013-09-10 15:12:47'),
(56, 'Denmark', 1, 0, '2013-09-10 15:12:47', '2013-09-10 15:12:47'),
(57, 'Djibouti', 1, 0, '2013-09-10 15:12:47', '2013-09-10 15:12:47'),
(58, 'Dominica', 1, 0, '2013-09-10 15:12:47', '2013-09-10 15:12:47'),
(59, 'Dominican Republic', 1, 0, '2013-09-10 15:12:47', '2013-09-10 15:12:47'),
(60, 'Ecuador', 1, 0, '2013-09-10 15:12:47', '2013-09-10 15:12:47'),
(61, 'Egypt', 1, 0, '2013-09-10 15:12:48', '2013-09-10 15:12:48'),
(62, 'El Salvador', 1, 0, '2013-09-10 15:12:48', '2013-09-10 15:12:48'),
(63, 'Equatorial Guinea', 1, 0, '2013-09-10 15:12:48', '2013-09-10 15:12:48'),
(64, 'Eritrea', 1, 0, '2013-09-10 15:12:48', '2013-09-10 15:12:48'),
(65, 'Estonia', 1, 0, '2013-09-10 15:12:48', '2013-09-10 15:12:48'),
(66, 'Ethiopia', 1, 0, '2013-09-10 15:12:48', '2013-09-10 15:12:48'),
(67, 'Falkland Islands', 1, 0, '2013-09-10 15:12:48', '2013-09-10 15:12:48'),
(68, 'Faroe Islands', 1, 0, '2013-09-10 15:12:48', '2013-09-10 15:12:48'),
(69, 'Federated States of Micronesia', 1, 0, '2013-09-10 15:12:48', '2013-09-10 15:12:48'),
(70, 'Fiji', 1, 0, '2013-09-10 15:12:48', '2013-09-10 15:12:48'),
(71, 'Finland', 1, 0, '2013-09-10 15:12:48', '2013-09-10 15:12:48'),
(72, 'France', 1, 0, '2013-09-10 15:12:49', '2013-09-10 15:12:49'),
(73, 'French Guiana', 1, 0, '2013-09-10 15:12:49', '2013-09-10 15:12:49'),
(74, 'French Polynesia', 1, 0, '2013-09-10 15:12:49', '2013-09-10 15:12:49'),
(75, 'Gabon', 1, 0, '2013-09-10 15:12:49', '2013-09-10 15:12:49'),
(76, 'Gambia', 1, 0, '2013-09-10 15:12:49', '2013-09-10 15:12:49'),
(77, 'Georgia', 1, 0, '2013-09-10 15:12:49', '2013-09-10 15:12:49'),
(78, 'Germany', 1, 0, '2013-09-10 15:12:49', '2013-09-10 15:12:49'),
(79, 'Ghana', 1, 0, '2013-09-10 15:12:49', '2013-09-10 15:12:49'),
(80, 'Gibraltar', 1, 0, '2013-09-10 15:12:49', '2013-09-10 15:12:49'),
(81, 'Greece', 1, 0, '2013-09-10 15:12:49', '2013-09-10 15:12:49'),
(82, 'Greenland', 1, 0, '2013-09-10 15:12:49', '2013-09-10 15:12:49'),
(83, 'Grenada', 1, 0, '2013-09-10 15:12:49', '2013-09-10 15:12:49'),
(84, 'Guadeloupe', 1, 0, '2013-09-10 15:12:50', '2013-09-10 15:12:50'),
(85, 'Guam', 1, 0, '2013-09-10 15:12:50', '2013-09-10 15:12:50'),
(86, 'Guatemala', 1, 0, '2013-09-10 15:12:50', '2013-09-10 15:12:50'),
(87, 'Guernsey', 1, 0, '2013-09-10 15:12:50', '2013-09-10 15:12:50'),
(88, 'Guinea', 1, 0, '2013-09-10 15:12:50', '2013-09-10 15:12:50'),
(89, 'Guinea-Bissau', 1, 0, '2013-09-10 15:12:50', '2013-09-10 15:12:50'),
(90, 'Guyana', 1, 0, '2013-09-10 15:12:50', '2013-09-10 15:12:50'),
(91, 'Haiti', 1, 0, '2013-09-10 15:12:50', '2013-09-10 15:12:50'),
(92, 'Honduras', 1, 0, '2013-09-10 15:12:50', '2013-09-10 15:12:50'),
(93, 'Hong Kong', 1, 0, '2013-09-10 15:12:50', '2013-09-10 15:12:50'),
(94, 'Hungary', 1, 0, '2013-09-10 15:12:50', '2013-09-10 15:12:50'),
(95, 'Iceland', 1, 0, '2013-09-10 15:12:50', '2013-09-10 15:12:50'),
(96, 'India', 1, 0, '2013-09-10 15:12:50', '2013-09-10 15:12:50'),
(97, 'Indonesia', 1, 0, '2013-09-10 15:12:50', '2013-09-10 15:12:50'),
(98, 'Iran', 1, 0, '2013-09-10 15:12:51', '2013-09-10 15:12:51'),
(99, 'Iraq', 1, 0, '2013-09-10 15:12:51', '2013-09-10 15:12:51'),
(100, 'Ireland', 1, 0, '2013-09-10 15:12:51', '2013-09-10 15:12:51'),
(101, 'Israel', 1, 0, '2013-09-10 15:12:51', '2013-09-10 15:12:51'),
(102, 'Italy', 1, 0, '2013-09-10 15:12:51', '2013-09-10 15:12:51'),
(103, 'Jamaica', 1, 0, '2013-09-10 15:12:51', '2013-09-10 15:12:51'),
(104, 'Japan', 1, 0, '2013-09-10 15:12:51', '2013-09-10 15:12:51'),
(105, 'Jersey', 1, 0, '2013-09-10 15:12:51', '2013-09-10 15:12:51'),
(106, 'Jordan', 1, 0, '2013-09-10 15:12:51', '2013-09-10 15:12:51'),
(107, 'Kazakhstan', 1, 0, '2013-09-10 15:12:51', '2013-09-10 15:12:51'),
(108, 'Kenya', 1, 0, '2013-09-10 15:12:51', '2013-09-10 15:12:51'),
(109, 'Kiribati', 1, 0, '2013-09-10 15:12:51', '2013-09-10 15:12:51'),
(110, 'Kuwait', 1, 0, '2013-09-10 15:12:51', '2013-09-10 15:12:51'),
(111, 'Kyrgyzstan', 1, 0, '2013-09-10 15:12:51', '2013-09-10 15:12:51'),
(112, 'Laos', 1, 0, '2013-09-10 15:12:51', '2013-09-10 15:12:51'),
(113, 'Latvia', 1, 0, '2013-09-10 15:12:51', '2013-09-10 15:12:51'),
(114, 'Lebanon', 1, 0, '2013-09-10 15:12:52', '2013-09-10 15:12:52'),
(115, 'Lesotho', 1, 0, '2013-09-10 15:12:52', '2013-09-10 15:12:52'),
(116, 'Liberia', 1, 0, '2013-09-10 15:12:52', '2013-09-10 15:12:52'),
(117, 'Libya', 1, 0, '2013-09-10 15:12:52', '2013-09-10 15:12:52'),
(118, 'Liechtenstein', 1, 0, '2013-09-10 15:12:52', '2013-09-10 15:12:52'),
(119, 'Lithuania', 1, 0, '2013-09-10 15:12:52', '2013-09-10 15:12:52'),
(120, 'Luxembourg', 1, 0, '2013-09-10 15:12:52', '2013-09-10 15:12:52'),
(121, 'Macau', 1, 0, '2013-09-10 15:12:52', '2013-09-10 15:12:52'),
(122, 'Macedonia', 1, 0, '2013-09-10 15:12:52', '2013-09-10 15:12:52'),
(123, 'Madagascar', 1, 0, '2013-09-10 15:12:52', '2013-09-10 15:12:52'),
(124, 'Malawi', 1, 0, '2013-09-10 15:12:52', '2013-09-10 15:12:52'),
(125, 'Malaysia', 1, 0, '2013-09-10 15:12:53', '2013-09-10 15:12:53'),
(126, 'Maldives', 1, 0, '2013-09-10 15:12:53', '2013-09-10 15:12:53'),
(127, 'Mali', 1, 0, '2013-09-10 15:12:53', '2013-09-10 15:12:53'),
(128, 'Malta', 1, 0, '2013-09-10 15:12:53', '2013-09-10 15:12:53'),
(129, 'Mann', 1, 0, '2013-09-10 15:12:54', '2013-09-10 15:12:54'),
(130, 'Marshall Islands', 1, 0, '2013-09-10 15:12:54', '2013-09-10 15:12:54'),
(131, 'Martinique', 1, 0, '2013-09-10 15:12:54', '2013-09-10 15:12:54'),
(132, 'Mauritania', 1, 0, '2013-09-10 15:12:54', '2013-09-10 15:12:54'),
(133, 'Mauritius', 1, 0, '2013-09-10 15:12:54', '2013-09-10 15:12:54'),
(134, 'Mayotte', 1, 0, '2013-09-10 15:12:54', '2013-09-10 15:12:54'),
(135, 'Mexico', 1, 0, '2013-09-10 15:12:54', '2013-09-10 15:12:54'),
(136, 'Moldova', 1, 0, '2013-09-10 15:12:55', '2013-09-10 15:12:55'),
(137, 'Monaco', 1, 0, '2013-09-10 15:12:55', '2013-09-10 15:12:55'),
(138, 'Mongolia', 1, 0, '2013-09-10 15:12:55', '2013-09-10 15:12:55'),
(139, 'Montenegro', 1, 0, '2013-09-10 15:12:55', '2013-09-10 15:12:55'),
(140, 'Montserrat', 1, 0, '2013-09-10 15:12:55', '2013-09-10 15:12:55'),
(141, 'Morocco', 1, 0, '2013-09-10 15:12:55', '2013-09-10 15:12:55'),
(142, 'Mozambique', 1, 0, '2013-09-10 15:12:55', '2013-09-10 15:12:55'),
(143, 'Myanmar', 1, 0, '2013-09-10 15:12:55', '2013-09-10 15:12:55'),
(144, 'Namibia', 1, 0, '2013-09-10 15:12:55', '2013-09-10 15:12:55'),
(145, 'Nauru', 1, 0, '2013-09-10 15:12:55', '2013-09-10 15:12:55'),
(146, 'Nepal', 1, 0, '2013-09-10 15:12:55', '2013-09-10 15:12:55'),
(147, 'Netherlands', 1, 0, '2013-09-10 15:12:56', '2013-09-10 15:12:56'),
(148, 'Netherlands Antilles', 1, 0, '2013-09-10 15:12:56', '2013-09-10 15:12:56'),
(149, 'New Caledonia', 1, 0, '2013-09-10 15:12:56', '2013-09-10 15:12:56'),
(150, 'New Zealand', 1, 0, '2013-09-10 15:12:56', '2013-09-10 15:12:56'),
(151, 'Nicaragua', 1, 0, '2013-09-10 15:12:56', '2013-09-10 15:12:56'),
(152, 'Niger', 1, 0, '2013-09-10 15:12:56', '2013-09-10 15:12:56'),
(153, 'Nigeria', 1, 0, '2013-09-10 15:12:56', '2013-09-10 15:12:56'),
(154, 'Niue', 1, 0, '2013-09-10 15:12:56', '2013-09-10 15:12:56'),
(155, 'Norfolk Island', 1, 0, '2013-09-10 15:12:56', '2013-09-10 15:12:56'),
(156, 'Northern Mariana Islands', 1, 0, '2013-09-10 15:12:56', '2013-09-10 15:12:56'),
(157, 'Norway', 1, 0, '2013-09-10 15:12:56', '2013-09-10 15:12:56'),
(158, 'Oman', 1, 0, '2013-09-10 15:12:57', '2013-09-10 15:12:57'),
(159, 'Pakistan', 1, 0, '2013-09-10 15:12:57', '2013-09-10 15:12:57'),
(160, 'Palau', 1, 0, '2013-09-10 15:12:57', '2013-09-10 15:12:57'),
(161, 'Palestine', 1, 0, '2013-09-10 15:12:57', '2013-09-10 15:12:57'),
(162, 'Panama', 1, 0, '2013-09-10 15:12:57', '2013-09-10 15:12:57'),
(163, 'Papua New Guinea', 1, 0, '2013-09-10 15:12:57', '2013-09-10 15:12:57'),
(164, 'Paraguay', 1, 0, '2013-09-10 15:12:57', '2013-09-10 15:12:57'),
(165, 'Peru', 1, 0, '2013-09-10 15:12:57', '2013-09-10 15:12:57'),
(166, 'Philippines', 1, 0, '2013-09-10 15:12:57', '2013-09-10 15:12:57'),
(167, 'Pitcairn Islands', 1, 0, '2013-09-10 15:12:57', '2013-09-10 15:12:57'),
(168, 'Poland', 1, 0, '2013-09-10 15:12:57', '2013-09-10 15:12:57'),
(169, 'Portugal', 1, 0, '2013-09-10 15:12:57', '2013-09-10 15:12:57'),
(170, 'Puerto Rico', 1, 0, '2013-09-10 15:12:58', '2013-09-10 15:12:58'),
(171, 'Qatar', 1, 0, '2013-09-10 15:12:58', '2013-09-10 15:12:58'),
(172, 'Quebec', 1, 0, '2013-09-10 15:12:58', '2013-09-10 15:12:58'),
(173, 'Réunion', 1, 0, '2013-09-10 15:12:58', '2013-09-10 15:12:58'),
(174, 'Romania', 1, 0, '2013-09-10 15:12:58', '2013-09-10 15:12:58'),
(175, 'Russia', 1, 0, '2013-09-10 15:12:58', '2013-09-10 15:12:58'),
(176, 'Rwanda', 1, 0, '2013-09-10 15:12:58', '2013-09-10 15:12:58'),
(177, 'São Tomé and Príncipe', 1, 0, '2013-09-10 15:12:58', '2013-09-10 15:12:58'),
(178, 'Saint Helena', 1, 0, '2013-09-10 15:12:58', '2013-09-10 15:12:58'),
(179, 'Saint Kitts and Nevis', 1, 0, '2013-09-10 15:12:58', '2013-09-10 15:12:58'),
(180, 'Saint Lucia', 1, 0, '2013-09-10 15:12:58', '2013-09-10 15:12:58'),
(181, 'Saint Pierre and Miquelon', 1, 0, '2013-09-10 15:12:58', '2013-09-10 15:12:58'),
(182, 'Saint Vincent and the Grenadines', 1, 0, '2013-09-10 15:12:59', '2013-09-10 15:12:59'),
(183, 'Samoa', 1, 0, '2013-09-10 15:12:59', '2013-09-10 15:12:59'),
(184, 'San Marino', 1, 0, '2013-09-10 15:12:59', '2013-09-10 15:12:59'),
(185, 'Saudi Arabia', 1, 0, '2013-09-10 15:12:59', '2013-09-10 15:12:59'),
(186, 'Senegal', 1, 0, '2013-09-10 15:12:59', '2013-09-10 15:12:59'),
(187, 'Serbia', 1, 0, '2013-09-10 15:12:59', '2013-09-10 15:12:59'),
(188, 'Seychelles', 1, 0, '2013-09-10 15:12:59', '2013-09-10 15:12:59'),
(189, 'Sierra Leone', 1, 0, '2013-09-10 15:12:59', '2013-09-10 15:12:59'),
(190, 'Singapore', 1, 0, '2013-09-10 15:12:59', '2013-09-10 15:12:59'),
(191, 'Slovakia', 1, 0, '2013-09-10 15:12:59', '2013-09-10 15:12:59'),
(192, 'Slovenia', 1, 0, '2013-09-10 15:12:59', '2013-09-10 15:12:59'),
(193, 'Solomon Islands', 1, 0, '2013-09-10 15:13:00', '2013-09-10 15:13:00'),
(194, 'Somalia', 1, 0, '2013-09-10 15:13:00', '2013-09-10 15:13:00'),
(195, 'South Africa', 1, 0, '2013-09-10 15:13:00', '2013-09-10 15:13:00'),
(196, 'South Georgia and the South Sandwich Islands', 1, 0, '2013-09-10 15:13:00', '2013-09-10 15:13:00'),
(197, 'South Korea', 1, 0, '2013-09-10 15:13:00', '2013-09-10 15:13:00'),
(198, 'Spain', 1, 0, '2013-09-10 15:13:00', '2013-09-10 15:13:00'),
(199, 'Sri Lanka', 1, 0, '2013-09-10 15:13:00', '2013-09-10 15:13:00'),
(200, 'Sudan', 1, 0, '2013-09-10 15:13:00', '2013-09-10 15:13:00'),
(201, 'Suriname', 1, 0, '2013-09-10 15:13:00', '2013-09-10 15:13:00'),
(202, 'Swaziland', 1, 0, '2013-09-10 15:13:00', '2013-09-10 15:13:00'),
(203, 'Sweden', 1, 0, '2013-09-10 15:13:00', '2013-09-10 15:13:00'),
(204, 'Switzerland', 1, 0, '2013-09-10 15:13:00', '2013-09-10 15:13:00'),
(205, 'Syria', 1, 0, '2013-09-10 15:13:01', '2013-09-10 15:13:01'),
(206, 'Taiwan', 1, 0, '2013-09-10 15:13:01', '2013-09-10 15:13:01'),
(207, 'Tajikistan', 1, 0, '2013-09-10 15:13:01', '2013-09-10 15:13:01'),
(208, 'Tanzania', 1, 0, '2013-09-10 15:13:01', '2013-09-10 15:13:01'),
(209, 'Thailand', 1, 0, '2013-09-10 15:13:01', '2013-09-10 15:13:01'),
(210, 'Timor-Leste', 1, 0, '2013-09-10 15:13:01', '2013-09-10 15:13:01'),
(211, 'Togo', 1, 0, '2013-09-10 15:13:01', '2013-09-10 15:13:01'),
(212, 'Tokelau', 1, 0, '2013-09-10 15:13:01', '2013-09-10 15:13:01'),
(213, 'Tonga', 1, 0, '2013-09-10 15:13:01', '2013-09-10 15:13:01'),
(214, 'Trinidad and Tobago', 1, 0, '2013-09-10 15:13:01', '2013-09-10 15:13:01'),
(215, 'Tunisia', 1, 0, '2013-09-10 15:13:02', '2013-09-10 15:13:02'),
(216, 'Turkey', 1, 0, '2013-09-10 15:13:02', '2013-09-10 15:13:02'),
(217, 'Turkmenistan', 1, 0, '2013-09-10 15:13:02', '2013-09-10 15:13:02'),
(218, 'Turks and Caicos Islands', 1, 0, '2013-09-10 15:13:02', '2013-09-10 15:13:02'),
(219, 'Tuvalu', 1, 0, '2013-09-10 15:13:02', '2013-09-10 15:13:02'),
(220, 'Uganda', 1, 0, '2013-09-10 15:13:02', '2013-09-10 15:13:02'),
(221, 'Ukraine', 1, 0, '2013-09-10 15:13:02', '2013-09-10 15:13:02'),
(222, 'United Arab Emirates', 1, 0, '2013-09-10 15:13:02', '2013-09-10 15:13:02'),
(223, 'United Kingdom', 1, 0, '2013-09-10 15:13:02', '2013-09-10 15:13:02'),
(224, 'United States of America', 1, 0, '2013-09-10 15:13:02', '2013-09-10 15:13:02'),
(225, 'Uruguay', 1, 0, '2013-09-10 15:13:02', '2013-09-10 15:13:02'),
(226, 'Uzbekistan', 1, 0, '2013-09-10 15:13:02', '2013-09-10 15:13:02'),
(227, 'Vanuatu', 1, 0, '2013-09-10 15:13:03', '2013-09-10 15:13:03'),
(228, 'Vatican', 1, 0, '2013-09-10 15:13:03', '2013-09-10 15:13:03'),
(229, 'Venezuela', 1, 0, '2013-09-10 15:13:03', '2013-09-10 15:13:03'),
(230, 'Vietnam', 1, 0, '2013-09-10 15:13:03', '2013-09-10 15:13:03'),
(231, 'Wallis and Futuna', 1, 0, '2013-09-10 15:13:03', '2013-09-10 15:13:03'),
(232, 'Western Sahara', 1, 0, '2013-09-10 15:13:03', '2013-09-10 15:13:03'),
(233, 'Yemen', 1, 0, '2013-09-10 15:13:03', '2013-09-10 15:13:03'),
(234, 'Zambia', 1, 0, '2013-09-10 15:13:03', '2013-09-10 15:13:03'),
(235, 'Zimbabwe', 1, 0, '2013-09-10 15:13:03', '2013-09-10 15:13:03'),
(236, 'Côte d''Ivoire', 1, 0, '2013-09-10 16:00:00', '2013-09-10 16:00:00'),
(237, 'Åland', 1, 0, '2013-09-10 16:00:01', '2013-09-10 16:00:01');

-- --------------------------------------------------------

--
-- Structure de la table `picture`
--

CREATE TABLE IF NOT EXISTS `picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mime` varchar(32) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `live` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`category`),
  KEY `name` (`name`),
  KEY `live` (`live`),
  KEY `deleted` (`deleted`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `picture`
--

INSERT INTO `picture` (`id`, `category`, `filename`, `name`, `mime`, `size`, `width`, `height`, `live`, `deleted`, `created`, `modified`) VALUES
(2, 2, '9536-1378915367.jpg', 'ozozozoz', 'image/jpeg', 68473, 800, 600, 1, 0, '2013-09-11 16:02:47', '2013-09-11 16:02:47'),
(3, 2, '6105-1378915431.jpg', 'saysa', 'image/jpeg', 55544, 480, 640, 1, 0, '2013-09-11 16:03:51', '2013-09-11 16:03:51'),
(4, 5, '654-1378976236.jpg', 'leo', 'image/jpeg', 99998, 500, 600, 1, 0, '2013-09-12 08:57:16', '2013-09-12 08:57:16'),
(5, 6, '8910-1378978734.jpg', 'Bobby', 'image/jpeg', 1555, 48, 48, 1, 0, '2013-09-12 09:38:54', '2013-09-12 09:38:54');

-- --------------------------------------------------------

--
-- Structure de la table `picturecategory`
--

CREATE TABLE IF NOT EXISTS `picturecategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `live` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_2` (`name`),
  KEY `name` (`name`),
  KEY `live` (`live`),
  KEY `deleted` (`deleted`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `picturecategory`
--

INSERT INTO `picturecategory` (`id`, `name`, `live`, `deleted`, `created`, `modified`) VALUES
(1, 'artist', 1, 0, '2013-09-12 08:44:23', '2013-09-12 08:44:23'),
(2, 'concert', 1, 0, '2013-09-12 08:44:23', '2013-09-12 08:44:23'),
(3, 'interview', 1, 0, '2013-09-12 08:44:23', '2013-09-12 08:44:23'),
(4, 'event', 1, 0, '2013-09-12 08:44:23', '2013-09-12 08:44:23'),
(5, 'other', 1, 0, '2013-09-12 08:44:23', '2013-09-12 08:44:23'),
(6, 'contest', 1, 0, '2013-09-12 08:44:23', '2013-09-12 08:44:23');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first` varchar(100) DEFAULT NULL,
  `last` varchar(100) DEFAULT NULL,
  `nickname` varchar(100) DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `birthdate` datetime DEFAULT NULL,
  `login` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `notes` text,
  `admin` tinyint(4) DEFAULT NULL,
  `gmail` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `language` int(11) DEFAULT NULL,
  `timeDifference` int(11) DEFAULT NULL,
  `aboutYourself` text,
  `live` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nickname` (`nickname`),
  UNIQUE KEY `login_2` (`login`),
  KEY `login` (`login`),
  KEY `email` (`email`),
  KEY `admin` (`admin`),
  KEY `country` (`country`),
  KEY `live` (`live`),
  KEY `deleted` (`deleted`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `first`, `last`, `nickname`, `gender`, `birthdate`, `login`, `email`, `password`, `notes`, `admin`, `gmail`, `mobile`, `address`, `country`, `language`, `timeDifference`, `aboutYourself`, `live`, `deleted`, `created`, `modified`) VALUES
(1, 'Diego', 'Lopez', 'diego', NULL, NULL, 'diego', NULL, 'azerty77', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2013-09-11 12:50:37', '2013-09-11 12:50:37');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `picture`
--
ALTER TABLE `picture`
  ADD CONSTRAINT `picture_ibfk_1` FOREIGN KEY (`category`) REFERENCES `picturecategory` (`id`) ON DELETE SET NULL;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
