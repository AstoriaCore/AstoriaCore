
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
