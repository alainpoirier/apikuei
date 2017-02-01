-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Client: localhost:3306
-- Généré le: Lun 30 Janvier 2017 à 13:54
-- Version du serveur: 5.6.34
-- Version de PHP: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `kuei_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `admins`
--

INSERT INTO `admins` (`id`, `parent_id`, `username`, `password`) VALUES
(1, 1, 'gnetix', '7d66646c4e9648e1e9bfd8f5b747af82'),
(2, 1, 'caroline', '18a143b120635643582e25ded828f1ee'),
(5, 1, 'Celine', '7013fbe148eb1a8b4336f90f80ffec9a');

-- --------------------------------------------------------

--
-- Structure de la table `admin_groups`
--

CREATE TABLE IF NOT EXISTS `admin_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `page_3` tinyint(1) NOT NULL DEFAULT '0',
  `page_4` tinyint(1) NOT NULL DEFAULT '0',
  `page_5` tinyint(1) NOT NULL DEFAULT '0',
  `page_6` tinyint(1) NOT NULL DEFAULT '0',
  `page_7` tinyint(1) NOT NULL DEFAULT '0',
  `page_8` tinyint(1) NOT NULL DEFAULT '0',
  `page_23` tinyint(1) NOT NULL DEFAULT '0',
  `page_24` tinyint(1) NOT NULL DEFAULT '0',
  `page_32` tinyint(1) NOT NULL DEFAULT '0',
  `page_33` tinyint(1) NOT NULL DEFAULT '0',
  `page_39` tinyint(1) NOT NULL DEFAULT '0',
  `page_40` tinyint(1) NOT NULL DEFAULT '0',
  `page_41` tinyint(1) NOT NULL DEFAULT '0',
  `page_42` tinyint(1) NOT NULL DEFAULT '0',
  `page_44` tinyint(1) NOT NULL DEFAULT '0',
  `page_45` tinyint(1) NOT NULL DEFAULT '0',
  `page_46` tinyint(1) NOT NULL DEFAULT '0',
  `page_47` tinyint(1) NOT NULL DEFAULT '0',
  `page_48` tinyint(1) NOT NULL DEFAULT '0',
  `page_49` tinyint(1) NOT NULL DEFAULT '0',
  `page_50` tinyint(1) NOT NULL DEFAULT '0',
  `page_51` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `admin_groups`
--

