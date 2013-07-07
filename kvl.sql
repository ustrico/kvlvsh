# --------------------------------------------------------
# Host:                         127.0.0.1
# Database:                     kvl
# Server version:               5.1.49-community-log
# Server OS:                    Win32
# HeidiSQL version:             5.0.0.3272
# Date/time:                    2013-07-04 09:01:06
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
# Dumping database structure for kvl
CREATE DATABASE IF NOT EXISTS `kvl` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `kvl`;


# Dumping structure for table kvl.Chunk
CREATE TABLE IF NOT EXISTS `Chunk` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Body` text,
  `Link` varchar(255) NOT NULL DEFAULT '/',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

# Dumping data for table kvl.Chunk: 3 rows
DELETE FROM `Chunk`;
/*!40000 ALTER TABLE `Chunk` DISABLE KEYS */;
INSERT INTO `Chunk` (`ID`, `Name`, `Body`, `Link`) VALUES (1, 'Meta', '<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7, IE=edge" />\r\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\r\n<meta name="SKYPE_TOOLBAR" content="SKYPE_TOOLBAR_PARSER_COMPATIBLE" />\r\n<!--[if IE]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->\r\n<meta name="keywords" content="" />\r\n<meta name="description" content="" />\r\n<meta name=”viewport” content=”initial=scale=1.0” />\r\n<meta name=”viewport” content=”user=scalable=no” />\r\n<meta name=”viewport” content=”target=densitydpi=device=dpi” />\r\n<meta name="viewport" content="width=device-width" />\r\n<meta name="MobileOptimized" content="width" />\r\n<meta name="HandheldFriendly" content="true" />', '/'), (2, 'Copyright', '© 2013 Copyright Агенство маркетинга и рекламы «Кавалери»', '/'), (3, 'Адрес в подвале', 'Саратов, <br> \r\n<nobr>ул. Чернышевского, 88, офис 2</nobr> <br>\r\n<nobr>+7 (8452) 202-205</nobr> <br>\r\n<a href="mailto:vishivka@kvl.ru">vishivka@kvl.ru</a>', '/');
/*!40000 ALTER TABLE `Chunk` ENABLE KEYS */;


# Dumping structure for table kvl.Menu
CREATE TABLE IF NOT EXISTS `Menu` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Text` varchar(255) DEFAULT NULL,
  `Text2` varchar(255) DEFAULT NULL,
  `Text3` varchar(255) DEFAULT NULL,
  `Text4` varchar(255) DEFAULT NULL,
  `Link` varchar(255) NOT NULL DEFAULT '/',
  `Image` varchar(255) DEFAULT NULL,
  `Group` varchar(255) DEFAULT NULL,
  `NewLine` tinyint(1) unsigned DEFAULT '0',
  `Priority` int(10) unsigned DEFAULT '0',
  `Publish` tinyint(1) unsigned DEFAULT '1',
  `Type` enum('Main','Footer') DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

# Dumping data for table kvl.Menu: 13 rows
DELETE FROM `Menu`;
/*!40000 ALTER TABLE `Menu` DISABLE KEYS */;
INSERT INTO `Menu` (`ID`, `Text`, `Text2`, `Text3`, `Text4`, `Link`, `Image`, `Group`, `NewLine`, `Priority`, `Publish`, `Type`) VALUES (1, 'Вышивка', '', 'на одежде', '', '/vyshivka/', '/img/mainmenu-01.png', NULL, 0, 1, 1, 'Main'), (2, 'Пошив', '', 'спецодежды, промоформы', '', '/poshiv/', '/img/mainmenu-02.png', NULL, 0, 2, 1, 'Main'), (3, '', 'Художественная', 'вышивка', 'картины, открытки', '/art/', '/img/mainmenu-03.png', NULL, 0, 3, 1, 'Main'), (4, NULL, 'Сувенирная', 'продукция', 'промо-материалы', '/suvenir/', '/img/mainmenu-04.png', NULL, 0, 4, 1, 'Main'), (5, 'О компании', NULL, NULL, NULL, '/about/', NULL, 'Group1', 0, 1, 1, 'Footer'), (6, 'Новости', NULL, NULL, NULL, '/news/', NULL, 'Group1', 0, 2, 1, 'Footer'), (7, 'Оформить заказ', NULL, NULL, NULL, 'mailto:vishivka@kvl.ru', NULL, 'Group1', 1, 3, 1, 'Footer'), (8, 'Вышивка на одежде', NULL, NULL, NULL, '/vyshivka/', NULL, 'Group2', 0, 1, 1, 'Footer'), (9, 'Пошив спецодежды', NULL, NULL, NULL, '/poshiv/', NULL, 'Group2', 0, 2, 1, 'Footer'), (10, 'Художественная вышивка', NULL, NULL, NULL, '/art/', NULL, 'Group3', 0, 1, 1, 'Footer'), (11, 'Картины, открытки', NULL, NULL, NULL, '/art/', NULL, 'Group3', 0, 2, 1, 'Footer'), (12, 'Сувенирная продукция', NULL, NULL, NULL, '/suvenir/', NULL, 'Group3', 0, 3, 1, 'Footer'), (13, 'Промо-материалы', NULL, NULL, NULL, '/suvenir/', NULL, 'Group3', 0, 4, 1, 'Footer');
/*!40000 ALTER TABLE `Menu` ENABLE KEYS */;


