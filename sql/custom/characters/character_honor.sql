-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server Version:               5.7.31-log - MySQL Community Server (GPL)
-- Server Betriebssystem:        Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Exportiere Datenbank Struktur für characters
CREATE DATABASE IF NOT EXISTS `characters` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `characters`;

-- Exportiere Struktur von Tabelle characters.character_honor
DROP TABLE IF EXISTS `character_honor`;
CREATE TABLE IF NOT EXISTS `character_honor` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `kills_today` int(10) unsigned NOT NULL DEFAULT '0',
  `kills_yesterday` int(10) unsigned NOT NULL DEFAULT '0',
  `kills_this_week` int(10) unsigned NOT NULL DEFAULT '0',
  `kills_last_week` int(10) unsigned NOT NULL DEFAULT '0',
  `kills_lifetime` int(10) unsigned NOT NULL DEFAULT '0',
  `honor_today` int(10) unsigned NOT NULL DEFAULT '0',
  `honor_yesterday` int(10) unsigned NOT NULL DEFAULT '0',
  `honor_this_week` int(10) unsigned NOT NULL DEFAULT '0',
  `honor_last_week` int(10) unsigned NOT NULL DEFAULT '0',
  `honor_lifetime` int(10) unsigned NOT NULL DEFAULT '0',
  `prestige` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