INSERT INTO `admin_groups` (`id`, `name`, `page_3`, `page_4`, `page_5`, `page_6`, `page_7`, `page_8`, `page_23`, `page_24`, `page_32`, `page_33`, `page_39`, `page_40`, `page_41`, `page_42`, `page_44`, `page_45`, `page_46`, `page_47`, `page_48`, `page_49`, `page_50`, `page_51`) VALUES
(1, 'Super Admin', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `bloc_contact`
--

CREATE TABLE IF NOT EXISTS `bloc_contact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `bloc_contact`
--

INSERT INTO `bloc_contact` (`id`, `parent_id`) VALUES
(1, 17);

-- --------------------------------------------------------

--
-- Structure de la table `bloc_contact_locations`
--

CREATE TABLE IF NOT EXISTS `bloc_contact_locations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `postal_code` varchar(7) NOT NULL,
  `phone1` varchar(20) DEFAULT NULL,
  `phone2` varchar(20) DEFAULT NULL,
  `toll_free_phone` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `email1` varchar(200) DEFAULT NULL,
  `email2` varchar(200) DEFAULT NULL,
  `google_map_address` text,
  `image` varchar(200) DEFAULT NULL,
  `rank` int(10) unsigned DEFAULT NULL,
  `title_fr` varchar(200) NOT NULL,
  `image_name_fr` varchar(255) DEFAULT NULL,
  `title_en` varchar(200) NOT NULL,
  `image_name_en` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `bloc_contact_locations`
--

INSERT INTO `bloc_contact_locations` (`id`, `parent_id`, `address`, `city`, `province`, `country`, `postal_code`, `phone1`, `phone2`, `toll_free_phone`, `fax`, `email1`, `email2`, `google_map_address`, `image`, `rank`, `title_fr`, `image_name_fr`, `title_en`, `image_name_en`) VALUES
(1, 1, '1516, rue Ouiatchouan', 'Mashteuiatsh', 'Québec', 'Canada', 'G0W 2H0', '418-275-7200', '', '1-888-222-7922', '418-275-6048', 'info@kuei.ca', '', 'http://maps.google.ca/maps?q=Carrefour+d''accueil+ilnu,+Rue+Ouiatchouan,+Mashteuiatsh,+QC&hl=en&sll=48.71445,-72.445442&sspn=0.658739,1.426849&oq=carrefour+d''accuei&hq=Carrefour+d''accueil+ilnu,+Rue+Ouiatchouan,&hnear=Mashteuiatsh,+Le+Domaine-du-Roy+Regional+County+Municipality,+Quebec&t=m&z=15&iwloc=A', 'DSCF1792.jpg', 1, 'Carrefour d''accueil Ilnu', '', 'Carrefour d''accueil Ilnu', '');

-- --------------------------------------------------------

--
-- Structure de la table `bloc_documents`
--

CREATE TABLE IF NOT EXISTS `bloc_documents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Contenu de la table `bloc_documents`
--

INSERT INTO `bloc_documents` (`id`, `parent_id`) VALUES
(2, 2),
(3, 3),
(4, 5),
(5, 6),
(6, 19),
(9, 23),
(8, 21),
(10, 24),
(13, 34),
(14, 37),
(15, 38),
(16, 39),
(17, 41);

-- --------------------------------------------------------

--
-- Structure de la table `bloc_documents_documents`
--

CREATE TABLE IF NOT EXISTS `bloc_documents_documents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `item_id` int(10) unsigned DEFAULT NULL,
  `type` tinyint(1) unsigned DEFAULT NULL,
  `rank` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Contenu de la table `bloc_documents_documents`
--

INSERT INTO `bloc_documents_documents` (`id`, `parent_id`, `item_id`, `type`, `rank`) VALUES
(1, 5, 1, 2, 1),
(14, 10, 7, 1, 1),
(6, 6, 5, 1, 1),
(5, 6, 4, 1, 2),
(9, 8, 6, 1, 1),
(10, 9, 6, 2, 1),
(21, 2, 3, 1, 1),
(19, 14, 20, 2, 1),
(20, 16, 21, 2, 1),
(18, 15, 19, 2, 1),
(25, 4, 2, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `bloc_editor`
--

CREATE TABLE IF NOT EXISTS `bloc_editor` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `content_fr` text NOT NULL,
  `content_en` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Contenu de la table `bloc_editor`
--

INSERT INTO `bloc_editor` (`id`, `parent_id`, `content_fr`, `content_en`) VALUES
(1, 4, '<br />\n', '<br />\n'),
(2, 7, '<p>\n	Nous, Pekuakamiulnuatsh, <a href="http://fr.wikipedia.org/wiki/Premi%C3%A8res_nations" target="_blank">Premi&egrave;re Nation</a> du Pekuakami (lac Saint-Jean), commun&eacute;ment appell&eacute;s <a href="http://fr.wikipedia.org/wiki/Am%C3%A9rindiens_au_Canada" target="_blank">Am&eacute;rindiens du Canada</a>,&nbsp;<a href="http://fr.wikipedia.org/wiki/Indiens_d%27Am%C3%A9rique" target="_blank">Indiens d&#39;Am&eacute;rique</a>&nbsp;ou <a href="http://fr.wikipedia.org/wiki/Innus" target="_blank">Montagnais</a>, sommes un peuple &agrave; racine nomade c&#39;est-&agrave;-dire au mode de vie bas&eacute; sur des d&eacute;placements organis&eacute;s sur le territoire que nous occupons et sommes de la grande famille des <a href="http://fr.wikipedia.org/wiki/Algonquins" target="_blank">Algonquins</a> de l&#39;Est du Canada.</p>\n<p>\n	&Agrave; l&#39;&eacute;poque, nos anc&ecirc;tres vivaient principalement de chasse, de p&ecirc;che et de cueillette de fruits sauvages. Comme ils avaient &agrave; parcourir d&#39;immenses territoires, ils se servaient des lacs et des rivi&egrave;res comme voies d&#39;acc&egrave;s. Le r&eacute;seau hydrographique constituait donc leurs routes, &agrave; la base de leurs nombreux d&eacute;placements sur Nitassinan.</p>\n<p>\n	L&#39;occupation humaine de la r&eacute;gion du Saguenay- Lac-Saint-Jean remonte &agrave; environ 5 000 ans. C&#39;est &agrave; cette p&eacute;riode que commence l&#39;histoire de notre peuple, les Pekuakamiulnuatsh, pr&eacute;sent sur ces territoires bien avant l&#39;&Egrave;re chr&eacute;tienne, la construction des pyramides en &Eacute;gypte et l&#39;arriv&eacute;e de Christophe Colomb en Am&eacute;rique.</p>\n<p>\n	Suivez notre histoire, pas &agrave; pas, &agrave; travers nos r&eacute;cits, tout en parcourant nos territoires et en naviguant sur nos rivi&egrave;res pour vous rendre en de multiples endroits o&ugrave; notre histoire s&#39;est &eacute;crite et o&ugrave; elle se perp&eacute;tue.</p>\n<p>\n	Bienvenue chez les Pekuakamiulnuatsh; bienvenue chez nous !</p>\n', '<p>\n	We, Pekuakamiulnuatsh, the <a href="http://en.wikipedia.org/wiki/Aboriginal_peoples_in_Quebec">First Nation of the Pekuakami</a> (Lac Saint-Jean), are at our roots a <a href="http://en.wikipedia.org/wiki/Nomad">nomadic people</a> i.e. our life-style is based on organised migration over the territory which we occupy and we are of the great <a href="http://en.wikipedia.org/wiki/Algonquian_peoples">Algonquin</a> Family of Eastern Canada. At the time, our ancestors lived mainly by hunting and fishing and gathering wild fruits. As they had the run of immense territories, they used the lakes and rivers as access routes. Thus the hydrographic network constituted their roads, at the base of their numerous migrations in Nitassinan.</p>\n<p>\n	Human occupation in the <a href="http://en.wikipedia.org/wiki/Saguenay%E2%80%93Lac-Saint-Jean">Saguenay &ndash; Lac St. Jean</a> region increased for about 5,000 years. It was at this period that the history of our people began; the Pekuakamiulnuatsh, were in these territories well before the Christian era, the construction of the pyramids in Egypt or the arrival of Christopher Columbus in America.</p>\n<p>\n	Follow our history, step by step, by means of our narratives, while crossing our territories and navigating our rivers to reach the many places where our history is written and where it continues.</p>\n<p>\n	Welcome to the <a href="http://en.wikipedia.org/wiki/Innu_people">Pekuakamiulnuatsh</a>; welcome to our home !</p>\n'),
(3, 8, '<p>\n	Ce minilexique fran&ccedil;ais-nehlueun pr&eacute;sente des extraits de l&rsquo;ouvrage intitul&eacute; Ilnu-aimun : lexique fran&ccedil;ais-montagnais qui a &eacute;t&eacute; &eacute;dit&eacute; par le service de l&rsquo;&Eacute;ducation du Conseil des Montagnais du Lac-Saint-Jean</p>\n<p>\n	<a href="http://nehlueun.com/Accueil.html">http://nehlueun.com/Accueil.html</a></p>', ''),
(12, 22, '<p>\n	Venez d&eacute;couvrir notre circuit d&#39;interpr&eacute;tation du patrimoine b&acirc;ti et v&eacute;cu de Mashteuiatsh.</p>\n', '<p>\n	Venez d&eacute;couvrir notre circuit d&#39;interpr&eacute;tation du patrimoine b&acirc;ti et v&eacute;cu de Mashteuiatsh.</p>\n'),
(13, 26, '<p>\n	Introdffsfdsfddsfds</p>\n', '<p>\n	gdfgdfgfdgdfgfd</p>\n'),
(4, 9, '<iframe width="640" height="480" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.ca/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Mashteuiatsh&amp;aq=&amp;sll=48.71445,-72.445442&amp;sspn=0.740289,1.756439&amp;ie=UTF8&amp;hq=&amp;hnear=Mashteuiatsh,+Le+Domaine-du-Roy+Regional+County+Municipality,+Quebec&amp;t=m&amp;ll=48.56752,-72.246094&amp;spn=3.489781,7.03125&amp;z=7&amp;iwloc=A&amp;output=embed"></iframe><br /><small><a href="http://maps.google.ca/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Mashteuiatsh&amp;aq=&amp;sll=48.71445,-72.445442&amp;sspn=0.740289,1.756439&amp;ie=UTF8&amp;hq=&amp;hnear=Mashteuiatsh,+Le+Domaine-du-Roy+Regional+County+Municipality,+Quebec&amp;t=m&amp;ll=48.56752,-72.246094&amp;spn=3.489781,7.03125&amp;z=7&amp;iwloc=A" style="color:#0000FF;text-align:left">View Larger Map</a></small>', '<iframe width="640" height="480" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.ca/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Mashteuiatsh&amp;aq=&amp;sll=48.71445,-72.445442&amp;sspn=0.740289,1.756439&amp;ie=UTF8&amp;hq=&amp;hnear=Mashteuiatsh,+Le+Domaine-du-Roy+Regional+County+Municipality,+Quebec&amp;t=m&amp;ll=48.56752,-72.246094&amp;spn=3.489781,7.03125&amp;z=7&amp;iwloc=A&amp;output=embed"></iframe><br /><small><a href="http://maps.google.ca/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Mashteuiatsh&amp;aq=&amp;sll=48.71445,-72.445442&amp;sspn=0.740289,1.756439&amp;ie=UTF8&amp;hq=&amp;hnear=Mashteuiatsh,+Le+Domaine-du-Roy+Regional+County+Municipality,+Quebec&amp;t=m&amp;ll=48.56752,-72.246094&amp;spn=3.489781,7.03125&amp;z=7&amp;iwloc=A" style="color:#0000FF;text-align:left">View Larger Map</a></small>'),
(5, 10, '<iframe width="640" height="480" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.ca/maps?f=d&amp;source=s_d&amp;saddr=Quebec,+QC&amp;daddr=Mashteuiatsh,+QC+G0W&amp;hl=en&amp;geocode=FVMpygId1OvA-ymTiNsFipa4TDEDOujwYy3Fjw%3BFYsi5QIdr62x-ykdMHCeIv_BTDH_KBBUk1fKvg&amp;aq=0&amp;oq=Qu%C3%A9bec&amp;sll=48.611122,-69.752197&amp;sspn=5.934847,14.051514&amp;mra=ls&amp;ie=UTF8&amp;t=m&amp;ll=47.691277,-71.707764&amp;spn=1.774856,3.515625&amp;z=8&amp;output=embed"></iframe><br /><small><a href="http://maps.google.ca/maps?f=d&amp;source=embed&amp;saddr=Quebec,+QC&amp;daddr=Mashteuiatsh,+QC+G0W&amp;hl=en&amp;geocode=FVMpygId1OvA-ymTiNsFipa4TDEDOujwYy3Fjw%3BFYsi5QIdr62x-ykdMHCeIv_BTDH_KBBUk1fKvg&amp;aq=0&amp;oq=Qu%C3%A9bec&amp;sll=48.611122,-69.752197&amp;sspn=5.934847,14.051514&amp;mra=ls&amp;ie=UTF8&amp;t=m&amp;ll=47.691277,-71.707764&amp;spn=1.774856,3.515625&amp;z=8" style="color:#0000FF;text-align:left">View Larger Map</a></small>', '<iframe width="640" height="480" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.ca/maps?f=d&amp;source=s_d&amp;saddr=Quebec,+QC&amp;daddr=Mashteuiatsh,+QC+G0W&amp;hl=en&amp;geocode=FVMpygId1OvA-ymTiNsFipa4TDEDOujwYy3Fjw%3BFYsi5QIdr62x-ykdMHCeIv_BTDH_KBBUk1fKvg&amp;aq=0&amp;oq=Qu%C3%A9bec&amp;sll=48.611122,-69.752197&amp;sspn=5.934847,14.051514&amp;mra=ls&amp;ie=UTF8&amp;t=m&amp;ll=47.691277,-71.707764&amp;spn=1.774856,3.515625&amp;z=8&amp;output=embed"></iframe><br /><small><a href="http://maps.google.ca/maps?f=d&amp;source=embed&amp;saddr=Quebec,+QC&amp;daddr=Mashteuiatsh,+QC+G0W&amp;hl=en&amp;geocode=FVMpygId1OvA-ymTiNsFipa4TDEDOujwYy3Fjw%3BFYsi5QIdr62x-ykdMHCeIv_BTDH_KBBUk1fKvg&amp;aq=0&amp;oq=Qu%C3%A9bec&amp;sll=48.611122,-69.752197&amp;sspn=5.934847,14.051514&amp;mra=ls&amp;ie=UTF8&amp;t=m&amp;ll=47.691277,-71.707764&amp;spn=1.774856,3.515625&amp;z=8" style="color:#0000FF;text-align:left">View Larger Map</a></small>'),
(6, 11, '<iframe width="640" height="480" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.ca/maps?f=d&amp;source=s_d&amp;saddr=Montreal,+QC&amp;daddr=Mashteuiatsh,+QC+G0W&amp;hl=en&amp;geocode=FT5otgIduKed-ykNt2QcVBrJTDHv7x8hODFOZQ%3BFYsi5QIdr62x-ykdMHCeIv_BTDH_KBBUk1fKvg&amp;aq=0&amp;oq=Montr%C3%A9,+QC&amp;sll=47.405785,-70.048828&amp;sspn=6.074944,14.051514&amp;mra=ls&amp;ie=UTF8&amp;t=m&amp;ll=47.040182,-72.817383&amp;spn=3.59386,7.03125&amp;z=7&amp;output=embed"></iframe><br /><small><a href="http://maps.google.ca/maps?f=d&amp;source=embed&amp;saddr=Montreal,+QC&amp;daddr=Mashteuiatsh,+QC+G0W&amp;hl=en&amp;geocode=FT5otgIduKed-ykNt2QcVBrJTDHv7x8hODFOZQ%3BFYsi5QIdr62x-ykdMHCeIv_BTDH_KBBUk1fKvg&amp;aq=0&amp;oq=Montr%C3%A9,+QC&amp;sll=47.405785,-70.048828&amp;sspn=6.074944,14.051514&amp;mra=ls&amp;ie=UTF8&amp;t=m&amp;ll=47.040182,-72.817383&amp;spn=3.59386,7.03125&amp;z=7" style="color:#0000FF;text-align:left">View Larger Map</a></small>', '<iframe width="640" height="480" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.ca/maps?f=d&amp;source=s_d&amp;saddr=Montreal,+QC&amp;daddr=Mashteuiatsh,+QC+G0W&amp;hl=en&amp;geocode=FT5otgIduKed-ykNt2QcVBrJTDHv7x8hODFOZQ%3BFYsi5QIdr62x-ykdMHCeIv_BTDH_KBBUk1fKvg&amp;aq=0&amp;oq=Montr%C3%A9,+QC&amp;sll=47.405785,-70.048828&amp;sspn=6.074944,14.051514&amp;mra=ls&amp;ie=UTF8&amp;t=m&amp;ll=47.040182,-72.817383&amp;spn=3.59386,7.03125&amp;z=7&amp;output=embed"></iframe><br /><small><a href="http://maps.google.ca/maps?f=d&amp;source=embed&amp;saddr=Montreal,+QC&amp;daddr=Mashteuiatsh,+QC+G0W&amp;hl=en&amp;geocode=FT5otgIduKed-ykNt2QcVBrJTDHv7x8hODFOZQ%3BFYsi5QIdr62x-ykdMHCeIv_BTDH_KBBUk1fKvg&amp;aq=0&amp;oq=Montr%C3%A9,+QC&amp;sll=47.405785,-70.048828&amp;sspn=6.074944,14.051514&amp;mra=ls&amp;ie=UTF8&amp;t=m&amp;ll=47.040182,-72.817383&amp;spn=3.59386,7.03125&amp;z=7" style="color:#0000FF;text-align:left">View Larger Map</a></small>'),
(7, 12, '<p>\n	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lacus erat, auctor vel aliquam eleifend, mattis laoreet eros. Cras a luctus quam. Praesent fringilla eleifend lorem in tincidunt. Morbi orci justo, porttitor non tincidunt quis, hendrerit ac neque. Vestibulum pellentesque, turpis ut fermentum consequat, est felis gravida justo, eu tincidunt risus lorem nec nunc. Donec in nibh vel lacus tincidunt lacinia. Aenean bibendum est ut diam eleifend at cursus ante tristique. Ut pellentesque tortor dapibus metus vulputate sollicitudin luctus nulla vulputate. Fusce eget vestibulum felis. Maecenas sem dui, vehicula vitae vestibulum ac, feugiat ac ligula. Morbi non egestas risus.</p>\n', '<p>\n	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lacus erat, auctor vel aliquam eleifend, mattis laoreet eros. Cras a luctus quam. Praesent fringilla eleifend lorem in tincidunt. Morbi orci justo, porttitor non tincidunt quis, hendrerit ac neque. Vestibulum pellentesque, turpis ut fermentum consequat, est felis gravida justo, eu tincidunt risus lorem nec nunc. Donec in nibh vel lacus tincidunt lacinia. Aenean bibendum est ut diam eleifend at cursus ante tristique. Ut pellentesque tortor dapibus metus vulputate sollicitudin luctus nulla vulputate. Fusce eget vestibulum felis. Maecenas sem dui, vehicula vitae vestibulum ac, feugiat ac ligula. Morbi non egestas risus.</p>\n'),
(8, 13, '<p>\n	Abonnez-vous &agrave; notre page Facebook et publiez les photos de votre s&eacute;jour!</p>\n<p>\n	<fb:like font="arial" href="http://www.facebook.com/pages/Communaut%C3%A9-Ilnu-de-Mashteuiatsh/139750602773513" send="false" show_faces="true" width="450"></fb:like></p>\n', '<p>\n	FACEBOOK PLUGIN</p>\n'),
(9, 14, '<p>\n	Suivez-nous sur Twitter et partagez votre s&eacute;jour dans le sujet <strong>#mashteuiatsh</strong></p>\n<p>\n	<a class="twitter-follow-button" data-lang="fr" data-show-count="false" href="https://twitter.com/mashteuiatsh">Suivre @mashteuiatsh</a> <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script></p>\n', '<p>\n	Suivez-nous sur Twitter et publiez dans le sujet <strong>#mashteuiatsh</strong></p>\n<p>\n	<a class="twitter-follow-button" data-lang="fr" data-show-count="false" href="https://twitter.com/mashteuiatsh">Suivre @mashteuiatsh</a> <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script></p>\n'),
(10, 15, '<p>\n	Consultez nos photos sur Flickr</p>\n<!-- Start of Flickr Badge -->\n<style type="text/css">\n#flickr_badge_source_txt {padding:0; font: 11px Arial, Helvetica, Sans serif; color:#666666;}\n#flickr_badge_icon {display:block !important; margin:0 !important; border: 1px solid rgb(0, 0, 0) !important;}\n#flickr_icon_td {padding:0 5px 0 0 !important;}\n.flickr_badge_image {text-align:center !important;}\n.flickr_badge_image img {border: 1px solid black !important;}\n#flickr_www {display:block; text-align:left; padding:0 10px 0 10px !important; font: 11px Arial, Helvetica, Sans serif !important; color:#3993ff !important;}\n#flickr_badge_uber_wrapper a:hover,\n#flickr_badge_uber_wrapper a:link,\n#flickr_badge_uber_wrapper a:active,\n#flickr_badge_uber_wrapper a:visited {text-decoration:none !important; background:inherit !important;color:#3993ff;}\n#flickr_badge_wrapper {background-color:#FFFFFF;border: solid 1px #FFFFFF}\n#flickr_badge_source {padding:0 !important; font: 11px Arial, Helvetica, Sans serif !important; color:#666666 !important;}\n</style>\n<table id="flickr_badge_uber_wrapper" cellpadding="0" cellspacing="10" border="0"><tr><td><a href="http://www.flickr.com" id="flickr_www">www.<strong style="color:#3993ff">flick<span style="color:#ff1c92">r</span></strong>.com</a><table cellpadding="0" cellspacing="10" border="0" id="flickr_badge_wrapper">\n<tr>\n<script type="text/javascript" src="http://www.flickr.com/badge_code_v2.gne?show_name=1&count=5&display=random&size=s&layout=h&source=user&user=84017552%40N03"></script>\n<td id="flickr_badge_source" valign="center" align="center">\n<table cellpadding="0" cellspacing="0" border="0"><tr>\n<td width="10" id="flickr_icon_td"><a href="http://www.flickr.com/photos/84017552@N03/"><img id="flickr_badge_icon" alt="Kuei.ca''s items" src="http://farm8.staticflickr.com/7259/buddyicons/84017552@N03.jpg?1343846100#84017552@N03" align="left" width="48" height="48"></a></td>\n<td id="flickr_badge_source_txt"><nobr>Go to</nobr> <a href="http://www.flickr.com/photos/84017552@N03/">Kuei.ca''s photostream</a></td>\n</tr></table>\n</td>\n</tr>\n</table>\n</td></tr></table>\n<!-- End of Flickr Badge -->\n', '<p>\n	Consultez nos photos sur Flickr</p>\n<!-- Start of Flickr Badge -->\n<style type="text/css">\n#flickr_badge_source_txt {padding:0; font: 11px Arial, Helvetica, Sans serif; color:#666666;}\n#flickr_badge_icon {display:block !important; margin:0 !important; border: 1px solid rgb(0, 0, 0) !important;}\n#flickr_icon_td {padding:0 5px 0 0 !important;}\n.flickr_badge_image {text-align:center !important;}\n.flickr_badge_image img {border: 1px solid black !important;}\n#flickr_www {display:block; text-align:left; padding:0 10px 0 10px !important; font: 11px Arial, Helvetica, Sans serif !important; color:#3993ff !important;}\n#flickr_badge_uber_wrapper a:hover,\n#flickr_badge_uber_wrapper a:link,\n#flickr_badge_uber_wrapper a:active,\n#flickr_badge_uber_wrapper a:visited {text-decoration:none !important; background:inherit !important;color:#3993ff;}\n#flickr_badge_wrapper {background-color:#FFFFFF;border: solid 1px #FFFFFF}\n#flickr_badge_source {padding:0 !important; font: 11px Arial, Helvetica, Sans serif !important; color:#666666 !important;}\n</style>\n<table id="flickr_badge_uber_wrapper" cellpadding="0" cellspacing="10" border="0"><tr><td><a href="http://www.flickr.com" id="flickr_www">www.<strong style="color:#3993ff">flick<span style="color:#ff1c92">r</span></strong>.com</a><table cellpadding="0" cellspacing="10" border="0" id="flickr_badge_wrapper">\n<tr>\n<script type="text/javascript" src="http://www.flickr.com/badge_code_v2.gne?show_name=1&count=5&display=random&size=s&layout=h&source=user&user=84017552%40N03"></script>\n<td id="flickr_badge_source" valign="center" align="center">\n<table cellpadding="0" cellspacing="0" border="0"><tr>\n<td width="10" id="flickr_icon_td"><a href="http://www.flickr.com/photos/84017552@N03/"><img id="flickr_badge_icon" alt="Kuei.ca''s items" src="http://farm8.staticflickr.com/7259/buddyicons/84017552@N03.jpg?1343846100#84017552@N03" align="left" width="48" height="48"></a></td>\n<td id="flickr_badge_source_txt"><nobr>Go to</nobr> <a href="http://www.flickr.com/photos/84017552@N03/">Kuei.ca''s photostream</a></td>\n</tr></table>\n</td>\n</tr>\n</table>\n</td></tr></table>\n<!-- End of Flickr Badge -->\n'),
(11, 16, '<p>\n	Signalez votre pr&eacute;sence en connectant avec les diff&eacute;rents attraits et points d&#39;int&eacute;r&ecirc;ts.<br />\n	<br />\n	<a href="https://foursquare.com/search?q=Mashteuiatsh"><img alt="" src="https://playfoursquare.s3.amazonaws.com/press/logo/checkinon-blue.png" style="width: 150px; height: 24px; " /></a></p>', '<p>\n	Signalez votre pr&eacute;sence en connectant avec les diff&eacute;rents attraits et points d&#39;int&eacute;r&ecirc;ts.<br />\n	<br />\n	<a href="https://foursquare.com/search?q=Mashteuiatsh"><img alt="" src="https://playfoursquare.s3.amazonaws.com/press/logo/checkinon-blue.png" style="width: 150px; height: 24px; " /></a></p>'),
(14, 28, '<h4>\n	Venez &agrave; la d&eacute;couverte des Pekuakamiulnuatsh, le temps d&rsquo;une journ&eacute;e ou d&rsquo;une demi-journ&eacute;e.</h4>\n<p>\n	Situ&eacute; sur les rives du Lac-Saint-Jean, Mashteuiatsh offre &agrave; ses visiteurs une exp&eacute;rience culturelle dans un cadre naturel exceptionnel et enchanteur.</p>\n<p>\n	Plusieurs activit&eacute;s et services sont offerts par nos principaux partenaires vous permettant de passer un s&eacute;jour agr&eacute;able tout en d&eacute;couvrant la culture des Pekuakamiulnuatsh &agrave; travers son histoire, ses traditions et ses coutumes.</p>\n<p>\n	Nous planifierons pour votre groupe scolaire, votre organisme ou votre entreprise un s&eacute;jour adapt&eacute; &agrave; vos besoins. Consultez nos offres et nos activit&eacute;s !<br />\n	&nbsp;</p>\n', '<h4>\n	Venez &agrave; la d&eacute;couverte des Pekuakamiulnuatsh, le temps d&rsquo;une journ&eacute;e ou d&rsquo;une demi-journ&eacute;e.</h4>\n<p>\n	Situ&eacute; sur les rives du Lac-Saint-Jean, Mashteuiatsh offre &agrave; ses visiteurs une exp&eacute;rience culturelle dans un cadre naturel exceptionnel et enchanteur.</p>\n<p>\n	Plusieurs activit&eacute;s et services sont offerts par nos principaux partenaires vous permettant de passer un s&eacute;jour agr&eacute;able tout en d&eacute;couvrant la culture des Pekuakamiulnuatsh &agrave; travers son histoire, ses traditions et ses coutumes.</p>\n<p>\n	Nous planifierons pour votre groupe scolaire, votre organisme ou votre entreprise un s&eacute;jour adapt&eacute; &agrave; vos besoins. Consultez nos offres et nos activit&eacute;s !<br />\n	&nbsp;</p>\n'),
(15, 29, '<p>\n	La communaut&eacute; de Mashteuiatsh accueille chaque ann&eacute;e des groupes scolaires de tous les niveaux. Gr&acirc;ce &agrave; nos partenaires, le Mus&eacute;e am&eacute;rindien de Mashteuiatsh, Site Uashassihtsh de transmission culturel et Aventure Plume Blanche, nous invitons les &eacute;l&egrave;ves &agrave; vivre des exp&eacute;riences d&rsquo;apprentissage enrichissantes.</p>\n<p>\n	Un guide p&eacute;dagogique est &agrave; la disposition des enseignants et propose 6 sc&eacute;narios d&rsquo;animation soit quatre pour le deuxi&egrave;me cycle du primaire et 2 pour le premier cycle du secondaire.&nbsp; Les sc&eacute;narios d&rsquo;animation ont &eacute;t&eacute; structur&eacute;s en fonction, des approches p&eacute;dagogiques du Programme de formation de l&rsquo;&eacute;cole qu&eacute;b&eacute;coise. Vous pouvez les consulter en cliquant sur le lien suivant :</p>\n<p>\n	<a href="http://www.surlestracesilnu.ca/pdf/guide-accompagnement.pdf">http://www.surlestracesilnu.ca/pdf/guide-accompagnement.pdf</a></p>\n<p>\n	Nous vous offrons &eacute;galement des services, et ce, selon la dur&eacute;e de votre s&eacute;jour et de vos besoins:</p>\n<ul>\n	<li>\n		Stationnement gratuit;</li>\n	<li>\n		Salle int&eacute;rieure pour les repas;</li>\n	<li>\n		Aires de pique-nique &agrave; l&rsquo;ext&eacute;rieur;</li>\n	<li>\n		Transport par autobus dans la communaut&eacute; ;</li>\n	<li>\n		Guides animateurs;</li>\n	<li>\n		Ateliers et conf&eacute;renciers.</li>\n</ul>\n<p>\n	Pour de plus amples informations ou r&eacute;servations, veuillez contacter :</p>\n<p>\n	<strong>C&eacute;line Taillon, Agente commerciale<br />\n	Nikuishkushtakan / Carrefour d&rsquo;accueil Ilnu<br />\n	T&eacute;l&eacute;phone sans frais : 1.888.222-7922<br />\n	T&eacute;l&eacute;phone : 418-275-5757 poste 107&nbsp;&nbsp;&nbsp;<br />\n	T&eacute;l&eacute;copieur : 418-275-6048<br />\n	Courriel : <a href="mailto:celine.taillon@sdei.ca">celine.taillon@sdei.ca</a></strong></p>\n', '<p>\n	Vous &ecirc;tes &agrave; la recherche d&rsquo;un endroit diff&eacute;rent pour un voyage organis&eacute; ou &eacute;v&eacute;nement? &nbsp; La communaut&eacute; de Mashteuiatsh vous offre une gamme de services adapt&eacute;s &agrave; vos besoins.</p>\n<p>\n	Gr&acirc;ce &agrave; nos diff&eacute;rents partenaires, nous pouvons pr&eacute;parer votre s&eacute;jour, selon vos besoins, et ce, dans une atmosph&egrave;re empreinte de la culture des Pekuakamiulnuatsh.</p>\n<p>\n	Plusieurs activit&eacute;s int&eacute;rieures et ext&eacute;rieures vous sont offertes selon les saisons. &nbsp;De plus, plusieurs services sont &eacute;galement disponibles :</p>\n<ul>\n	<li>\n		Salle de r&eacute;union avec &eacute;cran, projecteur et tableau &agrave; feuilles mobiles</li>\n	<li>\n		Pauses-caf&eacute; authentiques</li>\n	<li>\n		Service de transport par autobus dans la communaut&eacute;</li>\n	<li>\n		Service de buffet et de traiteur</li>\n	<li>\n		Acc&egrave;s aux visites, activit&eacute;s ou conf&eacute;rences sur le site</li>\n	<li>\n		Cadeaux pour les participants</li>\n</ul>\n<p>\n	Pour de plus amples informations ou r&eacute;servations, veuillez contacter :<br />\n	C&eacute;line Taillon, Agente commerciale<br />\n	Nikuishkushtakan / Carrefour d&rsquo;accueil Ilnu<br />\n	T&eacute;l&eacute;phone sans frais : 1.888.222-79222<br />\n	T&eacute;l&eacute;phone : 418-275-5757 poste 107&nbsp;&nbsp;&nbsp;<br />\n	T&eacute;l&eacute;copieur : 418-275-6048<br />\n	Courriel : celine.taillon@sdei.ca<br />\n	&nbsp;</p>\n'),
(16, 33, '<p>\n	Vous &ecirc;tes &agrave; la recherche d&rsquo;un endroit diff&eacute;rent pour un voyage organis&eacute; ou &eacute;v&eacute;nement? &nbsp; La communaut&eacute; de Mashteuiatsh vous offre une gamme de services adapt&eacute;s &agrave; vos besoins. Gr&acirc;ce &agrave; nos diff&eacute;rents partenaires, nous pouvons pr&eacute;parer votre s&eacute;jour, selon vos besoins, et ce, dans une atmosph&egrave;re empreinte de la culture des Pekuakamiulnuatsh.</p>\n<p>\n	<br />\n	Plusieurs activit&eacute;s int&eacute;rieures et ext&eacute;rieures vous sont offertes selon les saisons.&nbsp;&nbsp; De plus, plusieurs services sont &eacute;galement disponibles :</p>\n<ul>\n	<li>\n		Salle de r&eacute;union avec &eacute;cran, projecteur et tableau &agrave; feuilles mobiles</li>\n	<li>\n		Pauses-caf&eacute; authentiques</li>\n	<li>\n		Service de transport par autobus dans la communaut&eacute;</li>\n	<li>\n		Service de buffet et de traiteur</li>\n	<li>\n		Acc&egrave;s aux visites, activit&eacute;s ou conf&eacute;rences sur le site</li>\n	<li>\n		Cadeaux pour les participants</li>\n</ul>\n<p>\n	<br />\n	Pour de plus amples informations ou r&eacute;servations, veuillez contacter :</p>\n<p>\n	<strong>Madame C&eacute;line Taillon, Agente commerciale<br />\n	Nikuishkushtakan / Carrefour d&rsquo;accueil Ilnu<br />\n	T&eacute;l&eacute;phone sans frais : 1.888.222-7922<br />\n	T&eacute;l&eacute;phone : 418-275-5757 poste 107&nbsp;&nbsp;&nbsp;<br />\n	T&eacute;l&eacute;copieur : 418-275-6048<br />\n	Courriel : celine.taillon@sdei.ca</strong><br />\n	&nbsp;</p>\n', ''),
(17, 35, '<p>\n	Vous &ecirc;tes &agrave; la recherche d&#39;un endroit alternatif pour une r&eacute;union ou un &eacute;v&eacute;nement d&rsquo;affaires?&nbsp; La communaut&eacute; de Mashteuiatsh vous offre une gamme de services adapt&eacute;s &agrave; vos besoins.</p>\n<p>\n	Gr&acirc;ce &agrave; nos diff&eacute;rents partenaires, nous pouvons pr&eacute;parer votre s&eacute;jour sur mesure selon vos besoins dans une atmosph&egrave;re empreinte de la culture des Pekuakamiulnuatsh.</p>\n<p>\n	Nos installations ainsi que notre personnel assureront la r&eacute;ussite de votre r&eacute;union ou &eacute;v&eacute;nement.&nbsp;&nbsp; Plusieurs services sont disponibles :</p>\n<ul>\n	<li>\n		Salle de r&eacute;union avec &eacute;cran, projecteur et tableau &agrave; feuilles mobiles</li>\n	<li>\n		Pauses-caf&eacute; authentiques</li>\n	<li>\n		Service de buffet et de traiteur</li>\n	<li>\n		Service de transport par autobus sur la communaut&eacute;</li>\n	<li>\n		Acc&egrave;s aux visites, activit&eacute;s ou conf&eacute;rences sur le site</li>\n	<li>\n		Cadeaux pour les participants</li>\n</ul>\n<p>\n	Pour de plus amples informations ou r&eacute;servations, veuillez contacter :</p>\n<p>\n	<strong>Madame C&eacute;line Taillon, Agente commerciale<br />\n	Nikuishkushtakan / Carrefour d&rsquo;accueil Ilnu<br />\n	T&eacute;l&eacute;phone sans frais : 1.888.222-7922<br />\n	T&eacute;l&eacute;phone : 418-275-5757 poste 107&nbsp;&nbsp;&nbsp;<br />\n	T&eacute;l&eacute;copieur : 418-275-6048<br />\n	Courriel : celine.taillon@sdei.ca</strong><br />\n	&nbsp;</p>\n', '');

-- --------------------------------------------------------

--
-- Structure de la table `bloc_flickr_gallery`
--

CREATE TABLE IF NOT EXISTS `bloc_flickr_gallery` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `show_amount` tinyint(3) unsigned DEFAULT NULL,
  `photoset_id` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0=Carousel,1=Liste',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `bloc_flickr_gallery`
--

INSERT INTO `bloc_flickr_gallery` (`id`, `parent_id`, `show_amount`, `photoset_id`, `user`, `type`) VALUES
(5, 36, 3, '72157633373235071', '3', 0),
(4, 32, 3, '72157633372932095', '3', 0);

-- --------------------------------------------------------

--
-- Structure de la table `bloc_repertoire`
--

CREATE TABLE IF NOT EXISTS `bloc_repertoire` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `bloc_repertoire_repertoire`
--

CREATE TABLE IF NOT EXISTS `bloc_repertoire_repertoire` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `item_id` int(10) unsigned DEFAULT NULL,
  `rank` int(10) unsigned DEFAULT NULL,
  `type` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `bloc_social`
--

CREATE TABLE IF NOT EXISTS `bloc_social` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `facebook_send` tinyint(3) unsigned NOT NULL,
  `facebook_like` tinyint(3) unsigned NOT NULL,
  `twitter_button` tinyint(3) unsigned NOT NULL,
  `plusone_button` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `bloc_youtube`
--

CREATE TABLE IF NOT EXISTS `bloc_youtube` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `video` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `bloc_youtube`
--

INSERT INTO `bloc_youtube` (`id`, `parent_id`, `video`) VALUES
(1, 40, 'https://www.youtube.com/watch?v=4Vb7P89P7EM');

-- --------------------------------------------------------

--
-- Structure de la table `cats`
--

CREATE TABLE IF NOT EXISTS `cats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_fr` text NOT NULL,
  `name_fr` text NOT NULL,
  `content_fr` text,
  `title_en` text NOT NULL,
  `name_en` text NOT NULL,
  `content_en` text,
  `alias` text NOT NULL,
  `changeable` tinyint(1) unsigned NOT NULL,
  `allow_subpages` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `cats`
--

INSERT INTO `cats` (`id`, `title_fr`, `name_fr`, `content_fr`, `title_en`, `name_en`, `content_en`, `alias`, `changeable`, `allow_subpages`) VALUES
(1, 'Localisation et itinéraires', 'localisation-et-itineraires', '', 'Location and directions', 'location-and-directions', '', 'localisation-et-itineraires', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `flickr_users`
--

CREATE TABLE IF NOT EXISTS `flickr_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `flickr_user_id` text NOT NULL,
  `flickr_reference_name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `flickr_users`
--

INSERT INTO `flickr_users` (`id`, `flickr_user_id`, `flickr_reference_name`) VALUES
(3, '84017552@N03', 'Kuei.ca');

-- --------------------------------------------------------

--
-- Structure de la table `mod_attraits`
--

CREATE TABLE IF NOT EXISTS `mod_attraits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dates` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `city` text NOT NULL,
  `postal_code` text NOT NULL,
  `tel` text NOT NULL,
  `cell` text NOT NULL,
  `toll_free` varchar(20) NOT NULL,
  `fax` text NOT NULL,
  `email` text NOT NULL,
  `website` text NOT NULL,
  `website2` text NOT NULL,
  `google_maps` text NOT NULL,
  `facebook` text NOT NULL,
  `twitter` text NOT NULL,
  `foursquare` text NOT NULL,
  `tripadvisor` text NOT NULL,
  `service_restaurant` tinyint(1) unsigned NOT NULL,
  `service_disability` tinyint(1) unsigned NOT NULL,
  `groups` tinyint(1) unsigned NOT NULL,
  `name_fr` text NOT NULL,
  `description_fr` text NOT NULL,
  `address_fr` text NOT NULL,
  `activities_fr` text NOT NULL,
  `services_fr` text NOT NULL,
  `quality_indicator_fr` text NOT NULL,
  `service_restaurant_description_fr` text NOT NULL,
  `service_disability_description_fr` text NOT NULL,
  `groups_description_fr` text NOT NULL,
  `name_en` text NOT NULL,
  `description_en` text NOT NULL,
  `address_en` text NOT NULL,
  `activities_en` text NOT NULL,
  `services_en` text NOT NULL,
  `quality_indicator_en` text NOT NULL,
  `service_restaurant_description_en` text NOT NULL,
  `service_disability_description_en` text NOT NULL,
  `groups_description_en` text NOT NULL,
  `logo` text NOT NULL,
  `main_photo` varchar(255) NOT NULL,
  `dates_custom_fr` text NOT NULL,
  `dates_custom_en` text NOT NULL,
  `flickr_photoset_id` text NOT NULL,
  `flickr_show_amount` smallint(5) unsigned NOT NULL,
  `flickr_user` text NOT NULL,
  `gallery_type` tinyint(1) unsigned NOT NULL,
  `url_fr` text NOT NULL,
  `url_en` text NOT NULL,
  `fees_fr` text NOT NULL,
  `fees_en` text NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `vedette` tinyint(1) unsigned NOT NULL,
  `season_spring` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `season_summer` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `season_fall` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `season_winter` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `period_start_month` varchar(2) NOT NULL,
  `period_start_day` varchar(2) NOT NULL,
  `period_end_month` varchar(2) NOT NULL,
  `period_end_day` varchar(2) NOT NULL,
  `cat_0` tinyint(1) unsigned NOT NULL,
  `cat_1` tinyint(1) unsigned NOT NULL,
  `cat_2` tinyint(1) unsigned NOT NULL,
  `cat_3` tinyint(1) unsigned NOT NULL,
  `payment_1` tinyint(1) unsigned NOT NULL,
  `payment_2` tinyint(1) unsigned NOT NULL,
  `payment_3` tinyint(1) unsigned NOT NULL,
  `payment_4` tinyint(1) unsigned NOT NULL,
  `payment_5` tinyint(1) unsigned NOT NULL,
  `payment_6` tinyint(1) unsigned NOT NULL,
  `payment_7` tinyint(1) unsigned NOT NULL,
  `payment_8` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `seasons` (`season_spring`,`season_summer`,`season_fall`,`season_winter`),
  KEY `categories` (`cat_0`,`cat_1`,`cat_2`,`cat_3`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Contenu de la table `mod_attraits`
--

INSERT INTO `mod_attraits` (`id`, `dates`, `city`, `postal_code`, `tel`, `cell`, `toll_free`, `fax`, `email`, `website`, `website2`, `google_maps`, `facebook`, `twitter`, `foursquare`, `tripadvisor`, `service_restaurant`, `service_disability`, `groups`, `name_fr`, `description_fr`, `address_fr`, `activities_fr`, `services_fr`, `quality_indicator_fr`, `service_restaurant_description_fr`, `service_disability_description_fr`, `groups_description_fr`, `name_en`, `description_en`, `address_en`, `activities_en`, `services_en`, `quality_indicator_en`, `service_restaurant_description_en`, `service_disability_description_en`, `groups_description_en`, `logo`, `main_photo`, `dates_custom_fr`, `dates_custom_en`, `flickr_photoset_id`, `flickr_show_amount`, `flickr_user`, `gallery_type`, `url_fr`, `url_en`, `fees_fr`, `fees_en`, `type`, `vedette`, `season_spring`, `season_summer`, `season_fall`, `season_winter`, `date_start`, `date_end`, `period_start_month`, `period_start_day`, `period_end_month`, `period_end_day`, `cat_0`, `cat_1`, `cat_2`, `cat_3`, `payment_1`, `payment_2`, `payment_3`, `payment_4`, `payment_5`, `payment_6`, `payment_7`, `payment_8`) VALUES
(8, 2, 'Mashteuiatsh', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'Journée nationale des autochtones', '<p>\n	C&#39;est avec une grande fiert&eacute; que Pekuakamiulnuatsh Takuhikan invite la population &agrave; c&eacute;l&eacute;brer ensemble la Journ&eacute;e nationale des Autochtones le 21 juin prochain, sur le site Uashassihtsh.</p>\n', '', '<p>\n	<img alt="" src="/img/ckfinder/images/prog_21juin(1).jpg" style="width: 927px; height: 1200px;" /></p>\n', '', '', '<br />\n', '<br />\n', '<br />\n', 'National Aboriginal Day', '<p>\n	It is with great pride that Pekuakamiulnuatsh Takuhikan invites the public to celebrate National Aboriginal Day on June 21, on the Uashassihtsh site.</p>\n', '', '<br />\n', '<br />\n', '<br />\n', '<br />\n', '<br />\n', '<br />\n', '', 'site_transmission_culturel_1.jpg', '', '', '', 0, '', 1, 'journee-nationale-des-autochtones', 'national-aboriginal-day', '', '<br />\n', 2, 1, 0, 1, 0, 0, '0000-00-00', '0000-00-00', '6', '21', '6', '21', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 0, 'Mashteuiatsh', 'G0W 2H0', '418-275-5386, p.388', '', '', '', 'grpn@mashteuiatsh.ca ', '', '', '', ' https://www.facebook.com/GRPNPekuakami?fref=ts', '', '', '', 1, 0, 0, 'Grand rassemblement des Premières Nations', '<p>\n	<strong>DU 15 AU 17 JUILLET 2016</strong></p>\n<p>\n	La tenue du Grand rassemblement des Premi&egrave;res Nations (GRPN) au Pekuakami est r&eacute;alis&eacute;e afin de perp&eacute;tuer la tradition mill&eacute;naire que repr&eacute;sente cette f&ecirc;te estivale sur le territoire de notre communaut&eacute;, lequel a toujours &eacute;t&eacute; reconnu comme un carrefour important en cette p&eacute;riode pr&eacute;c&eacute;dant la mont&eacute;e en territoire. &nbsp;Cette p&eacute;riode de festivit&eacute;s s&#39;effectue dans un contexte d&#39;&eacute;changes et de partage non seulement entre nous, mais &eacute;galement avec les membres des autres Premi&egrave;res Nations et les visiteurs.</p>\n<p>\n	Des activit&eacute;s signifiantes de partage culturel, des comp&eacute;titions sportives traditionnelles, des spectacles musicaux, des danses traditionnelles ilnu et intertribales (pow-wow), des d&eacute;gustations de mets traditionnels et des c&eacute;r&eacute;monies spirituelles sont pr&eacute;vues. &nbsp;Finalement, la mise en valeur des artistes et des artisans des Premi&egrave;res Nations constitue une vis&eacute;e de premier plan dans le cadre de la pr&eacute;sentation de ce rassemblement traditionnel fortement ancr&eacute; dans la culture des Pekuakamiulnuatsh.</p>\n<p>\n	Sur un site exceptionnel, o&ugrave; toute la population est invit&eacute;e &agrave; venir assister &agrave; ces prestations.</p>\n', '1671, rue Ouiatchouan', '<h4>\n	Du 15 au 17 juillet 2016</h4>\n<p>\n	Danse de pow-wow, spectacle de renomm&eacute;, comp&eacute;titions sportives traditionnelles, repas communautaire et traditionnel, vente et exposition d&rsquo;artisanat, d&eacute;monstration artistique, cuisson de gibier et plus encore.</p>\n<p>\n	<img alt="" src="/img/ckfinder/images/Grand rassemblement - AFFICHE-01.jpg" style="height: 1236px; width: 800px;" /></p>\n<h3>\n	<strong>Programmation 2016:</strong></h3>\n<h3>\n	<img alt="" src="/img/ckfinder/images/Grand rassemblement - depliant A_Brochure Outside.jpg" style="width: 1600px; height: 971px;" /></h3>\n<p>\n	<img alt="" src="/img/ckfinder/images/Grand rassemblement - depliant B_Brochure Outside.jpg" style="width: 1600px; height: 971px;" /></p>\n<p>\n	<span style="line-height: 24px;">Pour toute autre information pertinente, consultez le lien suivant:</span></p>\n<p>\n	<a href="http://www.mashteuiatsh.ca/visiteur/grand-rassemblement-des-premieres-nations.html">http://www.mashteuiatsh.ca/visiteur/grand-rassemblement-des-premieres-nations.html</a></p>\n', '<p>\n	Restauration l&eacute;g&egrave;re sur le site, location de salle, transport des a&icirc;n&eacute;s en car de golf, location d&rsquo;espace pour artisans.</p>\n<h3>\n	si vous &ecirc;tes int&eacute;ress&eacute;s &agrave; louer un kiosque sur place pour l&#39;&eacute;v&egrave;nement, veuillez communiquer avec monsieur steve launi&egrave;re, agent aux &eacute;v&eacute;nements culturels, au 418-275-5386, poste 388.</h3>\n', '', '<p>\n	Restauration l&eacute;g&egrave;re sur le site</p>\n', '<br />\n', '<br />\n', 'Grand rassemblement des Premières Nations', '<p>\n	One of the finest and largest gatherings of First Nations in Quebec. You will find dance powwow, renowned entertainment, traditional sports competitions, traditional communal meal, sale and craft show, art demonstrations, cooking games and more.</p>\n<p>\n	On an exceptional site, the entire population is invited to attend these performances.</p>\n', '1671, rue Ouiatchouan', '<h4>\n	From July 15 to 17, 2016</h4>\n<p>\n	Powwow dance, show renamed, traditional sports competitions, and traditional communal meal, sale and craft show, art demonstrations, cooking game and more.</p>\n<h4>\n	Program 2016 (to come later)</h4>\n', '<p>\n	Light meals on the site, room hire, transportion for seniors (golf cart), rental space for artists.</p>\n<p>\n	If you are interested in renting a kiosque during the event, please communicate with Mr. Steve Launiere at 418-275-5386, ext. 388.</p>\n', '', '<p>\n	Light meals on the site</p>\n', '', '', 'Logo_grpn.png', 'Grand_rassemblement_des_premieres_nations__Mashteuiatsh_3.jpg', '', '', '', 10, '', 2, 'grand-rassemblement-des-premieres-nations', 'grand-rassemblement-des-premieres-nations', '', '', 2, 1, 0, 1, 0, 0, '2012-07-13', '2012-07-15', '7', '15', '7', '17', 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(10, 0, 'Roberval', 'G8H 2M9', '418-275-6857', '418-637-0926', '', '', 'info@aventureplumeblanche.com', 'www.aventureplumeblanche.com', '', 'https://maps.google.ca/maps?q=aventure+plume+blanche&hl=fr&ll=48.527064,-72.242661&spn=0.189854,0.445976&sll=49.891235,-97.15369&sspn=46.340694,114.169922&hq=aventure+plume+blanche&cid=2947548883596797512&t=m&z=12', 'http://www.facebook.com/pages/aventure-plume-blanche/307968596376', '', '', '', 1, 0, 1, 'Aventure Plume Blanche', '<p>\n	Aventure Plume Blanche a pour mission de faire d&eacute;couvrir la vie autochtone par diverses activit&eacute;s culturelles et traditionnelles.</p>\n<p>\n	Au fil des saisons, Aventure Plume Blanche vous fait vivre l&rsquo;exp&eacute;rience du mode de vie des Pekuakamiulnuatsh dans un site naturel unique en r&eacute;gion, qui offre calme, simplicit&eacute; et beaut&eacute;.</p>\n<p>\n	<iframe allowfullscreen="" frameborder="0" height="315" src="http://www.youtube.com/embed/KPlY6oWOGLM" width="420"></iframe></p>\n', '607 rang 2 sud', '<ul>\n	<li>\n		Visite guid&eacute; du site</li>\n	<li>\n		Sensibilisation &agrave; la culture autochtone</li>\n	<li>\n		&Eacute;changes autour du feu</li>\n	<li>\n		Fabrication d&rsquo;oeuvres artisanales</li>\n</ul>\n', '<ul>\n	<li>\n		H&eacute;bergement (tipis, tentes prospecteurs, yourte, shaputuan, camp en bois)</li>\n	<li>\n		Location d&rsquo;une grande tente (shaputuan) pour vos r&eacute;unions ou &eacute;v&eacute;nements divers</li>\n	<li>\n		D&eacute;gustation de mets traditionnels</li>\n</ul>\n', '<br />\n', '<p>\n	D&eacute;gustation de mets traditionnels (sur r&eacute;servation seulement).<br />\n	32 places (salle &agrave; manger)</p>\n', '<br />\n', '<p>\n	Ouvert aux groupes d&#39;un minimum de 10 personnes sur r&eacute;servation seulement.</p>\n', 'Aventure Plume Blanche', '<p>\n	Discover Native culture through a variety of authentic and spiritual activities. In rhythm of the seasons, experience the life style of the Pekuakamiulnuatsh in a peaceful, beautiful, natural surrounding. Visitors can sleep in a teepee or prospector tent. A wide range of packages offered for students, professionals and touristic.</p>\n<p>\n	<iframe allowfullscreen="" frameborder="0" height="315" src="http://www.youtube.com/embed/KPlY6oWOGLM" width="420"></iframe></p>\n', '607 rang 2 sud', '<ul>\n	<li>\n		Guided tour of the site</li>\n	<li>\n		Aboriginal cultural awareness</li>\n	<li>\n		Fireside cultural exchanges</li>\n	<li>\n		Handicrafts manufacturing</li>\n</ul>\n', '<ul>\n	<li>\n		Accommodation (tipis, prospector tents, yurts, shaputuan, wood camp)</li>\n	<li>\n		Large tent (shaputuan) for meetings and various events</li>\n	<li>\n		Tasting of Native American traditional foods</li>\n</ul>\n', '<br />\n', '<ul>\n	<li>\n		Tasting of traditional meals (on reservation only).</li>\n	<li>\n		32 spaces (dining room)</li>\n</ul>\n', '<br />\n', '<p>\n	Open to groups of at least 10 people by reservation only.</p>\n', 'AventurePlumeBlanche_Logo_fond_blanc.jpg', 'thumb_P1050938.jpg', '', '', '', 0, '', 1, 'aventure-plume-blanche', 'aventure-plume-blanche', '<p>\n	<strong>H&eacute;bergement</strong> : Entre 75 $ et 135 $ / nuit&eacute;e, sur r&eacute;servation uniquement.</p>\n', '<p>\n	Accommodation: Between $ 75 and $ 135 / night, by reservation only.</p>\n', 1, 0, 1, 1, 1, 1, '2012-05-01', '2013-03-31', '5', '1', '3', '31', 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1),
(14, 0, 'Mashteuiatsh', 'G0W 2H0', '418-275-9155', '418-637-6050', '', '', 'contact@boutiquedartsamerindiens.com', 'http://www.boutiquedartsamerindiens.com', '', 'http://maps.google.ca/maps?f=q&source=s_q&hl=en&geocode=&q=Boutique+D''Art+Am%C3%A9rindiens+Vitrail+Enr,+Mashteuiatsh,+QC&aq=0&oq=Boutique+D''ar&sll=48.575528,-72.226181&sspn=0.023198,0.033431&ie=UTF8&hq=Boutique+D''Art+Am%C3%A9rindiens+Vitrail+Enr,&hnear=Mashteuiatsh,+Le+Domaine-du-Roy+Regional+County+Municipality,+Quebec&t=m&ll=48.571019,-72.241745&spn=0.006295,0.006295', '', '', '', '', 0, 0, 0, 'Boutique d''art Amérindien', '<p>\n	Un souvenir &agrave; acheter lors de votre passage, la boutique d&rsquo;art am&eacute;rindien regroupant des artistes locaux offre une multitude de choix.</p>\n<p>\n	Conception et vente d&rsquo;&oelig;uvres, diff&eacute;rents tambours repr&eacute;sentent l&rsquo;&eacute;cho du pass&eacute;, du pr&eacute;sent et du futur sont disponibles. L&rsquo;Atelier d&rsquo;arts autochtones offre aussi des cours de confection de vitraux, et de fusion du verre.</p>\n<p>\n	Apprenez vous-m&ecirc;me comment travailler ces techniques et repartez avec votre &oelig;uvre. Nous pouvons r&eacute;aliser des projets sur mesure selon vos besoins. Un croquis du projet &agrave; r&eacute;aliser vous sera fourni gratuitement.</p>\n', '1849, rue Nishk', '', '<p>\n	Vente d&rsquo;artisanat, formation, vente de mati&egrave;re premi&egrave;re de vitrail, d&eacute;monstration, accueil de petit groupe. Achat en ligne.</p>\n', '', '', '', '', 'Native American Art Shop', '<p>\n	In our boutique, we offer Indian arts workshops, stained glass classes, fabrication and sale of works of art. A boutique that brings together local artists, that create their unique works of art with passion and originality, all objects are made by hand.</p>\n<p>\n	We can custom make, to your individual specifications, lamps, doors, windows, ceramics floor tiles, etc. free draft provided.In our boutique, we offer Indian arts workshops, stained glass classes, fabrication and sale of works of art. A boutique that brings together local artists, that create their unique works of art with passion and originality, all objects are made by hand.</p>\n<p>\n	We can custom make, to your individual specifications, lamps, doors, windows, ceramics floor tiles, etc. free draft provided.</p>\n', '1849, Nishk Street', '', '<ul>\n	<li>\n		Craft sales</li>\n	<li>\n		training</li>\n	<li>\n		Stained glass raw material sales</li>\n	<li>\n		demonstration</li>\n	<li>\n		Group</li>\n	<li>\n		Online sales</li>\n</ul>\n', '', '', '', '', 'Logo_vecteur_trans.png', 'photo_eleve_juin_2006_024.jpg', '', '', '72157630858062352', 6, '3', 2, 'boutique-dart-amerindien', 'native-american-art-shop', '', '', 1, 0, 1, 1, 1, 1, NULL, NULL, '1', '1', '12', '31', 0, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0),
(12, 0, 'Mashteuiatsh', 'G0W2H0', '418-275-5593', '', '', '', 'artisanatseshkan@outlook.com', 'www.artisanateshkan.com', '', '', 'https://www.facebook.com/pages/Boutique-Artisanat-Eshkan/342368912559063', '', '', '', 0, 0, 0, 'Artisanat Eshkan', '<p>\n	Boutique d&rsquo;artisanat de fabrication locale avec pi&egrave;ce unique fabriqu&eacute;e sur place. Faites affaire directement avec l&rsquo;artisan et achetez m&ecirc;me votre mat&eacute;riel de fabrication.</p>\n<p>\n	<strong>Boutique en ligne sur: &nbsp;www.artisanateshkan.com</strong></p>\n', '2204, rue Ouiatchouan', '<p>\n	Vente d&#39;objet et de mati&egrave;re premi&egrave;re.</p>\n', '<h3>\n	OUVERT &Agrave; L&#39;ANN&Eacute;E</h3>\n<table border="1" cellpadding="1" cellspacing="1" style="width: 600px; height: 100px;">\n	<tbody>\n		<tr>\n			<td>\n				du 1er juin au 15 octobre</td>\n			<td>\n				de 10h00 &agrave; 18h00 (7 jours/7)</td>\n		</tr>\n		<tr>\n			<td>\n				du 16 octobre 2014 au 31 mai</td>\n			<td>\n				de 10h00 &agrave; 16h (du lundi au vendredi)</td>\n		</tr>\n	</tbody>\n</table>\n', '<br />\n', '', '', '', 'Eshkan Handicrafts', '<p>\n	Craft shop offering unique pieces made ??locally. You have the occasion to deal directly with the craftsman and even buy your manufacturing equipment to craft you own pieces.&nbsp;An animation in backroom teaches you how Ilnuatsh entertained themselves, a collection of vintage games and toys vintage are presented and explained by the artist.</p>\n', '2204, rue Ouiatchouan', '<p>\n	Sales, groups welcomed, animation and interpretation, sale of raw material</p>\n', '<h3>\n	OPENED ALL YEAR LONG</h3>\n<table border="1" cellpadding="1" cellspacing="1" style="height: 100px; width: 600px;">\n	<tbody>\n		<tr>\n			<td>\n				From June 1st to October 15 th</td>\n			<td>\n				From 9:00 am to 6:00 pm&nbsp;</td>\n		</tr>\n		<tr>\n			<td>\n				From October 16th to Mai 31 st</td>\n			<td>\n				From 9:00 am to 4:30 pm</td>\n		</tr>\n	</tbody>\n</table>\n', '', '', '', '', '', 'Artisanat_Eshkan.png', '', '', '72157630857245692', 6, '3', 2, 'artisanat-eshkan', 'eshkan-handicrafts', '<br />\n', '', 1, 0, 1, 1, 1, 1, NULL, NULL, '6', '1', '5', '31', 0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 0, 1),
(13, 0, 'Mashteuiatsh', 'G0W 2H0', '418-275-7326', '', '', '418-275-7326', 'parcsacre@hotmail.com', '', '', 'http://maps.google.ca/maps?f=q&source=s_q&hl=en&geocode=&q=Mashteuiatsh,+55+Rue+Mahikan,+Mashteuiatsh,+Qu%C3%A9bec+G0W+2H0&aq=&sll=48.568587,-72.24475&sspn=0.022974,0.042958&ie=UTF8&hq=&hnear=Rue+Mahikan,+Saint-F%C3%A9licien,+Qu%C3%A9bec+G8K+1T6&ll=48.567009,-72.241716&spn=0.022975,0.042958&t=m&z=14', '', '', '', '', 0, 0, 1, 'Association du Parc Sacré', '<p>\n	Pour d&eacute;guster une tisane de plante m&eacute;dicinale ou pour en acheter, rendez-vous au Parc Sacr&eacute;. Notre mission est de promouvoir la sant&eacute; globale par les plantes m&eacute;dicinales ainsi que la sauvegarde et la transmission des savoirs et connaissances ancestrales.</p>\n', '55, rue Mahikan', '', '<ul>\n	<li>\n		Service de tisane</li>\n	<li>\n		Am&eacute;nagement paysager</li>\n	<li>\n		Vente de plantes m&eacute;dicinales</li>\n	<li>\n		Jardin communautaire</li>\n	<li>\n		Espace am&eacute;nag&eacute; au local du Parc Sacr&eacute;</li>\n	<li>\n		Atelier de connaissance des plantes</li>\n</ul>\n', '', '', '', '<p>\n	Sur r&eacute;servation</p>\n', 'Parc Sacré Association', '<p>\n	The Parc Sacr&eacute; is a non-profit community organization, it was created in 2001. Our mission is to promote over-all health by use of medicinal plants, also to protect, safeguard and transmit ancestral knowledge and know-how.</p>\n', '55, rue Mahikan', '', '<ul>\n	<li>\n		Tea and infusion</li>\n	<li>\n		Landscaping</li>\n	<li>\n		Sale of medicinal plants</li>\n	<li>\n		Community garden</li>\n	<li>\n		Meeting place for the association</li>\n</ul>\n', '', '', '', '<p>\n	Sur r&eacute;servation</p>\n', '', 'Parc_Sacr_02.jpg', '', '', '', 0, '', 2, 'association-du-parc-sacre', 'parc-sacre-association', '', '', 1, 0, 1, 1, 1, 0, NULL, NULL, '4', '1', '9', '30', 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(16, 0, 'Mashteuiatsh', 'G0W 2H0', '418-275-4842', '', '1-888-875-4842', '1-418-275-7494 ', 'info@cultureilnu.ca', 'http://cultureilnu.ca', '', 'https://maps.google.ca/maps?q=Mus%C3%A9e+Am%C3%A9rindien+de+Mashteuiatsh,+Mashteuiatsh,+QC&hl=fr&ie=UTF8&ll=48.572916,-72.241373&spn=0.047421,0.111494&sll=48.468366,-72.247767&sspn=0.380148,0.891953&oq=mus%C3%A9&hq=Mus%C3%A9e+Am%C3%A9rindien+de+Mashteuiatsh,&hnear=Mashteuiatsh,+Le+Domaine-du-Roy,+Qu%C3%A9bec&t=m&z=14', 'http://www.facebook.com/pages/Mus%C3%A9e-am%C3%A9rindien-de-Mashteuiatsh/212038752166309', '', 'https://foursquare.com/v/mus%C3%A9e-am%C3%A9rindien-de-mashteuiatsh/4d9f453c90bacbfffa6a5c54', '', 0, 1, 1, 'Musée Amérindien de Mashteuiatsh', '<p>\n	Le Mus&eacute;e se veut le gardien de la m&eacute;moire vivante d&#39;un peuple qui a surv&eacute;cu &agrave; sa propre histoire, d&#39;une parole qui a refus&eacute; de sombrer dans l&#39;oubli. Il donne voix aux autres nations autochtones d&#39;Am&eacute;rique qui ont, elles aussi, leur histoire &agrave; raconter.</p>\n<p>\n	C&#39;est une vitrine de la cr&eacute;ation contemporaine innue et autochtone, des cultures qui, comme toutes celles bien vivantes, continuent sans cesse d&#39;&eacute;voluer.</p>\n<p>\n	Visiter le Mus&eacute;e am&eacute;rindien de Mashteuiatsh, c&#39;est parcourir des mill&eacute;naires d&#39;une m&eacute;moire vivante et partager les richesses d&#39;une culture en pleine &eacute;volution.</p>\n<p>\n	<iframe allowfullscreen="" frameborder="0" height="315" src="http://www.youtube.com/embed/gfrXFjvncvA" width="420"></iframe></p>\n', '1787, rue Amishk', '<p>\n	Veuillez prendre note que le Mus&eacute;e sera ouvert, tous les jours, de 10 h &agrave; 18 h, du 6 juin &nbsp;au 30 septembre 2016. &nbsp;</p>\n<p>\n	&nbsp;</p>\n<p>\n	Vernissage, atelier, conf&eacute;rences, soir&eacute;e, site ext&eacute;rieur Nutshimihtsh, expositions temporaires</p>\n', '<p>\n	Exposition permanente, expositions temporaires, location de salle, service d&rsquo;archive, boutique d&rsquo;artisanat</p>\n', '', '', '<p>\n	Les services adapt&eacute;s sont</p>\n<ul>\n	<li>\n		Acc&egrave;s partiel aux personnes &agrave; mobilit&eacute; r&eacute;duite</li>\n	<li>\n		Vignette d&#39;accompagnement touristique et de loisir : admission gratuite pour l&#39;accompagnateur de la personne qui poss&egrave;de la vignette avec logo.</li>\n</ul>\n', '<p>\n	Programme &eacute;ducatif pour les groupes scolaires&nbsp;</p>\n', 'Musée Amérindien de Mashteuiatsh', '<p>\n	Visit the permanent exhibition &quot;Spirit of the Pekuakamiulnu u Mamihtunelitamun&quot;, fascinating temporary exhibits and the discovery room that gives you the opportunity to interact in the universe of the Ilnu nation.</p>\n<p>\n	You&#39;ll discover how the Ilnu people continue to persist to protect their identity through artistic and cultural expression. You will be able to share with the Pekuakamiulnuatsh their profound respect between their way of life and the territory.</p>\n<p>\n	<iframe allowfullscreen="" frameborder="0" height="315" src="http://www.youtube.com/embed/gfrXFjvncvA" width="420"></iframe></p>\n', '1787, Amishk street', '<p>\n	Please note that the Museum will be closed on week ends from October 15th 2012 to May 7th en 2013.&nbsp; Opening hours will be from 8:00 am to 12:00 pm and from 1:00&nbsp; pm to 4:oo pm Monday to Friday.</p>\n<p>\n	Opening reception, workshop, conferences, Nipin events</p>\n', '<p>\n	Meeting room service, archive service, craft shoproom hire</p>\n', '', '', '<p>\n	Adapted services are:&nbsp;</p>\n<ul>\n	<li>\n		Disabled access</li>\n	<li>\n		Accompanying tourism and leisure activity sticker: Free admission for the person accompanying the disabled person</li>\n</ul>\n', '', 'logo_1.jpg', 'muse_amerindien_mashteuiatsh.jpg', '', '', '72157630871174664', 2, '3', 2, 'musee-amerindien-de-mashteuiatsh', 'musee-amerindien-de-mashteuiatsh', '<h3>\n	<strong style="font-size: 24px; line-height: 24px; color: rgb(85, 85, 85);">Tarif r&eacute;gulier 2016</strong></h3>\n<table border="1" cellpadding="1" cellspacing="1" style="width: 800px;">\n	<tbody>\n		<tr>\n			<td>\n				<h3>\n					Tarif pour:</h3>\n			</td>\n			<td>\n				<h3>\n					Mus&eacute;e Am&eacute;rindien de Mashteuiatsh</h3>\n			</td>\n			<td>\n				<h3>\n					Forfait Mus&eacute;e et Site Uashassihtsh</h3>\n			</td>\n		</tr>\n		<tr>\n			<td>\n				<strong>Adulte:</strong></td>\n			<td>\n				&nbsp;12.00 $</td>\n			<td>\n				10% de rabais</td>\n		</tr>\n		<tr>\n			<td>\n				<strong>A&icirc;n&eacute;:</strong></td>\n			<td>\n				&nbsp;11.00 $</td>\n			<td>\n				10% de rabais</td>\n		</tr>\n		<tr>\n			<td>\n				<strong>&Eacute;tudiant:</strong></td>\n			<td>\n				&nbsp;10.00 $</td>\n			<td>\n				10% de rabais</td>\n		</tr>\n		<tr>\n			<td>\n				<strong>Enfant de 6 &agrave; 12 ans:</strong></td>\n			<td>\n				&nbsp; &nbsp;7.00 $</td>\n			<td>\n				10% de rabais</td>\n		</tr>\n		<tr>\n			<td>\n				<strong>Enfant de 5 ans et moins:</strong></td>\n			<td>\n				&nbsp;gratuit</td>\n			<td>\n				gratuit</td>\n		</tr>\n		<tr>\n			<td>\n				<strong>Famille (2 adultes et 2 enfants):</strong></td>\n			<td>\n				32.00$ enfants additionnel: 3.50$</td>\n			<td>\n				10% de rabais</td>\n		</tr>\n	</tbody>\n</table>\n<p>\n	Visite guid&eacute;e, fran&ccedil;ais ou anglais, location de salle, r&eacute;servation de groupe scolaire, programme &eacute;ducatif.<br />\n	&nbsp;</p>\n', '<h3>\n	Regular rates for 2014</h3>\n<table border="1" cellpadding="1" cellspacing="1" style="width: 800px;">\n	<tbody>\n		<tr>\n			<td>\n				<h3>\n					<strong>RATES FOR:</strong></h3>\n			</td>\n			<td>\n				<h3>\n					<strong>MUS&Eacute;E AM&Eacute;RINDIEN DE MASHTEUIATSH</strong></h3>\n			</td>\n			<td>\n				<h3>\n					<strong>PACKAGE MUS&Eacute;E ET UASHASSIHTSH SITE</strong></h3>\n			</td>\n		</tr>\n		<tr>\n			<td>\n				<strong>Adult:</strong></td>\n			<td>\n				12.50 $</td>\n			<td>\n				20.00 $</td>\n		</tr>\n		<tr>\n			<td>\n				<strong>Senior:</strong></td>\n			<td>\n				10.50 $</td>\n			<td>\n				17.00 $</td>\n		</tr>\n		<tr>\n			<td>\n				<strong>Student:</strong></td>\n			<td>\n				10.50 $</td>\n			<td>\n				17.00 $</td>\n		</tr>\n		<tr>\n			<td>\n				<strong>Children 6 to 12 years old:</strong></td>\n			<td>\n				&nbsp; 7.50 $</td>\n			<td>\n				12.00$</td>\n		</tr>\n		<tr>\n			<td>\n				<strong>Children 5 and under:</strong></td>\n			<td>\n				Free</td>\n			<td>\n				Free</td>\n		</tr>\n		<tr>\n			<td>\n				<strong>Family (2 adults, 3 children or 2 students):</strong></td>\n			<td>\n				35.00 $</td>\n			<td>\n				56.00 $</td>\n		</tr>\n	</tbody>\n</table>\n<ul>\n	<li>\n		Tour, French or English, room hire, group bookings school curriculum.</li>\n</ul>\n', 1, 0, 1, 1, 1, 1, NULL, NULL, '1', '1', '12', '31', 1, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 1),
(15, 0, 'Roberval', 'G8H 2N2', '418-275-7012', '', '', '418-275-6820', 'info@mashk.com', 'http://www.mashk.com', '', 'https://maps.google.ca/maps?ie=UTF8&cid=9486048227228318460&q=Teuehikan&gl=CA&hl=en&ll=48.574212,-72.27769&spn=0.006295,0.006295&t=m&iwloc=A', 'https://www.facebook.com/pages/Boutique-Teuehikan/390565997691462?fref=ts', '', '', '', 0, 0, 1, 'Boutique Teuehikan (Mashk)', '<p>\n	Nous vous offrons de partager avec vous la grande aventure des Pekuakamiulnuatsh en puisant &agrave; m&ecirc;me les tr&eacute;sors de notre culture mill&eacute;naire, une atmosph&egrave;re &agrave; nul autre lieu pareille, tout ce qui fait l&rsquo;originalit&eacute; et la richesse du territoire sur l&rsquo;authenticit&eacute; d&rsquo;une grande Nation dans le monde de l&rsquo;art. C&rsquo;est un retour aux sources, un bain de culture avec l&rsquo;art et l&rsquo;artisanat des premi&egrave;res Nations du Qu&eacute;bec (Lac Saint-Jean).</p>\n<p>\n	Dans le respect de notre culture, &agrave; la Terre notre M&egrave;re, au Soleil notre Grand &ndash;P&egrave;re, &agrave; la lune, notre Grand-M&egrave;re et aux saisons sacr&eacute;es de la vie.&nbsp; Chaque objets, des Pekuakamiulnuatsh d&rsquo;autrefois presque exclusivement utilitaire, se retrouve dans une version artisanale et artistique vous permettant de d&eacute;couvrir notre patrimoine l&eacute;gu&eacute; de g&eacute;n&eacute;ration en g&eacute;n&eacute;ration. Leur qualit&eacute; nous rappelle l&rsquo;importance de chacun de ces objets pr&eacute;cieux, que nous sommes les gardiens au quotidien.</p>\n<p>\n	Niaut uelapissish (&Agrave; bient&ocirc;t)</p>\n', '1695 Horace J. Beemer', '<p>\n	<img alt="" src="/img/ckfinder/images/teuehikan1.jpg" style="width: 400px; height: 300px;" /><img alt="" src="/img/ckfinder/images/teuehikan3.jpg" style="width: 300px; height: 225px;" /></p>\n<p>\n	<img alt="" src="/img/ckfinder/images/teuehikan6.jpg" style="width: 400px; height: 300px;" /><img alt="" src="/img/ckfinder/images/teuehikan4.jpg" style="width: 300px; height: 225px;" /></p>\n<p>\n	<img alt="" src="/img/ckfinder/images/teuehikan2.jpg" style="width: 400px; height: 533px;" /></p>\n', '<h3>\n	nouveau service de location et de r&eacute;paration de v&eacute;lo /v&eacute;lo-mashk&nbsp;</h3>\n<h3>\n	418-515-1630</h3>\n<p>\n	velos@mashk.com</p>\n<h3>\n	<strong>ADRESSES:</strong></h3>\n<p>\n	<span style="line-height: 24px;">1695 Horace J Beemer, Roberval, QC &nbsp;G8H 2N2</span></p>\n', '', '', '', '', 'Mashk Teuehikan Boutique', '<p>\n	Directly from the Teuehikan (drum) Mashk Collection, you can purchase clothing and accessories made with leather, a traditional and contemporary inspiration that represents an echo of the past, present and future. You&#39;ll find reproduced ancestral arts and crafts fabricated by the First Nations of Quebec.</p>\n<p>\n	Besides our Mashk Collection of leather clothes and accessories, you&#39;ll find in our boutique traditional items, such as moccasins, drums, dream catchers, sculptures and jewelry.</p>\n', '1747, Ouiatchouan street', '', '', '', '', '', '', 'boutique_teuehikan2015.jpg', 'boutique_teuehikan2015.jpg', '', '', '72157630858449882', 1, '3', 2, 'boutique-teuehikan-mashk', 'mashk-teuehikan-boutique', '<p>\n	Le co&ucirc;t de location du v&eacute;lo &nbsp;comprends ; v&eacute;lo, casque, cadenas, carte et taxes.</p>\n<p>\n	R&eacute;servation au moins 12 heures &agrave; l&#39;avance.</p>\n<p>\n	Service d&#39;entreposage hvernal pour les v&eacute;los.</p>\n', '', 1, 0, 1, 1, 1, 1, NULL, NULL, '1', '1', '12', '31', 0, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 1),
(17, 0, 'Mashteuiatsh', 'G0W 2H0', '418-669-4032', '418-275-2080', '', '418-275-6418', 'info@reservoirpipmuacan.com', 'www.pourvoiriepipmuacan.com', '', 'http://maps.google.ca/maps?q=R%C3%A9servoir+Pipmuacan,+Mont-Valin,+QC&hl=en&ie=UTF8&sll=48.71445,-72.445442&sspn=0.705857,1.654816&oq=R%C3%A9servoir+Pip&hnear=Pipmuacan+Reservoir&t=m&z=8', 'http://www.facebook.com/pourvoiriepipmuacan.mashteuiatsh', '', '', '', 1, 0, 1, 'Pourvoirie du réservoir Pipmuacan', '<p>\n	Une pourvoirie qui accueil &agrave; l&rsquo;ann&eacute;e o&ugrave; la pr&eacute;sence autochtone ajoute une touche exotique. Pour les amateurs de neige plus que blanche, c&rsquo;est le paradis, des dizaines de kilom&egrave;tres de neige folles hors des sentiers battus.</p>\n<p>\n	En &eacute;t&eacute;, le grand plan d&rsquo;eau qu&rsquo;est le r&eacute;servoir Pipmuacan offre la possibilit&eacute; aux p&ecirc;cheurs, quadistes ou randonneurs de profiter d&rsquo;une nature sauvage exceptionnelle.</p>\n<p>\n	Situ&eacute;e &agrave; 2,5 heures au nord de Chicoutimi par la route de Saint-David-de-Falardeau</p>\n<p>\n	Coordonn&eacute;es g&eacute;ographiques :</p>\n<p>\n	Latitude : 49&deg; 30&#39; 51&quot; 45 N<br />\n	Longitude : 70&deg; 45&#39; 32&quot; 25 O<br />\n	&nbsp;</p>\n', '1610, rue Matishu', '<ul>\n	<li>\n		Activit&eacute; de chasse &agrave; l&rsquo;ours noir</li>\n	<li>\n		p&ecirc;che au grand brochet</li>\n	<li>\n		randonn&eacute;e p&eacute;destre et observation de la faune avec guide autochtone</li>\n	<li>\n		atelier de fabrication de raquettes</li>\n	<li>\n		infrastructure pour kayakistes</li>\n	<li>\n		Motoneige</li>\n	<li>\n		raquette.</li>\n</ul>\n', '', '', '<p>\n	Repas servis sur place</p>\n', '', '<p>\n	R&eacute;servation de groupe disponible.</p>\n', 'Adventure Pipmuacan Lodge', '<p>\n	Adventure Pipmuacan Lodge is located on the shores of the majestic Pipmuacan Reservoir in Northern Quebec. Accessible by road we can accommodate up to 22 guests in fully equipped cabins.</p>\n<p>\n	Since our creation we have devoted our efforts to offer our valued customers a &ldquo;true vacation&rdquo;! With a 95% repeat visit with our guests, we think we must be doing something right. You may ask any of our clients and they will all say that when they travel to our lodge they are coming home!</p>\n<p>\n	We pride ourselves on maintaining our original goals set out when we opened in 1996 which were: SAFETY, CLEANLINESS, SERVICE AND GREAT FISHING! This may sound basic but you would be surprised just how many people out there have no idea about this.</p>\n<p>\n	We figured that we needed our guests to feel and be safe at our lodge therefore making it accessible to all types of outdoor lovers. We then decided that even though we were in the woods, that was no reason for it not to be impeccably clean. The inspectors of the Federation of Outfitters of Quebec visit our site yearly and have given us the highest rating for this. Now that you are safe &amp; clean we figured you would want proper service to make your trip a pleasure. For this reason we include a private guide with every trip we offer.</p>\n<p>\n	Our bilingual guides are selected on their people skills and devotion to service. Our camp manager &amp; chef are second to none, ready to cater to you every need. As for the fishing, well, just ask any of our guests and they will tell you that it is hard to find a better fishing hole anywhere. Many of our clients return two and three times per year for this reason alone! Though we offer speckled trout and lake trout, the Pipmuacan Reservoir in known for its GREAT NORTHERN PIKE! We encourage &ldquo;C&amp;C&rdquo; (catch &amp; cook) and &ldquo;C&amp;R&rdquo; (catch &amp; release) though we will not forbid anyone from bringing a few home. Most of them are trophy fish (15-25 lbs) that have been put back in the water and are just awaiting your arrival.</p>\n<p>\n	Geographical coordinates:</p>\n<p>\n	Latitude: 49 &deg; 30 &#39;51 &quot;N 45<br />\n	Longitude: 70 &deg; 45 &#39;32 &quot;25 O</p>\n', '1610, Matishu street', '<ul>\n	<li>\n		Bllack bear hunting</li>\n	<li>\n		Northern pike fishing</li>\n	<li>\n		Hiking and wildlife touring with Aboriginal guide</li>\n	<li>\n		snowshoe-making workshop</li>\n	<li>\n		infrastructure for kayakers</li>\n	<li>\n		showshoeing</li>\n</ul>\n', '', '', '<p>\n	Repas servis sur place</p>\n', '', '<p>\n	R&eacute;servation de groupe disponible.</p>\n', 'logo_2.jpg', 'pourvoirie_rservoire_Pipmuacan.jpg', '', '', '72157630871724780', 6, '3', 2, 'pourvoirie-du-reservoir-pipmuacan', 'adventure-pipmuacan-lodge', '', '', 1, 0, 1, 1, 1, 1, NULL, NULL, '1', '1', '12', '31', 0, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1),
(18, 0, 'Mashteuiatsh', 'G0W 2H0', '418-275-0795', '', '', '418-275-7463', 'renerobertson@bellnet.ca', 'www.fourruresrobertson.com', '', 'http://maps.google.ca/maps?q=Ren%C3%A9+Robertson+Fourrure&hl=en&ie=UTF8&sll=49.592909,-70.070801&sspn=2.909142,7.025757&hq=Ren%C3%A9+Robertson+Fourrure&radius=15000&t=m&z=13', '', '', 'https://foursquare.com/v/atelier-boutique-robertson-fourrure/4ee0afb09a52e7f5b90a9f4b', '', 0, 1, 0, 'René Robertson Fourrures', '<p>\n	La beaut&eacute; et la qualit&eacute; des confections sont uniques et authentiques. Quoi de mieux pour se garder au chaud qu&rsquo;une pi&egrave;ce de fourrure soit ; des bottes de poil, des mitaines, un chapeau ou un manteau.</p>\n<p>\n	Nous confectionnons &agrave; votre convenance, sur mesure ou choisissez une pi&egrave;ce dans notre vaste choix de la boutique. Confection de v&ecirc;tements de travail, ou associatif sur commande. Visite de l&rsquo;atelier sur r&eacute;servation.&nbsp;</p>\n', '1619, rue Ouiatchouan', '<p>\n	Visite de l&rsquo;atelier sur r&eacute;servation</p>\n', '<p>\n	Ventes, entreposage, modelage, recyclage, achat de fourrures</p>\n', '<p>\n	Membre du r&eacute;seau des artisans<br />\n	Dans le domaine depuis 6 g&eacute;n&eacute;rations<br />\n	&nbsp;</p>\n', '', '<p>\n	Entr&eacute;e par la porte arri&egrave;re pour chaise roulante</p>\n', '', 'René Robertson Fourrures', '<p>\n	Ren&eacute; Robertson Fourrures p.n specializes in the transformation of furs and leathers. Clothes designed by Ren&eacute; Robertson Fourrures p.n. are entirely made with natural canadian fur. The company uses different pelts : beaver, mink, muskrat, coyote and fox. Their boutique offers an impressive range of coats and local crafts. The company also makes Sherpa vests, mittens and hats.</p>\n<p>\n	The company was formally created by Ren&eacute; Robertson in the 1960&#39;s. In 1996, it was purchased by his son &Eacute;douard Robertson, who has ensured its success since that time.</p>', '1619, Ouiatchouan street', '<p>\n	Workshop tour (by appointments only)</p>\n', '<p>\n	Sales, storage, modeling, recycling, buying furs</p>\n', '<p>\n	6th generation family business</p>\n', '', '<p>\n	Enter through the back door for wheelchair access</p>\n', '', 'logo_3.jpg', 'ren_robertson_fourrures_mashteuiatsh.jpg', '', '', '72157630872210942', 6, '3', 2, 'rene-robertson-fourrures', 'rene-robertson-fourrures', '', '', 1, 0, 1, 1, 1, 1, NULL, NULL, '1', '1', '12', '31', 0, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0),
(35, 0, 'Mashteuiatsh', 'G0W 2H0', '418-275-3638', '418-630-1121', '', '', 'gervais1965@hotmail.com', '', '', '', 'https://www.facebook.com/pages/Papamishka/1392500661044028', '', '', '', 0, 0, 1, 'Papamishka', '<p>\n	<strong style="line-height: 24px;">VOIR ET VIVRE L&#39;HISTOIRE AUTOCHTONE EN TROIS VOLETS!</strong></p>\n<p>\n	<strong>Une descente en canot typiquement autochtone! &nbsp;</strong></p>\n<p>\n	<span style="font-family: ''Yanone Kaffeesatz'', Arial, sans-serif; font-size: 20px; font-style: normal; font-variant: normal; line-height: 24px;">Le d&eacute;part se fait &agrave; Mashteuiatsh et vous n&rsquo;avez que vos effets&nbsp;personnels &agrave; apporter.</span></p>\n<p>\n	<strong>Volet 1:</strong><em><strong> &nbsp;</strong></em><strong><span style="line-height: 24px;">La route des fourrures (Disponible &agrave; partir de l&#39;&eacute;t&eacute; 2016)</span></strong></p>\n<p>\n	Une exp&eacute;dition de 2 jours et 1 nuit&nbsp;</p>\n<p>\n	<strong>Volet 2: L&#39;histoire de notre p&egrave;re</strong></p>\n<p>\n	Une exp&eacute;dition de 3 jours et deux nuits</p>\n<p>\n	<strong>Volet 3: &nbsp;Sur les traces de nos p&egrave;res</strong></p>\n<p>\n	Une exp&eacute;dition de 7 jours et 6 nuits &agrave; partager la culture et&nbsp;les traditions ancestrales.</p>\n<p>\n	<strong>*** &nbsp;Les 3 volets sont en formule&nbsp;tout inclus ***</strong></p>\n', '51, rue Mahikan', '<p>\n	<img alt="" src="/img/ckfinder/images/intro(1).jpg" style="width: 960px; height: 720px;" /></p>\n<p>\n	<img alt="" src="/img/ckfinder/images/volet 1(1).jpg" style="width: 960px; height: 720px;" /></p>\n<p>\n	<img alt="" src="/img/ckfinder/images/volet 2.jpg" style="width: 960px; height: 720px;" /></p>\n<p>\n	<img alt="" src="/img/ckfinder/images/volet 3.jpg" style="width: 960px; height: 720px;" /></p>\n', '<h3>\n	voici nos dates d&#39;excursions disponibles:</h3>\n<p>\n	<img alt="" src="/img/ckfinder/images/Legende calendrier.jpg" style="width: 600px; height: 450px;" /></p>\n<p>\n	<img alt="" src="/img/ckfinder/images/Diapositive1.JPG" style="width: 960px; height: 720px;" /></p>\n<p>\n	<img alt="" src="/img/ckfinder/images/Diapositive2.JPG" style="width: 960px; height: 720px;" /></p>\n<p>\n	<img alt="" src="/img/ckfinder/images/Diapositive3.JPG" style="font-family: ''Yanone Kaffeesatz'', Arial, sans-serif; font-size: 20px; font-style: normal; font-variant: normal; line-height: 24px; width: 960px; height: 720px;" /><img alt="" src="/img/ckfinder/images/Diapositive4.JPG" style="width: 960px; height: 720px;" /></p>\n', '', '', '', '<p>\n	Chaque aventure peut accueillir un groupe de 4 personnes minimum et 8 au maximum en formule tout inclus.</p>\n', 'PAPAMISHKA', '', '51, rue Mahikan', '', '', '', '', '', '', 'papamishka.png', 'IMG_9410.jpg', '', '', '', 0, '3', 1, 'papamishka1', 'papamishka', '<p>\n	<img alt="" src="/img/ckfinder/images/liste prix.png" style="width: 600px; height: 790px;" /></p>\n', '<p>\n	<img alt="" src="/img/ckfinder/images/liste prix.png" style="width: 600px; height: 790px;" /></p>\n', 1, 0, 1, 1, 1, 0, NULL, NULL, '6', '14', '9', '30', 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1),
(20, 0, 'Mashteuiatsh', 'G0W 2H0', '418-275-5361', '', '', '', 'tsimeon@cgocable.ca', '', '', 'https://maps.google.ca/maps?q=1541,+rue+Ouiatchouan,+Mashteuiatsh,+Qu%C3%A9bec,+Canada,+Mashteuiatsh&ie=UTF8&hnear=Rue+Ouiatchouan,+Saint-F%C3%A9licien,+Qu%C3%A9bec+G8K+1T6&t=m&z=13', '', '', '', '', 0, 0, 0, 'Atelier de sculpture Thomas Siméon', '<p>\n	Thomas Sim&eacute;on, artiste reconnu, exposant des &oelig;uvres &agrave; travers Mus&eacute;e et galerie d&rsquo;art du Qu&eacute;bec et d&rsquo;Europe. Galerie d&rsquo;art en place depuis 1984, elle pr&eacute;sente des s&eacute;rigraphies, des gaufrages et des sculptures sur diff&eacute;rentes pierre locale. Pi&egrave;ce unique et diversifi&eacute;e.&nbsp; Depuis 2011, Monsieur Sim&eacute;on consacre la majeure partie de son temps &agrave; la taille et au polissage de pierres GEM destin&eacute;es &agrave; la cr&eacute;ation de bijoux artisanaux.</p>\n', '1541, rue Ouiatchouan', '', '<p>\n	Ventes d&rsquo;&oelig;uvre d&rsquo;art et commande sur mesure</p>\n', '<p>\n	Ouvert depuis 1984</p>\n', '', '', '', 'Thomas Siméon Sculpture Studio', '<p>\n	Thomas Simeon is a recognized artist exhibiting works in museums and art galleries throughout Quebec and Europe. Established since 1984, the gallery exhibits unique and diverse work of arts including silkscreen prints, sculptures and embossments on different local stone.</p>\n', '1541, Ouiatchouan street', '', '<p>\n	Artwork sales and custom order</p>\n', '<p>\n	Established in 1984</p>\n', '', '', '', '', 'astsjp.txt', '', '', '', 0, '', 1, 'atelier-de-sculpture-thomas-simeon', 'thomas-simeon-sculpture-studio', '<p>\n	Entr&eacute;e gratuite</p>\n', '<p>\n	Free (gallery access)</p>\n', 1, 0, 0, 0, 0, 0, NULL, NULL, '1', '1', '12', '31', 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(21, 0, 'Mashteuiatsh', 'G0W 2H0', '418-275-4842', '', '', '418-275-7494', '', 'http://cultureilnu.ca/', '', 'https://maps.google.ca/maps?q=1514,+rue+Ouiatchouan&hl=en&ie=UTF8&sll=48.573768,-72.235279&sspn=0.095521,0.218353&hnear=Rue+Ouiatchouan,+Saint-F%C3%A9licien,+Qu%C3%A9bec+G8K+1T6&t=m&z=14', '', '', '', '', 0, 1, 1, 'Uashassihtsh, Site de transmission culturelle ilnu', '<p>\n	Le site Uashassihtsh &eacute;voque les rencontres estivales sur les rives du Pekuakami vers 1910-1930. Dans une ambiance de d&eacute;tente et de r&eacute;jouissance, on aime partager &eacute;changer et se raconter des histoires. On s&rsquo;affaire &agrave; produire des objets utilitaires destin&eacute;s &agrave; un usage personnel, ou &agrave; &eacute;changer avec les commer&ccedil;ants et les autres familles.</p>\n<p>\n	Vivez l&rsquo;atmosph&egrave;re de ces rassemblements. Prenez le temps d&rsquo;observer ces artisans ilnu. Discutez avec eux, ils partageront leurs connaissances apprises et transmises depuis des mill&eacute;naires.&nbsp;</p>\n<p>\n	<iframe allowfullscreen="" frameborder="0" height="315" src="http://www.youtube.com/embed/4fjUY0XkxKA" width="420"></iframe></p>\n', '1514, rue Ouiatchouan', '<p>\n	Ouvert tous les jours, de 10h &agrave; 18h du 06 juin au 26 ao&ucirc;t 2016</p>\n<h3>\n	<strong>ateliers de confection &nbsp;jusqu&#39;&agrave; 16h30:</strong></h3>\n<ul>\n	<li>\n		reproduction de contenant en &eacute;corce</li>\n	<li>\n		pr&eacute;paration de pain ilnu (bannique)</li>\n	<li>\n		confection de sac en toile</li>\n</ul>\n<h3>\n	et encore:</h3>\n<ul>\n	<li>\n		Exposition temporaire dans le&nbsp;<span style="line-height: 24px;">Pavillon des arts et de la culture</span></li>\n	<li>\n		<span style="line-height: 24px;">Acc&egrave;s au magasin g&eacute;n&eacute;ral</span></li>\n	<li>\n		<span style="line-height: 24px;">D&eacute;gustation de th&eacute; et bannique sur place</span></li>\n</ul>\n<p>\n	<strong>Activit&eacute;s en soir&eacute;e:&nbsp;</strong></p>\n<ul>\n	<li>\n		contes et l&eacute;gendes autochtones les mercredis</li>\n	<li>\n		arts et spectacles les jeudis</li>\n	<li>\n		animation culturelle les vendredis</li>\n	<li>\n		<strong>adulte: 9$, &eacute;tudiant 8$, enfants(6 &agrave; 12 ans) 6$, moins de 5 ans /gratuit</strong></li>\n	<li>\n		<strong>de 18 h &agrave; &nbsp;20 h&nbsp;</strong></li>\n</ul>\n<p>\n	&nbsp;</p>\n<p>\n	Dur&eacute;e moyenne de la visite: &nbsp;1h30</p>\n', '<p>\n	<img alt="" src="/img/ckfinder/images/menu uashrecto.JPG" style="width: 334px; height: 770px;" /></p>\n<p>\n	<img alt="" src="/img/ckfinder/images/menu ashaverso.JPG" style="width: 345px; height: 765px;" /></p>\n<p>\n	&nbsp;</p>\n<p>\n	Bloc sanitaire et de nombreuses tables de pique-nique.</p>\n<p>\n	Restauration sur place.</p>\n', '', '<p>\n	Restauration l&eacute;g&egrave;re</p>\n', '<p>\n	L&#39; ensemble du site est accessible en fauteuil roulant et transport en voiturette de golf au besoin.</p>\n', '<p>\n	Sur r&eacute;servation, stationnement pour 2 autobus (facile d&#39;acc&egrave;s)</p>\n', 'Uashassihtsh, Ilnu cultural transmission site', '<p>\n	The site Uashassihtsh evokes the summer meetings on the shores of Pekuakami in the 1910-1930 era. In an atmosphere of relaxation and joy, we love to share cultural knowledges and tell stories.</p>\n<p>\n	<iframe allowfullscreen="" frameborder="0" height="315" src="http://www.youtube.com/embed/4fjUY0XkxKA" width="420"></iframe></p>\n', '1514, Ouiatchouan street', '<p>\n	Opened every day from 10:00 am to 6:00 pm, from June 10th until Labour day &nbsp;and from 10:00 am to 4 pm, from Labour day until October 13.</p>\n<h3>\n	<span style="font-size: 22px; line-height: 22px;">Animation sets available every day until 4:30 pm:</span></h3>\n<ul>\n	<li>\n		Set 1 - Feeding and leather objects manufacturing</li>\n	<li>\n		Set 2 - Wood objects manufacturing&nbsp;</li>\n	<li>\n		Set 3 - Bone objects manufacturing</li>\n	<li>\n		Set 4 - Moose skin tanning</li>\n	<li>\n		Set 5 - Birch bark objects manufacturing</li>\n	<li>\n		Set 6 - Repair of canvas dinghy</li>\n	<li>\n		Set 7 - Fishing and interpretion of net repair,</li>\n</ul>\n<h3>\n	And even more:</h3>\n<ul>\n	<li>\n		Temporary exposition in the arts and culture Pavilion</li>\n	<li>\n		Access to the general store</li>\n	<li>\n		Ilnu bread&nbsp;tasting on site</li>\n</ul>\n<p>\n	Please plan 1:30 for a regular visit.</p>\n', '<p>\n	Washrooms on site&nbsp;and many picnic tables available.</p>\n', '', '<p>\n	Light meals</p>\n', '<p>\n	The&nbsp;entire site is easy going in wheelchair and golf cart can be used if needed.</p>\n', '<p>\n	On reservation, parking area for 2 bus (easy going)</p>\n', '', 'DSC_0104.jpg', '', '', '72157630954713586', 0, '3', 2, 'uashassihtsh-site-de-transmission-culturelle-ilnu1', 'uashassihtsh-ilnu-cultural-transmission-site', '<h3>\n	<strong style="font-size: 24px; line-height: 24px; color: rgb(85, 85, 85);">Tarifs &eacute;tablies pour &nbsp;2016 (incluant les taxes):</strong></h3>\n<p>\n	Visite guid&eacute;e sur r&eacute;servation, fran&ccedil;ais ou anglais<br />\n	&nbsp;</p>\n<table border="1" cellpadding="1" cellspacing="1" style="width: 800px;">\n	<tbody>\n		<tr>\n			<td>\n				<h3>\n					Tarif 2016</h3>\n			</td>\n			<td>\n				<h3>\n					Site Uashassihtsh</h3>\n			</td>\n			<td>\n				<h3>\n					<strong>Forfait Site et Mus&eacute;e de Mashteuiatsh</strong></h3>\n			</td>\n		</tr>\n		<tr>\n			<td>\n				<strong>Adulte:</strong></td>\n			<td>\n				<p>\n					&nbsp;15.00$</p>\n			</td>\n			<td>\n				10% de rabais</td>\n		</tr>\n		<tr>\n			<td>\n				<strong>A&icirc;n&eacute;:</strong></td>\n			<td>\n				&nbsp;14.00$</td>\n			<td>\n				10% de rabais</td>\n		</tr>\n		<tr>\n			<td>\n				<strong>&Eacute;tudiant:</strong></td>\n			<td>\n				&nbsp;13.00$</td>\n			<td>\n				10% de rabais</td>\n		</tr>\n		<tr>\n			<td>\n				<strong>Enfant de 6 &agrave; 16 ans:</strong></td>\n			<td>\n				&nbsp; &nbsp;8.00$</td>\n			<td>\n				10% de rabais</td>\n		</tr>\n		<tr>\n			<td>\n				<strong>Enfant de 5 ans et moins:</strong></td>\n			<td>\n				&nbsp; gratuit</td>\n			<td>\n				gratuit</td>\n		</tr>\n		<tr>\n			<td>\n				<strong>Famille (2 adultes et 3 enfants ou 2 &eacute;tudiants):</strong></td>\n			<td>\n				&nbsp;38.00$/enfant additionnel: 4$</td>\n			<td>\n				10% de rabais</td>\n		</tr>\n	</tbody>\n</table>\n', '<h3>\n	&nbsp;Regular rates for 2014</h3>\n<p>\n	<strong>Guided tour on reservation French or English</strong></p>\n<table border="1" cellpadding="1" cellspacing="1" style="width: 800px;">\n	<tbody>\n		<tr>\n			<td>\n				<strong>RATES 2014</strong></td>\n			<td>\n				<strong>SITE UASHASSIHTSH</strong></td>\n			<td>\n				<strong>PACKAGE UASHASSIHTSH AND NATIVE MUSEUM</strong></td>\n		</tr>\n		<tr>\n			<td>\n				<strong>Adult</strong></td>\n			<td>\n				12.50 $</td>\n			<td>\n				20.00 $</td>\n		</tr>\n		<tr>\n			<td>\n				<strong>Senior</strong></td>\n			<td>\n				10.50 $</td>\n			<td>\n				17.00 $</td>\n		</tr>\n		<tr>\n			<td>\n				<strong>Student</strong></td>\n			<td>\n				10.50 $</td>\n			<td>\n				17.00 $</td>\n		</tr>\n		<tr>\n			<td>\n				<strong>Children 6 to 12 years old</strong></td>\n			<td>\n				&nbsp; 7.50 $</td>\n			<td>\n				12.00 $</td>\n		</tr>\n		<tr>\n			<td>\n				<strong>Children 5 and under</strong></td>\n			<td>\n				Free</td>\n			<td>\n				Free</td>\n		</tr>\n		<tr>\n			<td>\n				<strong>Family (2 adults, 3 childrens or 2 students)</strong></td>\n			<td>\n				35.00 $</td>\n			<td>\n				56.00 $</td>\n		</tr>\n	</tbody>\n</table>\n', 1, 0, 1, 1, 1, 0, NULL, NULL, '6', '6', '8', '26', 1, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 1),
(22, 0, 'Mashteuiatsh', 'G0W2H0', '418 275-7200', '', '1 888 222-7922', '', 'info@kuei.ca', 'www.kuei.ca', '', 'https://maps.google.ca/maps?q=Carrefour+d''accueil+ilnu,+Rue+Ouiatchouan,+Mashteuiatsh,+QC&hl=en&sll=48.57904,-72.253452&sspn=0.047756,0.109177&oq=Carr&hq=Carrefour+d''accueil+ilnu,+Rue+Ouiatchouan,&hnear=Mashteuiatsh,+Le+Domaine-du-Roy+Regional+County+Municipality,+Quebec&t=m&z=16&iwloc=A', 'http://www.facebook.com/pages/Communaut%C3%A9-Ilnu-de-Mashteuiatsh/139750602773513', 'https://twitter.com/Mashteuiatsh', 'https://foursquare.com/v/carrefour-daccueil-ilnu/4e15a95eb3ad47cbbb61d215', '', 0, 1, 1, 'Carrefour d''accueil Ilnu', '<p>\n	En plus d&rsquo;offrir tous les services d&rsquo;un bureau d&rsquo;accueil touristique, le Carrefour d&rsquo;accueil Ilnu offre un circuit innovateur d&rsquo;int&eacute;gration des arts &agrave; l&rsquo;architecture.</p>\n<p>\n	Le concept repr&eacute;sente les cinq saisons des Ilnuash et permet une belle introduction &agrave; la culture autochtone. Visite guid&eacute;e selon disponibilit&eacute; ou sur r&eacute;servation et panneaux d&rsquo;interpr&eacute;tation en fran&ccedil;ais.</p>\n<p>\n	<iframe allowfullscreen="" frameborder="0" height="315" src="http://www.youtube.com/embed/7jy0QNZNB2c" width="420"></iframe></p>\n', '1516, rue Ouiatchouan', '<ul>\n	<li>\n		Activit&eacute; de promotion</li>\n	<li>\n		service de guide</li>\n	<li>\n		information</li>\n	<li>\n		interpr&eacute;tation</li>\n</ul>\n', '<ul>\n	<li>\n		Information</li>\n	<li>\n		guide touristique</li>\n	<li>\n		service pour personne &agrave; capacit&eacute; restreinte</li>\n</ul>\n', '', '', '', '', 'Carrefour d''accueil Ilnu', '<p>\n	In addition to offering all the services of a Tourism Office, the Carrefour d&#39;accueil Ilnu offers an innovative art and architecture discovery circuit.&nbsp;The concept represents the five seasons of the Ilnuash and allows a great introduction to the Aboriginal culture.</p>\n<p>\n	Tour subject to availability or reservation and interpretive signs in French.</p>\n<p>\n	<iframe allowfullscreen="" frameborder="0" height="315" src="http://www.youtube.com/embed/7jy0QNZNB2c" width="420"></iframe></p>\n', '1516, Ouiatchouan street', '<ul>\n	<li>\n		Promotion activity</li>\n	<li>\n		Tour guide service</li>\n	<li>\n		Information</li>\n	<li>\n		Interpretation</li>\n</ul>\n', '<ul>\n	<li>\n		Information</li>\n	<li>\n		Tour guide</li>\n	<li>\n		Service for people with limited capacity</li>\n</ul>\n', '', '', '', '', 'logo_4.jpg', 'photo_124.jpg', '', '', '72157630954882508', 0, '3', 2, 'carrefour-daccueil-ilnu', 'carrefour-daccueil-ilnu', '<p>\n	Gratuit</p>\n', '<p>\n	Free</p>\n', 1, 0, 1, 1, 1, 1, NULL, NULL, '1', '1', '12', '31', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `mod_attraits` (`id`, `dates`, `city`, `postal_code`, `tel`, `cell`, `toll_free`, `fax`, `email`, `website`, `website2`, `google_maps`, `facebook`, `twitter`, `foursquare`, `tripadvisor`, `service_restaurant`, `service_disability`, `groups`, `name_fr`, `description_fr`, `address_fr`, `activities_fr`, `services_fr`, `quality_indicator_fr`, `service_restaurant_description_fr`, `service_disability_description_fr`, `groups_description_fr`, `name_en`, `description_en`, `address_en`, `activities_en`, `services_en`, `quality_indicator_en`, `service_restaurant_description_en`, `service_disability_description_en`, `groups_description_en`, `logo`, `main_photo`, `dates_custom_fr`, `dates_custom_en`, `flickr_photoset_id`, `flickr_show_amount`, `flickr_user`, `gallery_type`, `url_fr`, `url_en`, `fees_fr`, `fees_en`, `type`, `vedette`, `season_spring`, `season_summer`, `season_fall`, `season_winter`, `date_start`, `date_end`, `period_start_month`, `period_start_day`, `period_end_month`, `period_end_day`, `cat_0`, `cat_1`, `cat_2`, `cat_3`, `payment_1`, `payment_2`, `payment_3`, `payment_4`, `payment_5`, `payment_6`, `payment_7`, `payment_8`) VALUES
(23, 0, 'Alma', 'G8B 5G3', '418-668-4541', '', '1 866 550-4541', '418-668-0849', 'info@veloroute-bleuets.qc.ca', 'http://www.veloroute-bleuets.qc.ca/', '', 'http://maps.google.ca/maps?q=1692,+avenue+du+Pont,+Nord,+Alma+(Qu%C3%A9bec)+G8B+5G3&ie=UTF8&hnear=1692+Avenue+du+Pont+Nord,+Alma,+Qu%C3%A9bec+G8B+5G3&gl=ca&t=m&z=16', 'http://www.facebook.com/pages/V%C3%A9loroute-des-Bleuets/373903910392', 'https://twitter.com/veloroutebleuet', 'https://foursquare.com/v/v%C3%A9loroute-des-bleuets/4d7fb8499d3bd7ce8ef6b6df', 'http://www.tripadvisor.ca/Attraction_Review-g182212-d2279744-Reviews-Veloroute_des_Bleuets_Looped_Circuit-Alma_Quebec.html', 0, 0, 0, 'Véloroute des Bleuets', '<p>\n	La V&eacute;loroute des Bleuets constitue l&rsquo;un des plus beaux exemples de concertation au Saguenay-Lac-Saint-Jean. Ce projet, fortement appuy&eacute; par les diff&eacute;rents intervenants du milieu r&eacute;gional, regroupe 15 municipalit&eacute;s, la Communaut&eacute; montagnaise de Mashteuiatsh et la Corporation du circuit cyclable &laquo;Tour du lac Saint-Jean&raquo;.</p>\n<p>\n	<iframe allowfullscreen="" frameborder="0" height="315" src="http://www.youtube.com/embed/5IE3uRyN450" width="560"></iframe></p>\n', '1692, avenue du Pont, Nord', '<p>\n	V&eacute;lo sur sentier r&eacute;serv&eacute;e aux cyclistes</p>\n', '<br />\n', '<br />\n', '<br />\n', '<br />\n', '<br />\n', 'Véloroute des Bleuets', '<p>\n	On this world class 256 km (159 mi) fully paved bike path, your cycling experience around Lake St-Jean will be unforgettable. Whether you are travelling alone, with your family, as a group, or with friends, you will enjoy riding through more than 15 cities, including the Mashteuiatsh Montagnais Native community.</p>\n<p>\n	You will be amazed by the virtually endless, awe-inspiring viewpoints situated all around the Lake; a true inland sea. Also, the V&eacute;loroute des Bleuets is spotted with numerous restaurants, campgrounds, hotels, bed &amp; breakfasts, and tourist attractions. The Saguenay region can also be accessed via this bike path, as the V&eacute;loroute des Bleuets is linked with the Route Verte.Welcome to the official V&eacute;loroute des Bleuets Looped Circuit website.&nbsp;</p>\n<p>\n	<iframe allowfullscreen="" frameborder="0" height="315" src="http://www.youtube.com/embed/5IE3uRyN450" width="560"></iframe></p>\n', '1692, avenue du Pont, Nord', '<p>\n	World class 256 km (159 mi) fully paved bike path</p>\n', '', '', '', '', '', 'vlo_route.jpeg', 'P1020401_1.jpg', '', '', '', 0, '', 1, 'veloroute-des-bleuets', 'veloroute-des-bleuets', '<p>\n	Gratuit</p>\n', '<p>\n	Free</p>\n', 1, 0, 1, 1, 1, 0, NULL, NULL, '5', '1', '9', '30', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 0, 'Saint-Félicien', 'G8K 2P8', '418-679-0543', '', '1 800 667-5687', '418-679-3647', 'info@zoosauvage.org', 'www.zoosauvage.org', '', 'http://maps.google.ca/maps?q=Zoo+sauvage+de+St-F%C3%A9licien&hl=en&ie=UTF8&sll=48.581621,-71.632213&sspn=0.010973,0.022295&gl=ca&hq=Zoo+sauvage+de+St-F%C3%A9licien&t=m&z=15', 'http://www.facebook.com/zoosauvage', 'https://twitter.com/zoostfelicien', 'https://foursquare.com/v/zoo-sauvage-de-saintf%C3%A9licien/4e1499f015208bcf94e0e216', 'http://www.tripadvisor.ca/Attraction_Review-g667819-d677198-Reviews-Zoo_Sauvage_de_Saint_Felicien-Saint_Felicien_Quebec.html', 1, 1, 1, 'Zoo Sauvage de Saint-Félicien', '<p>\n	Le Zoo sauvage de St-F&eacute;licien vous invite &agrave; venir vivre une exp&eacute;rience inoubliable parmi les esp&egrave;ces de la Bor&eacute;alie. Venez partager l&rsquo;intimit&eacute; de pr&egrave;s de 1000 animaux vivant dans de grands espaces naturels. Vous &ecirc;tes ici dans un concept de zoo fort diff&eacute;rent de ce que vous vous attendez.</p>\n', '2230, boulevard du Jardin', '<p>\n	&nbsp;Montez &agrave; bord de notre train grillag&eacute; pour d&eacute;couvrir toute la splendeur du Parc des sentiers de la nature. Poursuivez l&rsquo;aventure en sillonnant notre partie p&eacute;destre accessible &agrave; toute la famille. Rencontrez nos guides naturalistes sur le terrain et suivez les gardiens animaliers pour la collation de plusieurs animaux.</p>\n<p>\n	Le pavillon d&rsquo;accueil vous surprendra avec la pr&eacute;sentation de ses deux films tr&egrave;s interactifs. Pour les passionn&eacute;s de la nature, le forfait &laquo; Randonn&eacute;e aventure au pays des caribous &raquo;, une exp&eacute;dition guid&eacute;e d&rsquo;une journ&eacute;e et demie offerte sur r&eacute;servation. Pour les plus jeunes,</p>\n<p>\n	le Zoo sauvage offre le &laquo; Camp de vacances Bor&eacute;al &raquo; et la section pour enfants la Petite ferme.&nbsp;</p>\n', '<br />\n', '<br />\n', '<br />\n', '<br />\n', '<br />\n', 'Zoo Sauvage de Saint-Félicien', '<p>\n	Le Zoo sauvage de St-F&eacute;licien vous invite &agrave; venir vivre une exp&eacute;rience inoubliable parmi les esp&egrave;ces de la Bor&eacute;alie. Venez partager l&rsquo;intimit&eacute; de pr&egrave;s de 1000 animaux vivant dans de grands espaces naturels. Vous &ecirc;tes ici dans un concept de zoo fort diff&eacute;rent de ce que vous vous attendez.</p>\n', '2230, boulevard du Jardin', '<p>\n	&nbsp;Montez &agrave; bord de notre train grillag&eacute; pour d&eacute;couvrir toute la splendeur du Parc des sentiers de la nature. Poursuivez l&rsquo;aventure en sillonnant notre partie p&eacute;destre accessible &agrave; toute la famille. Rencontrez nos guides naturalistes sur le terrain et suivez les gardiens animaliers pour la collation de plusieurs animaux.</p>\n<p>\n	Le pavillon d&rsquo;accueil vous surprendra avec la pr&eacute;sentation de ses deux films tr&egrave;s interactifs. Pour les passionn&eacute;s de la nature, le forfait &laquo; Randonn&eacute;e aventure au pays des caribous &raquo;, une exp&eacute;dition guid&eacute;e d&rsquo;une journ&eacute;e et demie offerte sur r&eacute;servation. Pour les plus jeunes,</p>\n<p>\n	le Zoo sauvage offre le &laquo; Camp de vacances Bor&eacute;al &raquo; et la section pour enfants la Petite ferme. &nbsp;</p>\n', '', '', '', '', '', 'logo_zoo.gif', 'garconetours_1.jpeg', '', '', '', 0, '', 1, 'zoo-sauvage-de-saint-felicien', 'zoo-sauvage-de-saint-felicien', '<ul>\n	<li>\n		Adulte : 40.00$</li>\n	<li>\n		Enfant (6-14 ans) : 26.50$</li>\n	<li>\n		Enfant (3-5 ans) : 16.50$</li>\n	<li>\n		Enfant (2 ans et moins) : Gratuit</li>\n	<li>\n		Forfaits familles disponibles</li>\n</ul>\n<p>\n	<a href="http://www.zoosauvage.org/page_ete.php?id=37">Consultez la grille tarifaire du Zoo Sauvage de Saint-F&eacute;licien</a></p>\n', '<ul>\n	<li>\n		Adulte : 40.00$</li>\n	<li>\n		Enfant (6-14 ans) : 26.50$</li>\n	<li>\n		Enfant (3-5 ans) : 16.50$</li>\n	<li>\n		Enfant (2 ans et moins) : Gratuit</li>\n	<li>\n		Forfaits familles disponibles</li>\n</ul>\n<p>\n	<a href="http://www.zoosauvage.org/page_ete.php?id=37">Consultez la grille tarifaire du Zoo Sauvage de Saint-F&eacute;licien</a></p>\n', 1, 0, 1, 1, 1, 1, NULL, NULL, '1', '1', '12', '31', 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1),
(25, 0, 'Chambord', 'G0W 1G0', '418 275-3132', '', '1 888 675-3132', '418 275-5875', 'valjalbert@valjalbert.com', 'www.valjalbert.com', '', 'http://maps.google.ca/maps?q=Val-Jalbert,+Chambord,+QC&hl=en&sll=48.71445,-72.445442&sspn=0.598936,1.426849&oq=val-jalb&hq=Val-Jalbert,+Chambord,+QC&t=m&z=15&iwloc=A', 'http://www.facebook.com/pages/Village-historique-de-Val-Jalbert/426543094744?ref=nf', '', 'https://foursquare.com/v/village-historique-val-jalbert/4c5acf70ec2520a1275a5212', 'http://www.tripadvisor.ca/Attraction_Review-g1157739-d1153239-Reviews-Village_historique_de_Val_Jalbert_SEPAQ-Chambord_Quebec.html', 0, 0, 0, 'Village historique de Val-Jalbert', '<p>\n	Remontez le temps dans une authentique ville de compagnie, construite en 1901, comptant plus d&rsquo;une quarantaine de b&acirc;timents d&rsquo;origine. Vous serez impr&eacute;gn&eacute; par l&rsquo;esprit de ce lieu &eacute;nigmatique, fig&eacute; en 1927. &nbsp; Une foule de personnages color&eacute;s vous r&eacute;v&eacute;leront les secrets du couvent-&eacute;cole, du magasin g&eacute;n&eacute;ral, du bureau de poste, des maisons abandonn&eacute;es et du moulin de pulpe. Vous serez impressionn&eacute; par la majestueuse chute Ouiatchouan, plus haute que celles du Niagara. Prenez le t&eacute;l&eacute;ph&eacute;rique et admirez l&rsquo;incroyable vue panoramique du lac St-Jean. H&eacute;bergement &eacute;galement disponible en plein c&oelig;ur du village.</p>\n', '95, rue Saint-Georges', '<ul>\n	<li>\n		Spectacle immensif dans le vieux moulin</li>\n	<li>\n		Animation</li>\n	<li>\n		Belv&eacute;d&egrave;re</li>\n	<li>\n		Circuits de visite</li>\n	<li>\n		Expositions</li>\n	<li>\n		Visite du moulin</li>\n</ul>\n', '', '', '', '', '', 'Val-Jalbert Authentic Company Town', '<p>\n	Experience life as it was in the &rsquo;20s, in a genuine company town complete with forty or so original period buildings. The convent-school, general store and pulp mill abound in secrets that will be revealed by many colourful characters.</p>\n<p>\n	With your family, friends or group, discover how people used to lived in this ultramodern village where, twenty-five years before the other resident of the province of Quebec, they had the luxury of electricity and running water. Confront the powerful Ouiatchouan Falls, higher than Niagara falls, by stepping out onto the glass platform of our new spectacular lookout, nestled within the heart of the Falls. Enjoy one of the many tours available, with themes ranging from traditional to technological, or check out our cultural, recreational and sports activities that are just waiting to be discovered.<br />\n	&nbsp;</p>\n', '95, Saint-Georges street', '<ul>\n	<li>\n		Multi-sensory show in the old mill</li>\n	<li>\n		Animation</li>\n	<li>\n		belvedere</li>\n	<li>\n		Tour routes</li>\n	<li>\n		Exhibitions</li>\n	<li>\n		Visit to the mill</li>\n</ul>\n', '', '', '', '', '', '', '421128_10150835135249745_129943662_n.jpeg', '', '', '', 0, '', 1, 'village-historique-de-val-jalbert', 'val-jalbert-authentic-company-town', '<ul>\n	<li>\n		Adulte : 23.48 $</li>\n	<li>\n		Enfant (6 &agrave; 16 ans) : 11.52 $</li>\n	<li>\n		Forfaits familles disponibles</li>\n</ul>\n<p>\n	<a href="http://www.valjalbert.com/fr/services/?id_services=tarification">Grille tarifaire du Village historique de Val-Jalbert</a></p>\n', '<ul>\n	<li>\n		Adult : 23.48 $</li>\n	<li>\n		Kids (6 &agrave; 16 ans) : 11.52 $</li>\n	<li>\n		Family package available</li>\n</ul>\n<p>\n	<a href="http://www.valjalbert.com/en/services/?id_services=tarification">V</a><a href="http://www.valjalbert.com/en/services/?id_services=tarification">al-Jalbert Authentic Company Town Rates 2012</a></p>\n', 1, 0, 1, 1, 0, 0, NULL, NULL, '5', '31', '10', '13', 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 1),
(30, 0, 'Mashteuiatsh', 'G0W 2H0', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 'Pekuakami en fresques, le circuit de notre histoire', '<p>\n	Pekuakami en fresques le circuit de notre histoire est un projet issu d&#39;une d&eacute;marche collective ayant impliqu&eacute; toutes les communaut&eacute;s du Domaine-du-Roy et celle de Mashteuiatsh. &nbsp;Dans chacune d&#39;entre elles, une fresque fut r&eacute;alis&eacute;e et inaugur&eacute;e en 2013, ann&eacute;e du 175e anniversaire de la r&eacute;gion du Saguenay-Lac-Saint-Jean.</p>\n<p>\n	&nbsp;</p>\n<p>\n	<a href="http://www.youtube.com/watch?feature=player_detailpage&amp;v=-_V6RHG3bpg#t=0">http://www.youtube.com/watch?feature=player_detailpage&amp;v=-_V6RHG3bpg#t=0</a><br />\n	&nbsp;</p>\n', '1516, rue Ouiatchouan', '', '', '', '', '', '', 'Pekuakami en fresques, le circuit de notre histoire', '', '', '', '', '', '', '', '', '', 'fresque.jpg', '', '', '', 0, '', 1, 'pekuakami-en-fresques-le-circuit-de-notre-histoire', 'pekuakami-en-fresques-le-circuit-de-notre-histoire', '<p>\n	Gratuit</p>\n', '', 1, 0, 1, 1, 1, 1, NULL, NULL, '1', '1', '12', '31', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(41, 0, 'Mashteuiatsh', '', '418-630-0722', '', '', '', 'kapatakan@hotmail.com', 'www.kuei.ca', '', '', '', '', '', '', 0, 0, 1, 'Transport Kapatakan', '<p>\n	Service de transport nolis&eacute; &agrave; partir de Mashteuiatsh. Vous avez un groupe, une activit&eacute; &agrave; organiser, le transport kapatakan offre une multitude de possibilit&eacute; pour accueillir et transporter des groupes &nbsp;jusqu&#39; &agrave; 21 passagers.&nbsp;</p>\n', '', '<p>\n	D&eacute;part de Mashteuiatsh &nbsp;toutes directions;&nbsp;</p>\n<p>\n	Forfait hockey &agrave; Saguenay ou &agrave; Qu&eacute;bec</p>\n<p>\n	Sortie organis&eacute;e pour tout genre d&#39;activit&eacute;, (ex: journ&eacute;e aux pommes)</p>\n', '<p>\n	Service nolis&eacute; : touristique, corporatif, sportif, &nbsp;groupe social&nbsp;</p>\n<p>\n	1 v&eacute;hicule contenant 10 passagers</p>\n<p>\n	1 v&eacute;hicule contenant 21 passagers</p>\n<p>\n	Si&egrave;ge en cuir, air climatis&eacute;&nbsp;</p>\n<p>\n	Section bagage int&eacute;rieur</p>\n', '', '', '', '<p>\n	Jusqu&#39; &agrave; 21 passagers</p>\n', 'Transport Kapatakan', '', '', '', '', '', '', '', '', '20161011_133828.jpg', '20161011_133723.jpg', '', '', '', 0, '', 1, 'transport-kapatakan', 'transport-kapatakan', '<p>\n	Prix au kilom&egrave;tre plus temps d&#39;attente du conducteur</p>\n', '', 1, 0, 1, 1, 1, 1, NULL, NULL, '1', '1', '12', '31', 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(36, 0, 'Mashteuiatsh', 'G0W 2H0', '418-618-2212 ', '', '', '', 'regardeca@hotmail.com', 'http://www.atalukan.com/', 'http://www.atalukan.com/edition-2015', '', 'https://www.facebook.com/Atalukan?fref=ts', '', '', '', 1, 0, 0, 'Festival de contes et légendes Atalukan', '<p>\n	Cofond&eacute; par Andr&eacute; Lemelin et Sonia Robertson en 2011, et port&eacute; par la Fondation Diane Robertson, le Festival de contes et l&eacute;gendes Atalukan en est &agrave; sa cinqui&egrave;me &eacute;dition. Avec une volont&eacute; et un plaisir renouvel&eacute;s de partager la richesse de l&rsquo;imaginaire culturel des Ilnuatsh et des autres Nations autochtones, le festival est l&rsquo;occasion de s&rsquo;approprier l&rsquo;esprit des mots qui parcourent depuis des temps imm&eacute;moriaux le territoire qui les a vus na&icirc;tre.</p>\n<p>\n	Le festival se d&eacute;roule du 9 au 14 ao&ucirc;t 016</p>\n', 'Camping plage Robertson', '<p>\n	&Agrave; l&rsquo;image des Ilnuatsh d&rsquo;antan, Atalukan ne se bornera pas &agrave; la s&eacute;dentarit&eacute; ; il r&eacute;v&eacute;lera &agrave; tous la beaut&eacute; et la richesse de l&rsquo;oralit&eacute; en visitant les bourgades avoisinantes : Mashteuiatsh, Roberval, Saint-F&eacute;licien, Desbiens, Saint-G&eacute;d&eacute;on et P&eacute;ribonka, tout en &eacute;tant bien ancr&eacute; au sein du site enchanteur du Camping Robertson.</p>\n<h4>\n	Pour conna&icirc;tre notre programmation ou toute autre information pertinente, consultez notre site internet ou suivez-nous sur Facebook!</h4>\n', '', '', '', '', '', 'Atalukan festival ', '', '', '', '', '', '', '', '', '', 'Festival_Atalukan.jpg', '', '', '', 0, '', 1, 'festival-de-contes-et-legendes-atalukan', 'atalukan-festival', '', '', 2, 1, 0, 1, 0, 0, NULL, NULL, '8', '9', '8', '14', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(38, 0, 'Mashteuiatsh', 'G0W 2H0', '418-765-0127', '418-618-3116', '', '', 'alissgermain@gmail.com', 'www.kuei.ca', '', '', '', '', '', '', 0, 0, 0, 'Uapanaventure.com', '<p>\n	Uapanavenure.com offre une activit&eacute; d&#39;aventure douce et de d&eacute;tente tout en d&eacute;couvrant la culture et les traditions ilnu.</p>\n<p>\n	Mme Alice, fort de son exp&eacute;rience, vous conduit sur les eaux du Pekuakami en canot sur le bord du lac en vous racontant les traditions, la culture, la vie en for&ecirc;t des Pekuakamiulnuatsh.</p>\n', 'Uapanaventure.com', '<p>\n	Possibilit&eacute; de trois forfaits aventure douce, d&#39;une dur&eacute;e variant entre 45 minutes et 1 h 30.</p>\n<p>\n	Client&egrave;le de tous &acirc;ges (jeunes moins de 16 ans accompagn&eacute;s de leurs parents)</p>\n', '<p>\n	Vestes de sauvetage incluses.&nbsp;</p>\n', '', '', '', '', 'uapanaventure.com', '', '', '', '', '', '', '', '', 'LOGO_JPEG.jpg', '', '', '', '', 0, '', 1, 'uapanaventurecom', 'uapanaventurecom', '<p>\n	Payable sur place en argent comptant</p>\n', '', 1, 0, 0, 1, 0, 0, NULL, NULL, '6', '21', '9', '30', 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `mod_attraits_categories`
--

CREATE TABLE IF NOT EXISTS `mod_attraits_categories` (
  `id` smallint(4) unsigned NOT NULL,
  `title_fr` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `url_fr` varchar(255) NOT NULL,
  `url_en` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contient les catégories d''activités/événements';

--
-- Contenu de la table `mod_attraits_categories`
--

INSERT INTO `mod_attraits_categories` (`id`, `title_fr`, `title_en`, `url_fr`, `url_en`) VALUES
(0, 'Culture', 'Culture', 'culture', 'culture'),
(1, 'Aventure, sport et plein-air', 'Adventure, sports and outdoors', 'aventure-sport-plein-air', 'adventure-sports-outdoors'),
(2, 'Art et artisanats autochtones', 'Aboriginal art and crafts', 'art-artisanats-autochtones', 'aboriginal-art-crafts'),
(3, 'À proximité', 'Nearby', 'a-proximite', 'nearby');

-- --------------------------------------------------------

--
-- Structure de la table `mod_attraits_documents`
--

CREATE TABLE IF NOT EXISTS `mod_attraits_documents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `title_en` text NOT NULL,
  `title_fr` text NOT NULL,
  `document` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Contenu de la table `mod_attraits_documents`
--

INSERT INTO `mod_attraits_documents` (`id`, `parent_id`, `title_en`, `title_fr`, `document`) VALUES
(24, 21, 'Uashassihtsh - What you will see...', 'Uashassihtsh - Vous y verrez...', 'Page_6_juillet_2013.pdf'),
(25, 30, 'Pekuakami en fresques le circuit de notre histoire', 'Pekuakami en fresques le circuit de notre histoire', 'Route_des_fresques.pdf'),
(27, 13, 'Discovery day August 14, 2014', 'Journée découverte 14 août 2014', 'journe_dcouverte.jpg'),
(28, 13, 'Discovery Day August 12, 2014', 'Journée découverte 12 août 2014', 'journe_muse_mashteuiatsh.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `mod_attraits_photos`
--

CREATE TABLE IF NOT EXISTS `mod_attraits_photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL,
  `title_en` text NOT NULL,
  `title_fr` text NOT NULL,
  `image` text NOT NULL,
  `main` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0=non, 1=oui',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Contenu de la table `mod_attraits_photos`
--

INSERT INTO `mod_attraits_photos` (`id`, `parent_id`, `title_en`, `title_fr`, `image`, `main`) VALUES
(4, 8, 'Big scene of the Uashassihtsh site', 'Grande scène du site Uashassihtsh', 'site_transmission_culturel.jpg', 1),
(16, 24, '', '', 'img_4163.jpeg', 0),
(17, 24, '', '', 'nouveauxtrains_zoosauvage.jpeg', 0),
(7, 10, 'Frame of a teepee', 'Charpente de tipi', 'P1050938.jpg', 1),
(8, 10, 'Mongolian yurt', 'Yourte Mongole', 'P1050948.jpg', 0),
(9, 10, 'Timber camps', 'Camps en bois', 'P1060001.jpg', 0),
(10, 10, 'Large tent (shaputuan)', 'Grande tente (shaputuan)', 'P1060014.jpg', 0),
(11, 10, 'Lounge from the main lodge', 'Salon du chalet principal', 'P1050857.jpg', 0),
(12, 10, 'Main lodge', 'Chalet principal', 'P1050918.jpg', 0),
(13, 10, 'The teepees in winter', 'Les tipis en hiver', '089.jpg', 0),
(14, 10, 'Cultural activity around the fire', 'Activité culturelle autour du feu', '2009_10_08_013.jpg', 0),
(15, 10, 'The host, Claude Boivin', 'L''hôte, Claude Boivin', '2009_10_08_191.jpg', 0),
(29, 35, '', '', 'IMG_0940.jpg', 0),
(28, 35, '', '', 'IMG_0914.jpg', 0),
(22, 35, '', '', 'riviere_mistassibi_camp_022.jpg', 0),
(23, 35, '', '', 'riviere_mistassibi_camp_027.jpg', 0),
(25, 35, '', '', 'IMG_1161_1.jpg', 0),
(26, 35, '', '', 'IMG_1204.jpg', 0),
(27, 35, '', '', '20141016_124634.mp4', 0),
(30, 35, '', '', 'IMG_0978.jpg', 0),
(31, 35, '', '', 'IMG_9591.jpg', 0),
(32, 35, '', '', 'IMG_9560.jpg', 0);

-- --------------------------------------------------------

--
-- Structure de la table `mod_contacts`
--

CREATE TABLE IF NOT EXISTS `mod_contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_fr` text NOT NULL,
  `title_en` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `mod_contacts_contacts`
--

CREATE TABLE IF NOT EXISTS `mod_contacts_contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL,
  `rank` int(10) unsigned NOT NULL,
  `title_fr` text NOT NULL,
  `department_fr` text NOT NULL,
  `title_en` text NOT NULL,
  `department_en` text NOT NULL,
  `name` text NOT NULL,
  `image` text NOT NULL,
  `tel_1` text NOT NULL,
  `tel_2` text NOT NULL,
  `tel_3` text NOT NULL,
  `tel_2_type` text NOT NULL,
  `tel_3_type` text NOT NULL,
  `fax` text NOT NULL,
  `email` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `mod_content`
--

CREATE TABLE IF NOT EXISTS `mod_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_fr` text NOT NULL,
  `title_en` text NOT NULL,
  `page_id` int(10) unsigned NOT NULL,
  `bloc` text NOT NULL,
  `rank` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Contenu de la table `mod_content`
--

INSERT INTO `mod_content` (`id`, `title_fr`, `title_en`, `page_id`, `bloc`, `rank`) VALUES
(2, 'Cartes touristiques', 'Tourist maps', 24, 'documents', 2),
(3, 'Guides', 'Guides', 24, 'documents', 4),
(5, 'Brochures', 'Brochures', 24, 'documents', 1),
(8, 'Minilexique français-nehlueun', '', 6, 'editor', 2),
(7, 'Un peu d''histoire', 'Our Roots', 6, 'editor', 1),
(9, '', '', 39, 'editor', 1),
(10, '', '', 40, 'editor', 1),
(11, '', '', 41, 'editor', 1),
(19, 'Commercialisation', 'Commercialization', 24, 'documents', 3),
(13, 'Facebook', 'Facebook', 45, 'editor', 1),
(14, 'Twitter', 'Twitter', 45, 'editor', 2),
(15, 'Flickr', 'Flickr', 45, 'editor', 3),
(16, 'Foursquare', 'Foursquare', 45, 'editor', 4),
(17, '', '', 5, 'contact', 1),
(23, 'Documents à télécharger', 'Documents', 6, 'documents', 3),
(36, ' ', ' ', 50, 'flickr_gallery', 7),
(33, 'Organismes ou associations', 'Association or Organization', 50, 'editor', 8),
(21, 'Circuit d''interprétation - Sur les traces des Pekuakamiulnuatsh', 'Circuit d''interprétation - Sur les traces des Pekuakamiulnuatsh', 24, 'documents', 5),
(35, 'Groupes Corporatifs', 'Corporate Groups', 50, 'editor', 5),
(29, 'Groupes Scolaires/Jeunesse', '', 50, 'editor', 2),
(28, '', '', 50, 'editor', 1),
(37, ' ', '  ', 50, 'documents', 6),
(32, '  ', ' ', 50, 'flickr_gallery', 4),
(38, ' ', ' ', 50, 'documents', 3),
(39, ' ', '   ', 50, 'documents', 9),
(40, 'Les 12 travaux des Géants', 'Les 12 travaux des Géants', 24, 'youtube', 6),
(41, 'dépliant 2016', '', 24, 'documents', 7);

-- --------------------------------------------------------

--
-- Structure de la table `mod_custom`
--

CREATE TABLE IF NOT EXISTS `mod_custom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `path` text NOT NULL,
  `page_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Contenu de la table `mod_custom`
--

INSERT INTO `mod_custom` (`id`, `path`, `page_id`) VALUES
(1, 'custom/accueil.php', 8),
(2, 'custom/epreuve.php', 34),
(3, 'custom/slideshow.php', 35),
(4, 'custom/epreuve2.php', 36),
(5, 'custom/epreuve3.php', 37),
(6, 'custom/template_custom_page.php', 38),
(7, 'modules/attraits/activity_filter.php', 44),
(8, 'custom/photos-videos.php', 4),
(9, 'modules/hebergement-restauration/default.php', 46),
(10, 'modules/hebergement-restauration/lodging_filter.php', 47),
(11, 'custom/404.php', 48),
(12, 'custom/my-stay.php', 49);

-- --------------------------------------------------------

--
-- Structure de la table `mod_documents`
--

CREATE TABLE IF NOT EXISTS `mod_documents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `rank` int(10) unsigned NOT NULL,
  `category` int(10) unsigned NOT NULL,
  `datetime` datetime NOT NULL,
  `title_fr` text NOT NULL,
  `description_fr` text NOT NULL,
  `title_en` text NOT NULL,
  `description_en` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Contenu de la table `mod_documents`
--

INSERT INTO `mod_documents` (`id`, `name`, `rank`, `category`, `datetime`, `title_fr`, `description_fr`, `title_en`, `description_en`) VALUES
(30, 'CarteMashteuiatshVerso_copie.pdf', 1, 2, '2016-06-16 13:31:00', 'Dépliant 2016', '', 'dépliant', ''),
(6, 'Circuit_dinterprtation_1.pdf', 1, 6, '2012-12-04 15:31:00', 'Sur les traces des Pekuakamiulnuatsh', '', 'wefewfewfewffwef', ''),
(21, 'Formulaire_de_rservation___Associations_et_Organisme_avril_2013.pdf', 1, 9, '2013-06-19 13:53:00', 'Formulaire d''inscription - Organisations et Associations', '', 'Organization and Association registration form', ''),
(11, 'Agora_du_muse_amrindien_2.jpg', 1, 8, '2013-04-11 10:18:00', 'Agora du Musée Amérindien', 'Pour vos réunions et présentations', 'Native Museum Agora', 'For your meetings and presentations'),
(9, 'Agora_du_muse_amrindien_1_1.jpg', 3, 8, '2013-04-11 10:11:00', 'Agora du Musée Amérindien', 'Pour vos sorties de groupe, l''Agora du Musée Amérindien', 'Native Museum Agora', 'For your group activities, the Native Museum Agora'),
(10, 'Agora_du_muse_amrindien.jpg', 2, 8, '2013-04-11 10:11:00', 'Agora du Musée Amérindien', 'Pour vos réunions, l''Agora du Musée', 'Native Museum Agora', 'For your meetings, the Native Museum Agora'),
(20, 'Formulaire_de_rservation___Corporative_avril_2013.pdf', 2, 9, '2013-06-19 13:53:00', 'Formulaire d''inscription - Corporatif', '', 'Corporate registration form', ''),
(19, 'Formulaire_de_rservation___Jeunesse_et_Scolaire_avril_2013.pdf', 3, 9, '2013-06-19 13:53:00', 'Formulaire d''inscription - jeunesse et scolaire', '', 'Registration form - School group and youth', ''),
(28, 'CarteMashteuiatsh2016.pdf', 1, 3, '2016-06-15 15:29:00', 'Carte touristique 2016', '', 'carte touristique 2016', '');

-- --------------------------------------------------------

--
-- Structure de la table `mod_documents_cats`
--

CREATE TABLE IF NOT EXISTS `mod_documents_cats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rank` int(10) unsigned NOT NULL,
  `title_fr` text NOT NULL,
  `title_en` text NOT NULL,
  `description_fr` text NOT NULL,
  `description_en` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Contenu de la table `mod_documents_cats`
--

INSERT INTO `mod_documents_cats` (`id`, `rank`, `title_fr`, `title_en`, `description_fr`, `description_en`) VALUES
(1, 1, 'test', 'test', '', ''),
(2, 2, 'Brochure', 'Brochure', '', ''),
(3, 3, 'Cartes', 'Maps', '', ''),
(4, 4, 'Carnet Mashteuiatsh', 'Mashteuiatsh Marketing Book', '', ''),
(5, 5, 'Mashteuiatsh Marketing Book', 'Mashteuiatsh Marketing Book', '', ''),
(6, 6, 'Circuit d''interprétation', 'Circuit d''interprétation', '', ''),
(7, 7, 'Groupes scolaire', 'School groups', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.'),
(8, 8, 'Musée Amérindien', 'Native Museum', '', ''),
(9, 9, 'Formulaires', 'Forms', ' ', '  '),
(10, 10, 'Vidéo', 'Video', 'Pekuakami en fresques, le circuit de notre histoire', 'Ravel bikes in Québec');

-- --------------------------------------------------------

--
-- Structure de la table `mod_hebergement`
--

CREATE TABLE IF NOT EXISTS `mod_hebergement` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `city` text NOT NULL,
  `postal_code` text NOT NULL,
  `tel` text NOT NULL,
  `cell` text NOT NULL,
  `toll_free` text NOT NULL,
  `fax` text NOT NULL,
  `email` text NOT NULL,
  `website` text NOT NULL,
  `website2` text NOT NULL,
  `google_maps` text NOT NULL,
  `facebook` text NOT NULL,
  `twitter` text NOT NULL,
  `foursquare` text NOT NULL,
  `tripadvisor` text NOT NULL,
  `service_restaurant` tinyint(1) unsigned NOT NULL,
  `name_fr` text NOT NULL,
  `description_fr` text NOT NULL,
  `address_fr` text NOT NULL,
  `activities_fr` text NOT NULL,
  `services_fr` text NOT NULL,
  `service_restaurant_description_fr` text NOT NULL,
  `name_en` text NOT NULL,
  `description_en` text NOT NULL,
  `address_en` text NOT NULL,
  `activities_en` text NOT NULL,
  `services_en` text NOT NULL,
  `service_restaurant_description_en` text NOT NULL,
  `logo` text NOT NULL,
  `main_photo` varchar(255) NOT NULL,
  `units_fr` text NOT NULL,
  `units_equipement_fr` text NOT NULL,
  `beds_fr` text NOT NULL,
  `fees_fr` text NOT NULL,
  `units_en` text NOT NULL,
  `units_equipement_en` text NOT NULL,
  `beds_en` text NOT NULL,
  `fees_en` text NOT NULL,
  `flickr_photoset_id` text NOT NULL,
  `gallery_type` tinyint(1) unsigned NOT NULL,
  `flickr_show_amount` smallint(5) unsigned NOT NULL,
  `flickr_user` text NOT NULL,
  `url_fr` text NOT NULL,
  `url_en` text NOT NULL,
  `payment_1` tinyint(1) unsigned NOT NULL,
  `payment_2` tinyint(1) unsigned NOT NULL,
  `payment_3` tinyint(1) unsigned NOT NULL,
  `payment_4` tinyint(1) unsigned NOT NULL,
  `payment_5` tinyint(1) unsigned NOT NULL,
  `payment_6` tinyint(1) unsigned NOT NULL,
  `payment_7` tinyint(1) unsigned NOT NULL,
  `payment_8` tinyint(1) unsigned NOT NULL,
  `season_spring` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `season_summer` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `season_fall` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `season_winter` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `period_start_month` varchar(2) NOT NULL,
  `period_start_day` varchar(2) NOT NULL,
  `period_end_month` varchar(2) NOT NULL,
  `period_end_day` varchar(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `season_spring` (`season_spring`,`season_summer`,`season_fall`,`season_winter`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Contenu de la table `mod_hebergement`
--

INSERT INTO `mod_hebergement` (`id`, `city`, `postal_code`, `tel`, `cell`, `toll_free`, `fax`, `email`, `website`, `website2`, `google_maps`, `facebook`, `twitter`, `foursquare`, `tripadvisor`, `service_restaurant`, `name_fr`, `description_fr`, `address_fr`, `activities_fr`, `services_fr`, `service_restaurant_description_fr`, `name_en`, `description_en`, `address_en`, `activities_en`, `services_en`, `service_restaurant_description_en`, `logo`, `main_photo`, `units_fr`, `units_equipement_fr`, `beds_fr`, `fees_fr`, `units_en`, `units_equipement_en`, `beds_en`, `fees_en`, `flickr_photoset_id`, `gallery_type`, `flickr_show_amount`, `flickr_user`, `url_fr`, `url_en`, `payment_1`, `payment_2`, `payment_3`, `payment_4`, `payment_5`, `payment_6`, `payment_7`, `payment_8`, `season_spring`, `season_summer`, `season_fall`, `season_winter`, `period_start_month`, `period_start_day`, `period_end_month`, `period_end_day`) VALUES
(3, 'Mashteuiatsh', 'G0W 2H0', '418-275-8375', '', '', '418-275-8375', 'info@aubergemaisonrobertson.ca', 'www.aubergemaisonrobertson.ca', '', 'https://maps.google.ca/maps?q=Auberge+Maison+Robertson,+Mashteuiatsh,+QC&hl=fr&ie=UTF8&ll=48.583137,-72.230043&spn=0.047411,0.111494&sll=48.468366,-72.247767&sspn=0.380148,0.891953&oq=auberge+maison&hq=Auberge+Maison+Robertson,&hnear=Mashteuiatsh,+Le+Domaine-du-Roy,+Qu%C3%A9bec&t=m&z=14&iwloc=A', 'http://www.facebook.com/pages/Auberge-Maison-Robertson/179237298791777', '', '', '', 0, 'Auberge Maison Robertson', '<p>\n	Une ambiance calme et chaleureuse vous attend dans cette maison centenaire, lieu historique o&ugrave; se pratiquait la traite des fourrures. La pr&eacute;sence d&rsquo;&oelig;uvres uniques r&eacute;alis&eacute;es par des artisans am&eacute;rindiens ainsi qu&rsquo;une vue imprenable sur le lac Saint-Jean agr&eacute;mentera votre s&eacute;jour. Venez vivre une exp&eacute;rience authentique dans la communaut&eacute; Ilnu de Mashteuiatsh.</p>\n<p>\n	<iframe allowfullscreen="" frameborder="0" height="315" src="http://www.youtube.com/embed/LobL4m8aivI" width="420"></iframe></p>\n', '1645, rue Ouiatchaouan', '<p>\n	Situ&eacute; directement sur le bord de la <a href="/activites-et-attraits/a/veloroute-des-bleuets">V&eacute;loroute des Bleuets</a>, &agrave; proximit&eacute; du mus&eacute;e et des boutiques et du <a href="/activites-et-attraits/a/site-uashassihtsh">Site Uashassihtsh</a>.</p>\n', '<ul>\n	<li>\n		Un petit d&eacute;jeuner complet est inclus dans le prix de la chambre</li>\n	<li>\n		Remisage des v&eacute;los, Transport au besoin, Navette de bagages</li>\n	<li>\n		Acc&egrave;s Internet haute vitesse sans fil gratuit</li>\n</ul>\n', '<br />\n', 'Auberge Maison Robertson', '<p>\n	A calm and warm atmosphere awaits you in this century home, a place where history was played in the fur trade. The presence of unique works made ​​by Native American craftsmen and a breathtaking view of Lake Saint-Jean will complement your stay. Come experience authentic Ilnu community of Mashteuiatsh.</p>\n<p>\n	<iframe allowfullscreen="" frameborder="0" height="315" src="http://www.youtube.com/embed/LobL4m8aivI" width="420"></iframe></p>\n', '1645, rue Ouiatchaouan', '<p>\n	Located directly on the edge of <a href="/activities-and-attractions/a/veloroute-des-bleuets">La V&eacute;loroute des Bleuets</a>, near the museum and shops and <a href="/activities-and-attractions/a/site-uashassihtsh">Site Uashassihtsh</a>.</p>\n', '<ul>\n	<li>\n		Breakfast is included in the room price</li>\n	<li>\n		Storage of bicycles, Transportation necessary, luggage shuttle</li>\n	<li>\n		High Speed ​​Internet Access Free Wireless</li>\n</ul>\n', '', 'Logo_seul.png', 'maison_signet.png', '<p>\n	6 unit&eacute;s</p>\n', '<ul>\n	<li>\n		Acc&egrave;s Internet haute vitesse sans fil gratuit</li>\n	<li>\n		T&eacute;l&eacute;viseur avec c&acirc;ble</li>\n	<li>\n		Robes de chambre</li>\n	<li>\n		Table de travail</li>\n	<li>\n		Porte-valise</li>\n	<li>\n		Radio-r&eacute;veil</li>\n	<li>\n		Lit d&#39;appoint sur demande</li>\n	<li>\n		Lit queen ou simple</li>\n</ul>\n', '<ul>\n	<li>\n		Lit d&#39;appoint sur demande</li>\n	<li>\n		Lit queen ou simple</li>\n</ul>\n', '<p>\n	<strong>Haute saison (1er juin au 30 septembre)</strong></p>\n<ul>\n	<li>\n		Simple, entre 75$ et 100$ selon la chambre</li>\n	<li>\n		Double, entre 90$ et 115$ selon la chambre</li>\n</ul>\n<p>\n	<strong>Basse saison (1er octobre AU 31 mai)</strong></p>\n<ul>\n	<li>\n		Simple : entre 65 $ et 90 $ (selon la chambre)</li>\n	<li>\n		Double : entre 80$ et 105$ (selon la chambre)</li>\n</ul>\n', '<p>\n	6 rooms</p>\n', '<ul>\n	<li>\n		High Speed ​​Internet Access Free Wireless</li>\n	<li>\n		Cable TV</li>\n	<li>\n		Gowns</li>\n	<li>\n		Worktable</li>\n	<li>\n		Suitcase</li>\n	<li>\n		Clock Radio</li>\n	<li>\n		Extra bed on request</li>\n	<li>\n		Queen or single bed</li>\n</ul>\n', '<ul>\n	<li>\n		Extra bed on request</li>\n	<li>\n		Queen or single</li>\n</ul>\n', '<p>\n	<strong>High season (June 1 to September 30)</strong></p>\n<ul>\n	<li>\n		Simple, between $ 75 and $ 100 depending on room</li>\n	<li>\n		Double between $ 90 and $ 115 depending on room</li>\n</ul>\n<p>\n	<strong>Low season (October 1, 31 May)</strong></p>\n<ul>\n	<li>\n		Simple: between $ 65 and $ 90 (depending on room)</li>\n	<li>\n		Double: between $ 80 and $ 105 (depending on room)</li>\n</ul>\n', '72157630857450712', 2, 6, '3', 'auberge-maison-robertson', 'auberge-maison-robertson', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, '1', '1', '12', '31'),
(4, 'Mashteuiatsh', 'G0W 2H0', '418-275-6006', '418-547-9411', '', '418-275-6188', 'camping-adl@adltobacco.com', 'http://www.campingdelapointe.com', '', 'http://maps.google.ca/maps?q=Camping+de+la+Pointe+Enr,+Mashteuiatsh,+QC&hl=en&sll=48.71445,-72.445442&sspn=0.556354,1.419983&oq=Camping+de+la+p&hq=Camping+de+la+Pointe+Enr,+Mashteuiatsh,+QC&t=m&z=15', '', '', '', '', 0, 'Camping de la Pointe', '<p>\n	Une des plus belles baies de Mashteuiatsh, le camping de la Pointe offre un camping et la location de chalet.</p>\n<p>\n	En bordure du lac, le panorama qui s&rsquo;offre &agrave; vous est superbe. Une descente et un emplacement pour votre embarcation peuvent &ecirc;tre disponibles, bienvenue aux p&ecirc;cheurs.&nbsp;</p>\n', '1358, rue Ouiatchouan', '<br />\n', '<ul>\n	<li>\n		Superbe plage de sable aux abords du Lac Saint-Jean;</li>\n	<li>\n		Aire de jeux (Volley Ball, fer, jeux pour enfants);</li>\n	<li>\n		Douches et toilettes;</li>\n	<li>\n		Salle de buanderie;</li>\n	<li>\n		Salle communautaire;</li>\n	<li>\n		Descente de bateau;</li>\n	<li>\n		Emplacement pour bateau;</li>\n	<li>\n		Quai avec vision sur le lac;</li>\n	<li>\n		Potentiel de p&ecirc;che sportive;</li>\n	<li>\n		Location de site saisonnier;</li>\n	<li>\n		Location de chalet avec vue sur le Lac Saint-Jean (&agrave; la nuit / semaine / mois.<br />\n		&nbsp;</li>\n</ul>\n', '', 'Camping de la Pointe', '<p>\n	One of the most beautiful bays of Mashteuiatsh, camping Point offers camping and cabin rentals.</p>\n<p>\n	Along the lake, the panorama that awaits you is beautiful. A descent and a place for your boat may be available, welcome to the fishermen.</p>\n', '1358, rue Ouiatchouan', '', '<ul>\n	<li>\n		Superbe plage de sable aux abords du Lac Saint-Jean;</li>\n	<li>\n		Aire de jeux (Volley Ball, fer, jeux pour enfants);</li>\n	<li>\n		Douches et toilettes;</li>\n	<li>\n		Salle de buanderie;</li>\n	<li>\n		Salle communautaire;</li>\n	<li>\n		Descente de bateau;</li>\n	<li>\n		Emplacement pour bateau;</li>\n	<li>\n		Quai avec vision sur le lac;</li>\n	<li>\n		Potentiel de p&ecirc;che sportive;</li>\n	<li>\n		Location de site saisonnier;</li>\n	<li>\n		Location de chalet avec vue sur le Lac Saint-Jean (&agrave; la nuit / semaine / mois.<br />\n		&nbsp;</li>\n</ul>\n', '', 'logo.jpg', '4_1.jpg', '<p>\n	2 unit&eacute;s/chalets et&nbsp;seulement des terrains sans services en location</p>\n', '<br />\n', '<br />\n', '<p>\n	25.00$ / jour / tente<br />\n	75.00$ / chalet<br />\n	&nbsp;</p>\n', '<p>\n	2 unit&eacute;s/chalets et seulement des terrains sans services en location</p>\n', '', '', '<p>\n	25.00$ / jour / tente<br />\n	75.00$ / chalet</p>\n', '', 2, 0, '', 'camping-de-la-pointe', 'camping-de-la-pointe', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, '5', '1', '9', '30'),
(5, 'Mashteuiatsh', 'G0W 2H0', '418-275-1375', '', '', '418-275-7463', 'campingplagerobertson@bellnet.ca', 'http://www.guidecamping.ca/plagerobertson', 'http://www.campingquebec.com/saguenay-lac-st-jean/camping-plage-robertson.html', '', '', '', '', '', 1, 'Camping Plage Robertson', '<p>\n	Les nombreux emplacements de camping avec ou sans services vous donnent la chance d&rsquo;admirer le lac Saint-Jean, l&rsquo;&eacute;t&eacute; via une longue plage d&rsquo;un demi-kilom&egrave;tre et enti&egrave;rement recouverte de sable dor&eacute;.</p>\n<p>\n	Les installations r&eacute;cr&eacute;atives sont id&eacute;ales pour le plaisir des enfants et le repos des parents en plus des services de restauration et de buanderie. La saison estivale n&rsquo;aura pass&eacute; que trop vite!&nbsp;</p>\n', '2202, rue Ouiatchouan', '<ul>\n	<li>\n		Piste cyclable</li>\n	<li>\n		Festival de contes</li>\n	<li>\n		Volley-ball de plage</li>\n	<li>\n		p&eacute;tanque</li>\n	<li>\n		Aire de jeux pour enfants</li>\n	<li>\n		Projection de films autochtone</li>\n	<li>\n		Baignade</li>\n	<li>\n		Activit&eacute;s pour enfants</li>\n	<li>\n		Spectacles&nbsp;</li>\n</ul>\n<h3>\n	&Agrave; surveiller du 6 au 10 ao&ucirc;t 2014: &nbsp;le festival atalukan</h3>\n<p>\n	<a href="/img/ckfinder/files/festival%20atalukan.pdf">/img/ckfinder/files/festival%20atalukan.pdf</a></p>\n<p>\n	<a href="/img/ckfinder/files/festival%20atalukan%202.pdf">/img/ckfinder/files/festival%20atalukan%202.pdf</a></p>\n', '<ul>\n	<li>\n		150 sites bois&eacute;s avec ou sans service</li>\n	<li>\n		Animation</li>\n	<li>\n		Camping sauvage, eau, &eacute;lectricit&eacute;, &eacute;gout</li>\n	<li>\n		Plage surveill&eacute;e</li>\n	<li>\n		Bois</li>\n	<li>\n		glace</li>\n	<li>\n		Surveillance 24 heures (Haute saison)</li>\n	<li>\n		Buanderie</li>\n	<li>\n		Salle int&eacute;rieure</li>\n	<li>\n		Blocs sanitaires</li>\n	<li>\n		Restaurant (Haute saison)</li>\n	<li>\n		d&eacute;panneur</li>\n</ul>\n', '<p>\n	7 jour sur 7<br />\n	6h00 &agrave; 23h00 (Haute saison)</p>\n', 'Camping Plage Robertson', '<p>\n	Les nombreux emplacements de camping avec ou sans services vous donnent la chance d&rsquo;admirer le lac Saint-Jean, l&rsquo;&eacute;t&eacute; via une longue plage d&rsquo;un demi-kilom&egrave;tre et enti&egrave;rement recouverte de sable dor&eacute;.</p>\n<p>\n	Les installations r&eacute;cr&eacute;atives sont id&eacute;ales pour le plaisir des enfants et le repos des parents en plus des services de restauration et de buanderie. La saison estivale n&rsquo;aura pass&eacute; que trop vite!&nbsp;</p>\n', '2202, rue Ouiatchouan', '<ul>\n	<li>\n		Piste cyclable</li>\n	<li>\n		Festival de contes</li>\n	<li>\n		Volley-ball de plage</li>\n	<li>\n		p&eacute;tanque</li>\n	<li>\n		Aire de jeux pour enfants</li>\n	<li>\n		Projection de films autochtone</li>\n	<li>\n		Baignade</li>\n	<li>\n		Activit&eacute;s pour enfants</li>\n	<li>\n		Spectacles&nbsp;</li>\n</ul>\n', '<ul>\n	<li>\n		150 sites bois&eacute;s avec ou sans service</li>\n	<li>\n		Animation</li>\n	<li>\n		Camping sauvage, eau, &eacute;lectricit&eacute;, &eacute;gout</li>\n	<li>\n		Plage surveill&eacute;e</li>\n	<li>\n		Bois</li>\n	<li>\n		glace</li>\n	<li>\n		Surveillance 24 heures</li>\n	<li>\n		Buanderie</li>\n	<li>\n		Salle int&eacute;rieure</li>\n	<li>\n		Blocs sanitaires</li>\n	<li>\n		Restaurant</li>\n	<li>\n		d&eacute;panneur</li>\n</ul>\n', '<p>\n	7 jour sur 7<br />\n	6h00 &agrave; 23h00</p>\n', '', 'DSCN3585.jpg', '<p>\n	150 sites bois&eacute;s avec ou sans service</p>\n', '<br />\n', '<br />\n', '<p>\n	&nbsp;</p>\n<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">\n	<tbody>\n		<tr>\n			<td style="background-color: rgb(204, 204, 204);">\n				<strong>Service</strong></td>\n			<td style="background-color: rgb(204, 204, 204);">\n				<strong>Jour</strong></td>\n			<td style="background-color: rgb(204, 204, 204);">\n				<strong>Semaine</strong></td>\n		</tr>\n		<tr>\n			<td>\n				3 services (plage)</td>\n			<td>\n				39$</td>\n			<td>\n				245.70$</td>\n		</tr>\n		<tr>\n			<td>\n				3 services / 30 amp&egrave;res</td>\n			<td>\n				38$</td>\n			<td>\n				239.40$</td>\n		</tr>\n		<tr>\n			<td>\n				2 services / 15 amp&egrave;res</td>\n			<td>\n				32$</td>\n			<td>\n				201.60$</td>\n		</tr>\n		<tr>\n			<td>\n				3 services / 15 amp&egrave;res</td>\n			<td>\n				35$</td>\n			<td>\n				219.40$</td>\n		</tr>\n		<tr>\n			<td>\n				Camping sauvage (buton sauvage)</td>\n			<td>\n				28$</td>\n			<td>\n				176.40$</td>\n		</tr>\n		<tr>\n			<td>\n				Aire ouverte</td>\n			<td>\n				22$</td>\n			<td>\n				138.60$</td>\n		</tr>\n	</tbody>\n</table>\n<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">\n	<tbody>\n		<tr>\n			<td style="background-color: rgb(204, 204, 204);">\n				Acc&egrave;s sur le site</td>\n			<td style="background-color: rgb(204, 204, 204);">\n				Visiteurs ou baigneurs</td>\n		</tr>\n		<tr>\n			<td>\n				Adultes</td>\n			<td>\n				4.50$</td>\n		</tr>\n		<tr>\n			<td>\n				12-17 ans</td>\n			<td>\n				2$</td>\n		</tr>\n		<tr>\n			<td>\n				A&icirc;n&eacute;</td>\n			<td>\n				2$</td>\n		</tr>\n		<tr>\n			<td>\n				Enfant</td>\n			<td>\n				2$</td>\n		</tr>\n	</tbody>\n</table>', '<p>\n	150 sites bois&eacute;s avec ou sans service</p>\n', '', '', '', '72157630859123492', 2, 2, '3', 'camping-plage-robertson', 'camping-plage-robertson', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, '5', '20', '10', '11'),
(7, 'Mashteuiatsh', 'G0W 2H0', '418-669-4032', '', '', '', 'info@reservoirpipmuacan.com', 'http://www.pourvoiriepipmuacan.com/', '', 'http://maps.google.ca/maps?q=R%C3%A9servoir+Pipmuacan,+Mont-Valin,+QC&hl=en&ie=UTF8&sll=48.71445,-72.445442&sspn=0.705857,1.654816&oq=R%C3%A9servoir+Pip&hnear=Pipmuacan+Reservoir&t=m&z=8', 'http://www.facebook.com/pages/Pouvoirie-du-R%C3%A9servoir-Pipmuacan/197629600257241', '', '', '', 1, 'Pourvoirie du réservoir Pipmuacan', '<p>\n	Une pourvoirie qui accueil &agrave; l&rsquo;ann&eacute;e o&ugrave; la pr&eacute;sence autochtone ajoute une touche exotique. Pour les amateurs de neige plus que blanche, c&rsquo;est le paradis, des dizaines de kilom&egrave;tres de neige folles hors des sentiers battus.</p>\n<p>\n	En &eacute;t&eacute;, le grand plan d&rsquo;eau qu&rsquo;est le r&eacute;servoir Pipmuacan offre la possibilit&eacute; aux p&ecirc;cheurs, quadistes ou randonneurs de profiter d&rsquo;une nature sauvage exceptionnelle.</p>\n<p>\n	Situ&eacute;e &agrave; 2,5 heures au nord de Chicoutimi par la route de Saint-David-de-Falardeau</p>\n<p>\n	Coordonn&eacute;es g&eacute;ographiques :</p>\n<ul>\n	<li>\n		Latitude : 49&deg; 30&#39; 51&quot; 45 N</li>\n	<li>\n		Longitude : 70&deg; 45&#39; 32&quot; 25 O<br />\n		&nbsp;</li>\n</ul>\n', '1610, rue Matishu', '<ul>\n	<li>\n		Activit&eacute; de chasse &agrave; l&rsquo;ours noir</li>\n	<li>\n		p&ecirc;che au grand brochet</li>\n	<li>\n		randonn&eacute;e p&eacute;destre et observation de la faune avec guide autochtone</li>\n	<li>\n		atelier de fabrication de raquettes</li>\n	<li>\n		infrastructure pour kayakistes</li>\n	<li>\n		Motoneige</li>\n	<li>\n		raquette</li>\n</ul>\n', '<ul>\n	<li>\n		Location de chalet</li>\n	<li>\n		restauration</li>\n	<li>\n		service de guide</li>\n	<li>\n		service de navette de transport en partant de Chicoutimi sur demande (frais)</li>\n	<li>\n		services corporatifs (r&eacute;union, lac &agrave; l&rsquo;&eacute;paule, formation)</li>\n	<li>\n		t&eacute;l&eacute;phone</li>\n	<li>\n		Internet Wi-Fi</li>\n</ul>\n', '<p>\n	Service cantine, repas complet et table d&rsquo;h&ocirc;te</p>\n', 'Pourvoirie du réservoir Pipmuacan', '<p>\n	Une pourvoirie qui accueil &agrave; l&rsquo;ann&eacute;e o&ugrave; la pr&eacute;sence autochtone ajoute une touche exotique. Pour les amateurs de neige plus que blanche, c&rsquo;est le paradis, des dizaines de kilom&egrave;tres de neige folles hors des sentiers battus.</p>\n<p>\n	En &eacute;t&eacute;, le grand plan d&rsquo;eau qu&rsquo;est le r&eacute;servoir Pipmuacan offre la possibilit&eacute; aux p&ecirc;cheurs, quadistes ou randonneurs de profiter d&rsquo;une nature sauvage exceptionnelle.</p>\n<p>\n	Situ&eacute;e &agrave; 2,5 heures au nord de Chicoutimi par la route de Saint-David-de-Falardeau</p>\n<p>\n	<br />\n	Coordonn&eacute;es g&eacute;ographiques :</p>\n<ul>\n	<li>\n		Latitude : 49&deg; 30&#39; 51&quot; 45 N</li>\n	<li>\n		Longitude : 70&deg; 45&#39; 32&quot; 25 O</li>\n</ul>\n', '', '<ul>\n	<li>\n		Activit&eacute; de chasse &agrave; l&rsquo;ours noir</li>\n	<li>\n		p&ecirc;che au grand brochet</li>\n	<li>\n		randonn&eacute;e p&eacute;destre et observation de la faune avec guide autochtone</li>\n	<li>\n		atelier de fabrication de raquettes</li>\n	<li>\n		infrastructure pour kayakistes</li>\n	<li>\n		Motoneige</li>\n	<li>\n		raquette</li>\n</ul>\n', '<ul>\n	<li>\n		Location de chalet</li>\n	<li>\n		restauration</li>\n	<li>\n		service de guide</li>\n	<li>\n		service de navette de transport en partant de Chicoutimi sur demande (frais)</li>\n	<li>\n		services corporatifs (r&eacute;union, lac &agrave; l&rsquo;&eacute;paule, formation)</li>\n	<li>\n		t&eacute;l&eacute;phone</li>\n	<li>\n		Internet Wi-Fi</li>\n</ul>\n', '<p>\n	Service cantine, repas complet et table d&rsquo;h&ocirc;te</p>\n', 'logo_1.jpg', 'Copie_de_P1020547.jpg', '<p>\n	4 chalets, 4 carr&eacute;s de tente, 1 chalet communautaire avec salle &agrave; manger et salle de r&eacute;union, aire de restauration</p>\n', '<br />\n', '<br />\n', '<p>\n	Un d&eacute;p&ocirc;t de 50% du montant du forfait est demand&eacute; sur r&eacute;servation</p>\n', '<p>\n	4 chalets, 4 carr&eacute;s de tente, 1 chalet communautaire avec salle &agrave; manger et salle de r&eacute;union, aire de restauration</p>\n', '<br />\n', '', '<p>\n	Un d&eacute;p&ocirc;t de 50% du montant du forfait est demand&eacute; sur r&eacute;servation</p>\n', '72157630871724780', 2, 6, '3', 'pourvoirie-du-reservoir-pipmuacan', 'pourvoirie-du-reservoir-pipmuacan', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, '1', '1', '12', '31'),
(10, 'Roberval', 'G8H 2M9', '418-275-6857', '418-637-0926', '', '', 'info@aventureplumeblanche.com', 'www.aventureplumeblanche.com', '', 'https://maps.google.ca/maps?q=aventure+plume+blanche&hl=fr&ll=48.518651,-72.268753&spn=0.163734,0.288734&sll=49.891235,-97.15369&sspn=46.340694,114.169922&hq=aventure+plume+blanche&cid=2947548883596797512&t=m&z=12&iwloc=A', 'http://www.facebook.com/pages/aventure-plume-blanche/307968596376', '', '', '', 0, 'Aventure Plume Blanche', '<p>\n	Choisissez votre lieu de repos parmi nos sept (7) types d&#39;habitation traditionnelle. Que vous soyez seul ou en groupe, vous retrouvez les sensations d&#39;une bonne nuit de sommeil au plus pr&egrave;s de la nature, dans un environnement typiquement autochtone.</p>\n<p>\n	Un bloc sanitaire central comprennant deux toilettes et deux douches est &agrave; votre disposition, annex&eacute; au chalet principal du site.</p>\n', '607 rang 2 sud', '<ul>\n	<li>\n		Visite guid&eacute; du site</li>\n	<li>\n		Sensibilisation &agrave; la culture autochtone</li>\n	<li>\n		&Eacute;changes autour du feu</li>\n	<li>\n		Fabrication d&rsquo;oeuvres artisanales</li>\n</ul>\n', '', '', 'Aventure Plume Blanche', '<p>\n	Discover Native culture through a variety of authentic and spiritual activities. In rhythm of the seasons, experience the life style of the Pekuakamiulnuatsh in a peaceful, beautiful, natural surrounding. Visitors can sleep in a teepee or prospector tent. A wide range of packages offered for students, professionals and touristic.</p>\n', '607 rang 2 sud', '<ul>\n	<li>\n		Guided tour of the site</li>\n	<li>\n		Aboriginal cultural awareness</li>\n	<li>\n		Fireside cultural exchanges</li>\n	<li>\n		Handicrafts manufacturing</li>\n	<li>\n		Tasting of Native American traditional food</li>\n</ul>\n', '', '', 'AventurePlumeBlanche_Logo_fond_blanc.jpg', 'Charpente_de_tipi.jpg', '<ul>\n	<li>\n		Tipis</li>\n	<li>\n		Tente prospecteur</li>\n	<li>\n		Grosse tente (shaputuan)</li>\n	<li>\n		Yourtes</li>\n</ul>\n', '<br />\n', '<br />\n', '<p>\n	H&eacute;bergement : Entre 75 $ et 135 $ / nuit&eacute;e, sur r&eacute;servation uniquement.</p>\n', '<ul>\n	<li>\n		Tipis</li>\n	<li>\n		Prospector tents</li>\n	<li>\n		Yurts</li>\n	<li>\n		Large tent (shaputuan)</li>\n</ul>\n', '', '', '<p>\n	Accommodation: Between $ 75 and $ 135 / night, by reservation only.</p>\n', '72157631006293624', 2, 0, '3', 'aventure-plume-blanche', 'aventure-plume-blanche', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, '1', '1', '12', '31'),
(8, 'Mashteuiatsh', 'G0W 2H0', '418-275-0541', '', '', '418-275-6625', 'dophilip@sympatico.ca', 'www.domainephilippe.com', '', 'https://maps.google.ca/maps?q=Mashteuiatsh,+200+Rue+du+Bois%C3%A9,+Saint-F%C3%A9licien,+QC&hl=en&ie=UTF8&ll=48.578935,-72.26356&spn=0.023878,0.054588&sll=48.567452,-72.230033&sspn=0.011942,0.027294&oq=200,+rue+Bois%C3%A9+mash&hnear=Rue+du+Bois%C3%A9,+Saint-F%C3%A9licien,+Qu%C3%A9bec+G8K+1T6&t=m&z=15', '', '', '', '', 0, 'Domaine Philippe', '<p>\n	L&agrave; o&ugrave; le soleil se couche et se l&egrave;ve. Le Domaine Philippe vous donne la chance de profiter de l&rsquo;un de ses huit chalets enti&egrave;rement &eacute;quip&eacute;s pour faire une halte le temps d&rsquo;une ou plusieurs semaines.</p>\n<p>\n	Cet emplacement priv&eacute; vous assurera tranquillit&eacute; et intimit&eacute; en bordure du lac Saint-Jean. Un h&eacute;bergement convivial de qualit&eacute;.&nbsp;</p>\n', '200, rue Boisé', '<p>\n	Baignade, V&eacute;loroute &nbsp;</p>\n', '<p>\n	Minibiblioth&egrave;que, minivid&eacute;oth&egrave;que pour qui apporte son magn&eacute;toscope, quotidien local et revues, quelques jeux int&eacute;rieurs et ext&eacute;rieurs, banque de noms de gardiennes, accessoires pour b&eacute;b&eacute;, chaise roulante, trousse d&#39;urgence Ambulance St-Jean, barres-lit, Internet sans fil.</p>\n<p>\n	Pas de services de restauration sur le site.</p>\n<p>\n	2 chalets disponibles en hiver<br />\n	&nbsp;</p>\n', '', 'Domaine Philippe', '<p>\n	L&agrave; o&ugrave; le soleil se couche et se l&egrave;ve. Le Domaine Philippe vous donne la chance de profiter de l&rsquo;un de ses huit chalets enti&egrave;rement &eacute;quip&eacute;s pour faire une halte le temps d&rsquo;une ou plusieurs semaines.</p>\n<p>\n	Cet emplacement priv&eacute; vous assurera tranquillit&eacute; et intimit&eacute; en bordure du lac Saint-Jean. Un h&eacute;bergement convivial de qualit&eacute;.&nbsp;</p>\n', '200, rue Boisé', '<p>\n	Baignade, V&eacute;loroute &nbsp;</p>\n', '<p>\n	Minibiblioth&egrave;que, minivid&eacute;oth&egrave;que pour qui apporte son magn&eacute;toscope, quotidien local et revues, quelques jeux int&eacute;rieurs et ext&eacute;rieurs, banque de noms de gardiennes, accessoires pour b&eacute;b&eacute;, chaise roulante, trousse d&#39;urgence Ambulance St-Jean, barres-lit, Internet sans fil.</p>\n<p>\n	Pas de services de restauration sur le site.</p>\n<p>\n	2 chalets disponibles en hiver</p>\n', '', '', 'Mashteuiatsh_4_sep_2003_038_1.jpg', '<p>\n	8 unit&eacute;s de chalet</p>\n', '<p>\n	Internet sans fil</p>\n<p>\n	Meubles, vaisselle, ustensiles, batterie de cusine, verres, four micro-ondes, cafeti&egrave;re, th&eacute;i&egrave;re, bouilloire, grille-pain, minimixeur, napperons, fer et planche &agrave; repasser, s&egrave;che-cheveux mural, radio-r&eacute;veil, t&eacute;l&eacute;viseur couleur, radio &agrave; cassette, douche et bain aux villas Bonair, Cypr&egrave;s, Festival, Soleil. Douche pour les autres villas.</p>\n<p>\n	Table &agrave; pique-nique, chaises, balan&ccedil;oires, feu de camp (La plupart avec grillage sur 4 faces, chemin&eacute;e et par &eacute;tincelle. Bois vendu sur place), corde / &eacute;pingles &agrave; linge, gril portatif au charbon et propane (sur demande), place pour stationner.</p>\n', '<br />\n', '<p>\n	Entre 500.00$ et 728.00$ par semaine</p>\n', '<p>\n	8 unit&eacute;s de chalet</p>\n', '<p>\n	Internet sans fil</p>\n<p>\n	Meubles, vaisselle, ustensiles, batterie de cusine, verres, four micro-ondes, cafeti&egrave;re, th&eacute;i&egrave;re, bouilloire, grille-pain, minimixeur, napperons, fer et planche &agrave; repasser, s&egrave;che-cheveux mural, radio-r&eacute;veil, t&eacute;l&eacute;viseur couleur, radio &agrave; cassette, douche et bain aux villas Bonair, Cypr&egrave;s, Festival, Soleil. Douche pour les autres villas.</p>\n<p>\n	Table &agrave; pique-nique, chaises, balan&ccedil;oires, feu de camp (La plupart avec grillage sur 4 faces, chemin&eacute;e et par &eacute;tincelle. Bois vendu sur place), corde / &eacute;pingles &agrave; linge, gril portatif au charbon et propane (sur demande), place pour stationner.</p>\n', '', '<p>\n	Entre 500.00$ et 728.00$ par semaine</p>\n', '', 1, 0, '', 'domaine-philippe', 'domaine-philippe', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, '5', '1', '9', '30'),
(12, 'Mashteuiatsh', 'G0W 2H0', '418-671-0896', '418-671-0896', '', '', 'huguetteboivin1972@icloud.com', 'www.kuei.ca', '', '', '', '', '', '', 0, 'Gîte Massinak', '<p>\n	Directement situ&eacute; sur le bord du Pekuakami, le g&icirc;te Massinak vous offre d&eacute;tente et accueil chaleureux. Massinak signifie, la tortue, qui est un symbole de pers&eacute;v&eacute;rence et de sagesse, elle est la symbolique de la Terre-m&egrave;re m&ecirc;me.&nbsp;</p>\n<p>\n	<span style="line-height: 24px;">La v&eacute;loroute passe juste devant la maison et nous sommes situ&eacute; au coeur des attraits touristiques majeurs de la r&eacute;gion.&nbsp;</span></p>\n', '1928, rue Ouiatchouan', '<p>\n	Directement situ&eacute; sur le bord de la v&eacute;loroute et du lac Saint-Jean. Mus&eacute;e, site Uashassihtsh &agrave; proximit&eacute;. Boutiques et restaurants &agrave; 1 km.</p>\n<p>\n	Mashteuiatsh est au coeur des attraits touristiques majeurs r&eacute;gionaux.</p>\n', '<p>\n	Petit d&eacute;jeuner continental inclus</p>\n<p>\n	Remisage de v&eacute;los, ou de motoneige</p>\n<p>\n	Animal de compagnie accept&eacute;&nbsp;</p>\n', '', 'Gîte Massinak', '', '', '', '', '', '20160711_135427.jpg', '20160711_135427.jpg', '<p>\n	3 unit&eacute;s</p>\n', '<p>\n	Petit d&eacute;jeuner continental inclus</p>\n<p>\n	T&eacute;l&eacute;viseur en salle de s&eacute;jour</p>\n<p>\n	Acc&egrave;s cours arri&egrave;re sur le bord du lac&nbsp;</p>\n<p>\n	Remise pour v&eacute;lo et motoneige</p>\n<p>\n	Parc enfant clotur&eacute;</p>\n', '<p>\n	lit double&nbsp;</p>\n', '<p>\n	Haute saison 85$ &agrave; 95$ ( 1er juin &nbsp;au 30 septembre )</p>\n<p>\n	Basse saison &nbsp;70$ &agrave; 85 $ ( 1er octobre au 31 mai)&nbsp;</p>\n', '', '', '', '', '', 1, 0, '', 'gite-massinak', 'gite-massinak', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, '1', '1', '12', '31');

-- --------------------------------------------------------

--
-- Structure de la table `mod_hebergement_photos`
--

CREATE TABLE IF NOT EXISTS `mod_hebergement_photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `title_en` text NOT NULL,
  `title_fr` text NOT NULL,
  `image` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `mod_hebergement_photos`
--

INSERT INTO `mod_hebergement_photos` (`id`, `parent_id`, `title_en`, `title_fr`, `image`) VALUES
(3, 8, 'Domaine Philippe', 'Domaine Philippe', 'Mashteuiatsh_4_sep_2003_038.jpg'),
(2, 4, '', '', '4.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `mod_hebergement_types`
--

CREATE TABLE IF NOT EXISTS `mod_hebergement_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Contenu de la table `mod_hebergement_types`
--

INSERT INTO `mod_hebergement_types` (`id`, `parent_id`, `type`) VALUES
(5, 3, 0),
(6, 4, 1),
(14, 5, 1),
(10, 7, 1),
(11, 7, 2),
(12, 7, 4),
(16, 8, 2),
(17, 10, 3),
(19, 10, 2),
(21, 12, 0);

-- --------------------------------------------------------

--
-- Structure de la table `mod_hebergement_types_list`
--

CREATE TABLE IF NOT EXISTS `mod_hebergement_types_list` (
  `id` smallint(4) unsigned NOT NULL,
  `title_fr` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `url_fr` varchar(255) NOT NULL,
  `url_en` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contient les types d''hébergement et restauration';

--
-- Contenu de la table `mod_hebergement_types_list`
--

INSERT INTO `mod_hebergement_types_list` (`id`, `title_fr`, `title_en`, `url_fr`, `url_en`) VALUES
(0, 'Auberges', 'Inns', 'auberges', 'inns'),
(1, 'Campings', 'Campgrounds', 'campings', 'campgrounds'),
(2, 'Chalets', 'Cabins', 'chalets', 'cabins'),
(3, 'Campements traditionnels', 'Traditional Camps', 'campements-traditionnels', 'traditional-camps'),
(4, 'Pourvoiries', 'Outfitters', 'pourvoiries', 'outfitters');

-- --------------------------------------------------------

--
-- Structure de la table `mod_links`
--

CREATE TABLE IF NOT EXISTS `mod_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET utf8 NOT NULL,
  `category` int(10) unsigned DEFAULT NULL,
  `title_fr` text CHARACTER SET utf8 NOT NULL,
  `title_en` text CHARACTER SET utf8 NOT NULL,
  `rank` int(10) unsigned NOT NULL,
  `page_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=58 ;

--
-- Contenu de la table `mod_links`
--

INSERT INTO `mod_links` (`id`, `url`, `category`, `title_fr`, `title_en`, `rank`, `page_id`) VALUES
(42, 'http://www.saguenaylacsaintjean.ca', 8, 'Tourisme Saguenay-Lac-Saint-Jean', 'Saguenay-Lac-Saint-Jean Tourism', 6, 23),
(57, 'http://moulindespionniers.com/', 8, 'Le Moulin des pionniers', 'Le Moulin des Pionniers', 1, 23),
(44, 'http://www.mashteuiatsh.ca/', 9, 'Communauté de Mashteuiatsh', 'Mashteuiatsh Community', 3, 23),
(48, 'http://zoosauvage.org/?gclid=COjGseGxt8YCFQkIaQodLYYMqA', 8, 'Zoo Sauvage de Saint-Félicien', 'Zoo Sauvage de Saint-Félicien', 5, 23),
(49, 'http://www.bonjourquebec.com', 10, 'Bonjour Québec', 'Bonjour Québec', 1, 23),
(50, 'www.tourismeautochtone.com', 9, 'Tourisme Autochtone Québec', 'Quebec Aboriginal Tourism', 2, 23),
(51, 'http://www.radio-canada.ca/regions/saguenay-lac/2012/10/22/001-mashteuiatsh-rome-kateri.shtml', 9, 'Canonisation de Katerie Tekakwitha', 'Katerie Tekakwitha''s canonization', 1, 23),
(52, 'http://itineraires.musees.qc.ca/fr/', 11, 'Itinéraires de musées à découvrir', 'Museum routes to explore', 1, 23),
(53, 'http://www.quebecvacances.com/', 12, 'Québec vacances ', 'Québec vacances', 1, 23),
(54, 'https://www.flickr.com/photos/tourismesaglac/sets/72157654930664031/', 8, 'Les 12 travaux des Géants', 'Les 12 travaux des Géants', 4, 23),
(55, 'https://www.youtube.com/watch?v=4Vb7P89P7EM', 8, 'Les 12 travaux des géants - Vidéo', 'Les 12 travaux des Géants - vidéo', 3, 23),
(56, 'http://www.valjalbert.com/fr', 8, 'Val-Jalbert', 'Val-Jalbert', 2, 23);

-- --------------------------------------------------------

--
-- Structure de la table `mod_links_cats`
--

CREATE TABLE IF NOT EXISTS `mod_links_cats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_fr` text CHARACTER SET utf8 NOT NULL,
  `title_en` text CHARACTER SET utf8 NOT NULL,
  `rank` int(10) unsigned NOT NULL,
  `page_id` int(10) unsigned NOT NULL,
  `name_fr` text CHARACTER SET utf8 NOT NULL,
  `name_en` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Contenu de la table `mod_links_cats`
--

INSERT INTO `mod_links_cats` (`id`, `title_fr`, `title_en`, `rank`, `page_id`, `name_fr`, `name_en`) VALUES
(8, 'Attraits touristique du Saguenay-Lac-Saint-Jean', 'Attractions in Saguenay-Lac-Saint-Jean', 4, 23, '', ''),
(9, 'Tourisme autochtone', 'Native Tourism', 3, 23, '', ''),
(10, 'Autres liens utiles', 'Other links', 5, 23, '', ''),
(11, 'Réseau Muséal', 'Museums', 2, 23, '', ''),
(12, 'Société des attractions touristiques du Québec', 'Société des attractions touristiques du Québec', 1, 23, '', '');

-- --------------------------------------------------------

--
-- Structure de la table `mod_restauration`
--

CREATE TABLE IF NOT EXISTS `mod_restauration` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `breakfast` tinyint(1) unsigned NOT NULL,
  `lunch` tinyint(1) unsigned NOT NULL,
  `supper` tinyint(1) unsigned NOT NULL,
  `city` text NOT NULL,
  `postal_code` text NOT NULL,
  `tel` text NOT NULL,
  `cell` text NOT NULL,
  `toll_free` text NOT NULL,
  `fax` text NOT NULL,
  `email` text NOT NULL,
  `website` text NOT NULL,
  `website2` text NOT NULL,
  `google_maps` text NOT NULL,
  `facebook` text NOT NULL,
  `twitter` text NOT NULL,
  `foursquare` text NOT NULL,
  `tripadvisor` text NOT NULL,
  `groups` tinyint(1) unsigned NOT NULL,
  `name_fr` text NOT NULL,
  `description_fr` text NOT NULL,
  `address_fr` text NOT NULL,
  `groups_description_fr` text NOT NULL,
  `name_en` text NOT NULL,
  `description_en` text NOT NULL,
  `address_en` text NOT NULL,
  `groups_description_en` text NOT NULL,
  `logo` text NOT NULL,
  `main_photo` varchar(255) NOT NULL,
  `quality_indicator_fr` text NOT NULL,
  `quality_indicator_en` text NOT NULL,
  `food_type_fr` text NOT NULL,
  `food_type_en` text NOT NULL,
  `number_places_fr` text NOT NULL,
  `number_places_en` text NOT NULL,
  `alcool_allowed` tinyint(1) NOT NULL,
  `fee` tinyint(1) unsigned NOT NULL,
  `flickr_photoset_id` text NOT NULL,
  `gallery_type` tinyint(1) unsigned NOT NULL,
  `flickr_show_amount` smallint(5) unsigned NOT NULL,
  `flickr_user` text NOT NULL,
  `url_fr` text NOT NULL,
  `url_en` text NOT NULL,
  `payment_1` tinyint(1) unsigned NOT NULL,
  `payment_2` tinyint(1) unsigned NOT NULL,
  `payment_3` tinyint(1) unsigned NOT NULL,
  `payment_4` tinyint(1) unsigned NOT NULL,
  `payment_5` tinyint(1) unsigned NOT NULL,
  `payment_6` tinyint(1) unsigned NOT NULL,
  `payment_7` tinyint(1) unsigned NOT NULL,
  `payment_8` tinyint(1) unsigned NOT NULL,
  `season_spring` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `season_summer` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `season_fall` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `season_winter` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `period_start_month` varchar(2) NOT NULL,
  `period_start_day` varchar(2) NOT NULL,
  `period_end_month` varchar(2) NOT NULL,
  `period_end_day` varchar(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `season_spring` (`season_spring`,`season_summer`,`season_fall`,`season_winter`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `mod_restauration`
--

INSERT INTO `mod_restauration` (`id`, `breakfast`, `lunch`, `supper`, `city`, `postal_code`, `tel`, `cell`, `toll_free`, `fax`, `email`, `website`, `website2`, `google_maps`, `facebook`, `twitter`, `foursquare`, `tripadvisor`, `groups`, `name_fr`, `description_fr`, `address_fr`, `groups_description_fr`, `name_en`, `description_en`, `address_en`, `groups_description_en`, `logo`, `main_photo`, `quality_indicator_fr`, `quality_indicator_en`, `food_type_fr`, `food_type_en`, `number_places_fr`, `number_places_en`, `alcool_allowed`, `fee`, `flickr_photoset_id`, `gallery_type`, `flickr_show_amount`, `flickr_user`, `url_fr`, `url_en`, `payment_1`, `payment_2`, `payment_3`, `payment_4`, `payment_5`, `payment_6`, `payment_7`, `payment_8`, `season_spring`, `season_summer`, `season_fall`, `season_winter`, `period_start_month`, `period_start_day`, `period_end_month`, `period_end_day`) VALUES
(2, 1, 1, 0, 'Mashteuiatsh', 'G0W 2H0', '418-275-0479', '', '', '418-275-5892', 'depanneursimon-pierre@cgocable.ca', '', '', '', 'https://www.facebook.com/depanneur.simonpierre?ref=ts&fref=ts#!/depanneur.simonpierre?fref=ts', '', '', '', 1, 'Bistro Les Fins Cafés', '<p>\n	Les Fins Caf&eacute;s offre une gamme impressionnante de caf&eacute;s fins, de viennoiseries et de p&acirc;tisseries.</p>\n<p>\n	Des menus sant&eacute; avec un choix vari&eacute; de soupes ou potages chaque jour vous sont servis.</p>\n<p>\n	Notre aire de restauration au d&eacute;cor contemporain et chaleureux accueille 24 personnes. Des mets pour emporter et un service &agrave; l&#39;auto sont aussi disponibles. Service courtois et rapide.</p>\n', '1443, rue Ouiatchouan', '<p>\n	Petit groupe</p>\n', 'Bistro Les Fins Cafés', '<p>\n	Bistro Les Fins Caf&eacute;s offers an impressive range of gourmet coffees, pastries and cakes.</p>\n<p>\n	Healthy menus with a selection of soups or soups are served daily.</p>\n<p>\n	Our food court with contemporary decor and welcome 24 persons. Takeout and drive-through service are also available. Fast and courteous service.</p>\n', '1443, Ouiatchouan street', '<p>\n	Small groups</p>\n', 'logo_3.jpg', 'BistroFinsCafes_1.bmp', '<br />\n', '', '<ul>\n	<li>\n		D&eacute;jeuner</li>\n	<li>\n		Sandwich</li>\n	<li>\n		Salades</li>\n	<li>\n		Viennoiserie</li>\n	<li>\n		Potages</li>\n	<li>\n		Caf&eacute;s fins&nbsp;</li>\n</ul>\n<p>\n	Service &agrave; l&rsquo;auto, pr&eacute;paration de plateau de muffin et viennoiserie, caf&eacute; en carafe thermos pour apporter.</p>\n', '<ul>\n	<li>\n		lunch</li>\n	<li>\n		sandwich</li>\n	<li>\n		salads</li>\n	<li>\n		pastries</li>\n	<li>\n		soups</li>\n	<li>\n		gourmet coffees</li>\n	<li>\n		Takeout</li>\n</ul>\n', '24', '24', 0, 1, '', 2, 0, '', 'bistro-les-fins-cafes', 'bistro-les-fins-cafes', 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, '1', '1', '12', '31'),
(3, 1, 1, 1, 'Mashteuiatsh', 'G0W 2H0', '418-671-7755', '', '', '', 'raf-inne.restaurant@live.fr', '', '', 'http://maps.google.ca/maps?q=Camping+Plage+Robertson,+Mashteuiatsh,+QC&hl=en&sll=48.574212,-72.27769&sspn=0.092794,0.219555&oq=Camping+Plage+Rob&hq=Camping+Plage+Robertson,+Mashteuiatsh,+QC&t=m&z=15', '', '', '', '', 1, 'Le Raf-inné Restaurant', '<p>\n	&Agrave; l&rsquo;int&eacute;rieur du Camping Plage Robertson, le Raf&rsquo;inn&eacute; offre une cuisine diversifi&eacute;e avec des menus du jour au midi et une table d&rsquo;h&ocirc;te en soir&eacute;e, sans oublier les menus rapides estivale.</p>\n<p>\n	Chaque assiette est une surprise pour le palais. Une vue imprenable sur le lac, vous pourrez d&eacute;guster vos mets sur une table &agrave; pique-nique ou &agrave; l&rsquo;int&eacute;rieur de la petite salle am&eacute;nag&eacute;e &agrave; l&rsquo;arri&egrave;re du comptoir de service. Un service de traiteur est offert pour toute occasion.&nbsp;</p>\n', '2202, rue Ouiatchouan', '<p>\n	Oui</p>\n', 'Le Raf-inné Restaurant', '<p>\n	Inside the Camping Plage Robertson, Le Raf&#39;inn&eacute; offers a diverse cuisine with daily specials at lunch and a table d&#39;hote every evening, not to mention the quick summer menus.</p>\n<p>\n	Each dish is a surprise. With a breathtaking views of the lake, you can enjoy your meals on a picnic table or inside the restaurant. A catering service is available for any occasion.</p>\n', '2202, Ouiatchouan street', '<p>\n	Oui</p>\n', '', 'rafik2.jpg', '<p>\n	Guide du routard</p>\n', '<p>\n	Guide du routard</p>\n', '<p>\n	Rapide, menus r&eacute;gionaux et cuisine du monde</p>\n', '<p>\n	Fast-Food, regional menus and world cuisine</p>\n', '36 places intérieures 50 places extérieures, table de pique-nique ', '36 places intérieures 50 places extérieures, table de pique-nique ', 0, 1, '', 1, 0, '', 'le-raf-inne-restaurant', 'le-raf-inne-restaurant', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, '5', '1', '9', '30'),
(4, 1, 1, 1, 'Mashteuiatsh', 'G0W 2H0', '418-275-1919', '', '', '', '', '', '', 'http://maps.google.ca/maps?q=Resto+du+Lac+Mashteuiatsh&hl=en&sll=48.570474,-72.240171&sspn=0.0232,0.054889&hq=Resto+du+Lac&hnear=Mashteuiatsh,+Le+Domaine-du-Roy+Regional+County+Municipality,+Quebec&t=m&z=14', '', '', 'https://foursquare.com/v/restaurant-du-lac/4fe0a10ee4b06cf400913ad7', '', 0, 'Resto du Lac', '<p>\n	Seul restaurant situ&eacute; sur les bords du lac avec terrasse vitr&eacute;e. Service rapide et courtois ainsi que mets pour emporter.</p>\n<p>\n	Le resto du lac vous accueil &agrave; l&rsquo;ann&eacute;e avec ses mets rapides et son menu du jour servi de septembre &agrave; juin et fait rel&acirc;che en p&eacute;riode estivale pour laisser place au menu &agrave; la carte.</p>\n', '1544, rue Ouiatchouan ', '', 'Resto du Lac', '<p>\n	Only restaurant with terrace on the lake. Prompt and courteous service and takeout.</p>\n<p>\n	The restaurant welcomes you year round with its fast food and daily specials served from September to June and is taking a break during the summer to make way for a la carte menu.</p>\n', '1544, Ouiatchouan street ', '', 'logo_2.jpg', 'DSC04864_1.jpg', '<br />\n', '', '<p>\n	Mets rapides, menu du jour, D&icirc;ner en hiver et d&icirc;ner, souper en &eacute;t&eacute;.</p>\n<p>\n	Cuisine mets rapide servi sur place ou pour emporter.</p>\n', '<p>\n	Fast food, daily specials, lunch and dinner in winter, summer supper.</p>\n<p>\n	Food served at fast food or takeout.</p>\n', '40 places', '40 places', 0, 1, '', 1, 0, '', 'resto-du-lac', 'resto-du-lac', 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, '1', '1', '12', '31'),
(5, 1, 1, 1, 'Mashteuiatsh', 'G0W 2H0', '418-275-4906', '', '', '', 'quirion.l@hotmail.com', '', '', 'https://maps.google.ca/maps?q=49,+rue+Ulysse,+Mashteuiasth&hl=en&ie=UTF8&sll=53.796105,-68.44248&sspn=37.035136,93.076172&hnear=Rue+Ulysse,+Saint-F%C3%A9licien,+Qu%C3%A9bec+G8K+1T6&t=m&z=16', '', '', '', '', 1, 'Bistro Vélo', '<p>\n	Sur le parcours de la v&eacute;loroute des Bleuets, faites un arr&ecirc;t au sympathique Bistro-V&eacute;lo, le seul et unique petit caf&eacute; situ&eacute; directement sur les abords de la piste cyclable. Venez, vous rafra&icirc;chir et m&ecirc;me faire une saucette dans le lac Saint-Jean sur les plages du Domaine Ab&eacute;nakis.</p>\n', '49, rue Ulysse, Domaine Abénakis', '<br />\n', 'Bistro Vélo', '<p>\n	The only small caf&eacute; located directly on the edge of the V&eacute;loroute des Bleuets bike path. Come and refresh yourself and even take a swim a in the Lac Saint-Jean.</p>\n', '49, Ulysse Street, Domaine Abénakis', '', 'bistrovelo.jpg', 'bistrovelo_1_1.jpg', '<p>\n	<img alt="" src="/img/ckfinder/images/MENU-VERSO-BISTROVELO.JPG" style="width: 1010px; height: 782px;" /><img alt="" src="/img/ckfinder/images/MENU-RECTO-BISTRO-VELO.JPG" style="width: 1010px; height: 782px;" /></p>\n', '', '<p>\n	Met rapide et r&eacute;gional</p>\n<p>\n	Mets pour emporter</p>\n<p>\n	Service de livraison&nbsp;</p>\n', '', '65 places + 30 places sur tables de pique-nique ', '65 places + 30 places (outdoor tables) ', 0, 1, '', 1, 0, '3', 'bistro-velo', 'bistro-velo', 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, '5', '1', '10', '15');

-- --------------------------------------------------------

--
-- Structure de la table `mod_restauration_photos`
--

CREATE TABLE IF NOT EXISTS `mod_restauration_photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `title_en` text NOT NULL,
  `title_fr` text NOT NULL,
  `image` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `mod_restauration_photos`
--

INSERT INTO `mod_restauration_photos` (`id`, `parent_id`, `title_en`, `title_fr`, `image`) VALUES
(2, 2, '', '', 'BistroFinsCafes.bmp');

-- --------------------------------------------------------

--
-- Structure de la table `my_stay`
--

CREATE TABLE IF NOT EXISTS `my_stay` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(20) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` tinyint(1) unsigned NOT NULL COMMENT '1=activite, 2=hebergement, 3=restaurant',
  `type_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contient les items ajoutés par les utilisateurs à leur séjou' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `options`
--

CREATE TABLE IF NOT EXISTS `options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_name_fr` text NOT NULL,
  `meta_keywords_fr` text NOT NULL,
  `meta_description_fr` text NOT NULL,
  `site_name_en` text NOT NULL,
  `meta_keywords_en` text NOT NULL,
  `meta_description_en` text NOT NULL,
  `youtube_user` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `options`
--

INSERT INTO `options` (`id`, `site_name_fr`, `meta_keywords_fr`, `meta_description_fr`, `site_name_en`, `meta_keywords_en`, `meta_description_en`, `youtube_user`) VALUES
(1, 'Kuei', '', '', 'Kuei', '', '', 'kueica');

-- --------------------------------------------------------

--
-- Structure de la table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title_fr` text NOT NULL,
  `name_fr` text NOT NULL,
  `content_fr` text,
  `title_en` text NOT NULL,
  `name_en` text NOT NULL,
  `content_en` text,
  `module` text NOT NULL,
  `linkable` tinyint(1) unsigned NOT NULL,
  `placement` tinyint(1) unsigned NOT NULL,
  `admin_only` tinyint(1) unsigned NOT NULL,
  `alias` text NOT NULL,
  `changeable` tinyint(1) unsigned NOT NULL,
  `allow_subpages` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- Contenu de la table `pages`
--

INSERT INTO `pages` (`id`, `title_fr`, `name_fr`, `content_fr`, `title_en`, `name_en`, `content_en`, `module`, `linkable`, `placement`, `admin_only`, `alias`, `changeable`, `allow_subpages`) VALUES
(3, 'Hébergement', 'hebergement', NULL, 'Accommodation and food', 'accommodation', NULL, 'hebergement', 1, 1, 0, 'hebergement', 0, 0),
(4, 'Photos &amp; Vidéos', 'photos-videos', NULL, 'Photos &amp; Videos', 'photos-videos', NULL, 'custom', 1, 1, 1, 'photos-videos', 0, 0),
(5, 'Nous joindre', 'nous-joindre', NULL, 'Contact us', 'contact-us', NULL, 'content', 1, 1, 0, 'nous-joindre', 0, 0),
(6, 'À propos des Pekuakamiulnuatsh', 'a-propos-des-pekuakamiulnuatsh', NULL, 'About Pekuakamiulnatsh', 'about-pekuakamiulnatsh', NULL, 'content', 1, 1, 0, 'a-propos', 0, 0),
(7, 'Restauration', 'restauration', NULL, 'Restaurants', 'restaurants', NULL, 'restauration', 1, 1, 0, 'restauration', 0, 0),
(8, 'Accueil', 'accueil', NULL, 'Home', 'home', NULL, 'custom', 1, 1, 1, 'accueil', 0, 0),
(46, 'Hébergement et restauration', 'hebergement-et-restauration', NULL, 'Lodging and restaurants', 'lodging-and-restaurants', NULL, 'custom', 1, 1, 1, 'hebergement-et-restauration', 0, 0),
(47, 'Filtre d&#039;hébergements', 'filtre-hebergements', NULL, 'Lodging Filter', 'lodging-filter', NULL, 'custom', 1, 1, 1, 'lodging-filter', 0, 0),
(48, 'Page introuvable', '404', NULL, 'Page not found', '404', NULL, 'custom', 0, 1, 1, '404', 0, 0),
(49, 'Mon Séjour', 'mon-sejour', NULL, 'My Stay', 'my-stay', NULL, 'custom', 1, 1, 1, 'mon-sejour', 0, 0),
(50, 'Groupes et réservations', 'groupes-et-reservations', NULL, 'Groups and reservations', 'groups-and-reservations', NULL, 'content', 1, 1, 0, 'forfaits-informations', 0, 0),
(23, 'Liens utiles', 'liens-utiles', NULL, 'Useful links', 'useful-links', NULL, 'links', 1, 1, 0, 'liens-utiles', 0, 0),
(43, 'Activités et attraits', 'activites-et-attraits', NULL, 'Activities and attractions', 'activities-and-attractions', NULL, 'attraits', 1, 1, 0, 'activites-et-attraits', 0, 0),
(24, 'Documents téléchargeables', 'documents-telechargeables', NULL, 'Downloadable documents', 'downloadable-documents', NULL, 'content', 1, 1, 0, 'documents-telechargeables', 0, 0),
(45, 'Échangez avec nous', 'echangez-avec-nous', NULL, 'Share with us', 'share-with-us', NULL, 'content', 1, 1, 0, 'echangez-avec-nous', 0, 0),
(32, 'Contacts', 'contacts', NULL, 'Contacts', 'contacts', NULL, 'contacts', 0, 2, 0, 'contacts', 0, 0),
(33, 'Documents', 'documents', NULL, 'Documents', 'documents', NULL, 'documents', 1, 2, 0, 'documents', 0, 0),
(44, 'Filtre d&#039;activités', 'filtre-dactivites', NULL, 'Activity filter', 'activity-filter', NULL, 'custom', 1, 1, 1, 'activity-filter', 0, 0),
(39, 'Mashteuiatsh sur la carte', 'mashteuiatsh-sur-la-carte', NULL, 'Mashteuiatsh on the map', 'mashteuiatsh-on-the-map', NULL, 'content', 1, 1, 0, 'mashteuiatsh-sur-la-carte', 1, 0),
(40, 'Itinéraire à partir de Québec', 'itineraire-a-partir-de-quebec', NULL, 'Direction from Quebec city', 'direction-from-quebec-city', NULL, 'content', 1, 1, 0, 'itineraire-quebec', 1, 0),
(41, 'Itinéraire à partir de Montréal', 'itineraire-a-partir-de-montreal', NULL, 'Direction from Montreal', 'direction-from-montreal', NULL, 'content', 1, 1, 0, 'itineraire-montreal', 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `structure`
--

CREATE TABLE IF NOT EXISTS `structure` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `rank` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=52 ;

--
-- Contenu de la table `structure`
--

INSERT INTO `structure` (`id`, `parent_id`, `type`, `item_id`, `rank`) VALUES
(3, 0, 1, 3, 4),
(4, 0, 1, 4, 7),
(5, 0, 1, 5, 12),
(6, 0, 1, 6, 9),
(7, 0, 1, 7, 3),
(8, 0, 1, 8, 1),
(47, 0, 1, 46, 5),
(49, 0, 1, 48, 17),
(48, 0, 1, 47, 16),
(50, 0, 1, 49, 18),
(51, 0, 1, 50, 19),
(23, 0, 1, 23, 11),
(44, 0, 1, 43, 2),
(24, 0, 1, 24, 8),
(46, 0, 1, 45, 10),
(32, 0, 1, 32, 13),
(33, 0, 1, 33, 14),
(45, 0, 1, 44, 15),
(39, 0, 2, 1, 6),
(40, 39, 1, 39, 1),
(41, 39, 1, 40, 2),
(42, 39, 1, 41, 3);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