# Dumping structure for table kvl.Page
CREATE TABLE IF NOT EXISTS `Page` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `SectionID` int(10) unsigned DEFAULT '0',
  `Name` varchar(255) DEFAULT NULL,
  `Body` text,
  `Link` varchar(255) NOT NULL DEFAULT '/',
  `Priority` int(10) unsigned DEFAULT '0',
  `Publish` tinyint(1) unsigned DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

# Dumping data for table kvl.Page: 1 rows
DELETE FROM `Page`;
/*!40000 ALTER TABLE `Page` DISABLE KEYS */;
INSERT INTO `Page` (`ID`, `SectionID`, `Name`, `Body`, `Link`, `Priority`, `Publish`) VALUES (1, 0, 'Вышивка на одежде', '<br>\r\n<p>\r\nПервое, что приходит на ум при слове «вышивка» — это вышивка крестом, вышивка бисером или вышивка картин. Все эти виды вышивок в 21 веке являются повсеместно распространенными и очень популярными среди жителей, пожалуй, всех без исключения стран. Научиться вышивке может любой человек и в любом возрасте. Кроме того занятие вышивкой благоприятно влияет на нервную систему, развивает терпеливость и усидчивость.\r\n</p>\r\n<p>\r\nСейчас занятие вышивкой принимает все более рекламный характер. Востребованной становится вышивка на одежде, создание шевронов и нашивок для отдельных организаций.\r\n</p>\r\n<p>\r\nВ современной рекламе существует большое число различных способов нанесения логотипа на одежду. Первый из этих методов — шелкография. Данная технология трафаретной печати известна очень давно и является самой распространенной среди всех видов нанесения. Сублимационная печать применяется и для нанесения различных изображений на ткань, и в отличие от других способов она позволяет наносить на ткань фотографии высокого качества.\r\n</p>\r\n<p>\r\nНо все эти методы имеют свои существенные недостатки. С целью избавления заказчиков и производителей от всех видов неудобств сейчас на рынке и появился новый способ нанесения — машинная вышивка.\r\n</p>\r\n<div class="note">\r\nТехнология машинной вышивки имеет ряд неоспоримых преимуществ перед своими конкурентами:\r\n<ol>\r\n<li>\r\nвысокая устойчивость окраски ниток, позволяющая использовать вашу одежду в любых    \r\n    погодных условиях и нестандартных ситуациях,\r\n</li><li>объемная фактура, позволяющая сделать рисунок или текст гораздо интереснее и \r\n    привлекательнее в глазах потенциальных потребителей,\r\n</li><li>долговечность, позволяющая сэкономить на постоянном дорогостоящем обновлении \r\n    старых нанесений,\r\n</li><li>дорогой и эффектный вид, способный создать правильный имидж вашей компании на  \r\n    рынке.\r\n</li></ol>\r\n</div>\r\n<p>\r\nНаша швейная фабрика осуществляет производство вышивки на заказ с помощью современного промышленного оборудования Tajima TFMX японского производства. Промышленное оборудование дает нам возможность достичь высокого качества в короткие сроки исполнения с низкой стоимостью товара. Мы вышиваем как на готовых изделиях (футболки, бейсболки, полотенца, текстиль), так и на крое. Мы вышиваем на всем на чем можно вышить — трикотаж, стабильные ткани, плащевка, нетканый материал, кожа, замша, кожзам, шифон, органза, махровая ткань и т.д. В перечень наших услуг входит:\r\n</p>\r\n<p>\r\n— Нанесение шеврона с логотипом компании (пришивные и на самоклеющейся основе)\r\n<br>\r\n— Вышивка на спецодежде\r\n<br>\r\n— Вышивка на головных уборах\r\n<br>\r\n— Геральдическая вышивка\r\n<br>\r\n— 3D-вышивка\r\n</p>', '/', 0, 1), (2, 0, 'О компании', '<br>\r\n<p>\r\nСаратов, <br> \r\n<nobr>ул. Чернышевского, 88, офис 2</nobr> <br>\r\n<nobr>+7 (8452) 202-205</nobr> <br>\r\n<a href="mailto:vishivka@kvl.ru">vishivka@kvl.ru</a>\r\n</p>', 'about', 0, 1);
/*!40000 ALTER TABLE `Page` ENABLE KEYS */;


# Dumping structure for table kvl.Route
CREATE TABLE IF NOT EXISTS `Route` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Link` varchar(255) DEFAULT NULL,
  `Route` varchar(255) NOT NULL DEFAULT '/',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

# Dumping data for table kvl.Route: 1 rows
DELETE FROM `Route`;
/*!40000 ALTER TABLE `Route` DISABLE KEYS */;
INSERT INTO `Route` (`ID`, `Link`, `Route`) VALUES (1, 'art', 'maincontroller/mainmenu'), (2, 'about', 'maincontroller/page/2');
/*!40000 ALTER TABLE `Route` ENABLE KEYS */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
