SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for character_xp_rate
-- ----------------------------
DROP TABLE IF EXISTS `character_xp_rate`;
CREATE TABLE `character_xp_rate` (
  `guid` int(10) unsigned NOT NULL,
  `xp_rate` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player XP Rate System';
