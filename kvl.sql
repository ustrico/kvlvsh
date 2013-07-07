-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.1.40-community - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL version:             7.0.0.4053
-- Date/time:                    2013-07-03 07:55:36
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Dumping database structure for kvl
CREATE DATABASE IF NOT EXISTS `kvl` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `kvl`;


-- Dumping structure for table kvl.Chunk
CREATE TABLE IF NOT EXISTS `Chunk` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Body` text,
  `Link` varchar(255) NOT NULL DEFAULT '/',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table kvl.Chunk: 1 rows
/*!40000 ALTER TABLE `Chunk` DISABLE KEYS */;
INSERT IGNORE INTO `Chunk` (`ID`, `Name`, `Body`, `Link`) VALUES
	(1, 'Meta', '<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7, IE=edge" />\r\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\r\n<meta name="SKYPE_TOOLBAR" content="SKYPE_TOOLBAR_PARSER_COMPATIBLE" />\r\n<!--[if IE]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->\r\n<meta name="keywords" content="" />\r\n<meta name="description" content="" />\r\n<meta name=”viewport” content=”initial=scale=1.0” />\r\n<meta name=”viewport” content=”user=scalable=no” />\r\n<meta name=”viewport” content=”target=densitydpi=device=dpi” />\r\n<meta name="viewport" content="width=device-width" />\r\n<meta name="MobileOptimized" content="width" />\r\n<meta name="HandheldFriendly" content="true" />', '/');
/*!40000 ALTER TABLE `Chunk` ENABLE KEYS */;


-- Dumping structure for table kvl.Menu
CREATE TABLE IF NOT EXISTS `Menu` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Text` varchar(255) DEFAULT NULL,
  `Text2` varchar(255) DEFAULT NULL,
  `Text3` varchar(255) DEFAULT NULL,
  `Text4` varchar(255) DEFAULT NULL,
  `Link` varchar(255) NOT NULL DEFAULT '/',
  `Image` varchar(255) DEFAULT NULL,
  `Style` varchar(255) DEFAULT NULL,
  `Priority` int(10) unsigned DEFAULT '0',
  `Publish` tinyint(1) unsigned DEFAULT '1',
  `Type` enum('Main','Footer') DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table kvl.Menu: 4 rows
/*!40000 ALTER TABLE `Menu` DISABLE KEYS */;
INSERT IGNORE INTO `Menu` (`ID`, `Text`, `Text2`, `Text3`, `Text4`, `Link`, `Image`, `Style`, `Priority`, `Publish`, `Type`) VALUES
	(1, 'Вышивка', '', 'на одежде', '', '/vyshivka/', '/img/mainmenu-01.png', 'a:4:{i:0;i:0;i:1;i:0;i:2;s:0:"";i:3;i:95;}', 1, 1, 'Main'),
	(2, 'Пошив', '', 'спецодежды, промоформы', '', '/poshiv/', '/img/mainmenu-02.png', 'a:4:{i:0;i:0;i:1;i:0;i:2;s:3:"30%";i:3;i:60;}', 2, 1, 'Main'),
	(3, '', 'Художественная', 'вышивка', 'картины, открытки', '/art/', '/img/mainmenu-03.png', 'a:4:{i:0;i:0;i:1;i:0;i:2;s:0:"";i:3;i:45;}', 3, 1, 'Main'),
	(4, NULL, 'Сувенирная', 'продукция', 'промо-материалы', '/suvenir/', '/img/mainmenu-04.png', 'a:4:{i:0;i:0;i:1;i:0;i:2;s:3:"18%";i:3;i:60;}', 4, 1, 'Main');
/*!40000 ALTER TABLE `Menu` ENABLE KEYS */;


-- Dumping structure for table kvl.Page
CREATE TABLE IF NOT EXISTS `Page` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `SectionID` int(10) unsigned DEFAULT '0',
  `Name` varchar(255) DEFAULT NULL,
  `Body` text,
  `Link` varchar(255) NOT NULL DEFAULT '/',
  `Priority` int(10) unsigned DEFAULT '0',
  `Publish` tinyint(1) unsigned DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table kvl.Page: 1 rows
/*!40000 ALTER TABLE `Page` DISABLE KEYS */;
INSERT IGNORE INTO `Page` (`ID`, `SectionID`, `Name`, `Body`, `Link`, `Priority`, `Publish`) VALUES
	(1, 0, 'Вышивка на одежде', '<br>\r\n<p>\r\nПервое, что приходит на ум при слове «вышивка» — это вышивка крестом, вышивка бисером или вышивка картин. Все эти виды вышивок в 21 веке являются повсеместно распространенными и очень популярными среди жителей, пожалуй, всех без исключения стран. Научиться вышивке может любой человек и в любом возрасте. Кроме того занятие вышивкой благоприятно влияет на нервную систему, развивает терпеливость и усидчивость.\r\n</p>\r\n<p>\r\nСейчас занятие вышивкой принимает все более рекламный характер. Востребованной становится вышивка на одежде, создание шевронов и нашивок для отдельных организаций.\r\n</p>\r\n<p>\r\nВ современной рекламе существует большое число различных способов нанесения логотипа на одежду. Первый из этих методов — шелкография. Данная технология трафаретной печати известна очень давно и является самой распространенной среди всех видов нанесения. Сублимационная печать применяется и для нанесения различных изображений на ткань, и в отличие от других способов она позволяет наносить на ткань фотографии высокого качества.\r\n</p>\r\n<p>\r\nНо все эти методы имеют свои существенные недостатки. С целью избавления заказчиков и производителей от всех видов неудобств сейчас на рынке и появился новый способ нанесения — машинная вышивка.\r\n</p>\r\n<div class="note">\r\nТехнология машинной вышивки имеет ряд неоспоримых преимуществ перед своими конкурентами:\r\n<ol>\r\n<li>\r\nвысокая устойчивость окраски ниток, позволяющая использовать вашу одежду в любых    \r\n    погодных условиях и нестандартных ситуациях,\r\n</li><li>объемная фактура, позволяющая сделать рисунок или текст гораздо интереснее и \r\n    привлекательнее в глазах потенциальных потребителей,\r\n</li><li>долговечность, позволяющая сэкономить на постоянном дорогостоящем обновлении \r\n    старых нанесений,\r\n</li><li>дорогой и эффектный вид, способный создать правильный имидж вашей компании на  \r\n    рынке.\r\n</li></ol>\r\n</div>\r\n<p>\r\nНаша швейная фабрика осуществляет производство вышивки на заказ с помощью современного промышленного оборудования Tajima TFMX японского производства. Промышленное оборудование дает нам возможность достичь высокого качества в короткие сроки исполнения с низкой стоимостью товара. Мы вышиваем как на готовых изделиях (футболки, бейсболки, полотенца, текстиль), так и на крое. Мы вышиваем на всем на чем можно вышить — трикотаж, стабильные ткани, плащевка, нетканый материал, кожа, замша, кожзам, шифон, органза, махровая ткань и т.д. В перечень наших услуг входит:\r\n</p>\r\n<p>\r\n— Нанесение шеврона с логотипом компании (пришивные и на самоклеющейся основе)\r\n<br>\r\n— Вышивка на спецодежде\r\n<br>\r\n— Вышивка на головных уборах\r\n<br>\r\n— Геральдическая вышивка\r\n<br>\r\n— 3D-вышивка\r\n</p>', '/', 0, 1);
/*!40000 ALTER TABLE `Page` ENABLE KEYS */;
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
