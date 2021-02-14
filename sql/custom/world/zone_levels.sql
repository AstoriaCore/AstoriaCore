-- ----------------------------
-- Table structure for zone_levels
-- ----------------------------
DROP TABLE IF EXISTS `zone_levels`;
CREATE TABLE `zone_levels`  (
  `zone` int(11) UNSIGNED NOT NULL,
  `AreaName_0` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `level` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`zone`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zone_levels
-- ----------------------------
INSERT INTO `zone_levels` VALUES (1, 'DunMorogh', 10);
INSERT INTO `zone_levels` VALUES (3, 'Badlands', 48);
INSERT INTO `zone_levels` VALUES (4, 'BlastedLands', 60);
INSERT INTO `zone_levels` VALUES (8, 'SwampOfSorrows', 54);
INSERT INTO `zone_levels` VALUES (10, 'Duskwood', 25);
INSERT INTO `zone_levels` VALUES (11, 'Wetlands', 25);
INSERT INTO `zone_levels` VALUES (12, 'Elwynn', 10);
INSERT INTO `zone_levels` VALUES (14, 'Durotar', 10);
INSERT INTO `zone_levels` VALUES (15, 'Dustwallow', 40);
INSERT INTO `zone_levels` VALUES (16, 'Aszhara', 20);
INSERT INTO `zone_levels` VALUES (17, 'Barrens', 20);
INSERT INTO `zone_levels` VALUES (28, 'WesternPlaguelands', 40);
INSERT INTO `zone_levels` VALUES (33, 'StranglethornJungle', 30);
INSERT INTO `zone_levels` VALUES (38, 'LochModan', 20);
INSERT INTO `zone_levels` VALUES (40, 'Westfall', 15);
INSERT INTO `zone_levels` VALUES (41, 'DeadwindPass', 56);
INSERT INTO `zone_levels` VALUES (44, 'Redridge', 20);
INSERT INTO `zone_levels` VALUES (45, 'Arathi', 30);
INSERT INTO `zone_levels` VALUES (46, 'BurningSteppes', 52);
INSERT INTO `zone_levels` VALUES (47, 'Hinterlands', 35);
INSERT INTO `zone_levels` VALUES (51, 'SearingGorge', 51);
INSERT INTO `zone_levels` VALUES (65, 'Dragonblight', 75);
INSERT INTO `zone_levels` VALUES (66, 'ZulDrak', 76);
INSERT INTO `zone_levels` VALUES (67, 'TheStormPeaks', 80);
INSERT INTO `zone_levels` VALUES (85, 'Tirisfal', 10);
INSERT INTO `zone_levels` VALUES (130, 'Silverpine', 20);
INSERT INTO `zone_levels` VALUES (139, 'EasternPlaguelands', 45);
INSERT INTO `zone_levels` VALUES (141, 'Teldrassil', 10);
INSERT INTO `zone_levels` VALUES (148, 'Darkshore', 20);
INSERT INTO `zone_levels` VALUES (210, 'IcecrownGlacier', 80);
INSERT INTO `zone_levels` VALUES (215, 'Mulgore', 10);
INSERT INTO `zone_levels` VALUES (267, 'HillsbradFoothills', 25);
INSERT INTO `zone_levels` VALUES (331, 'Ashenvale', 25);
INSERT INTO `zone_levels` VALUES (357, 'Feralas', 40);
INSERT INTO `zone_levels` VALUES (361, 'Felwood', 50);
INSERT INTO `zone_levels` VALUES (394, 'GrizzlyHills', 75);
INSERT INTO `zone_levels` VALUES (400, 'ThousandNeedles', 45);
INSERT INTO `zone_levels` VALUES (405, 'Desolace', 35);
INSERT INTO `zone_levels` VALUES (406, 'StonetalonMountains', 30);
INSERT INTO `zone_levels` VALUES (440, 'Tanaris', 50);
INSERT INTO `zone_levels` VALUES (490, 'UngoroCrater', 55);
INSERT INTO `zone_levels` VALUES (493, 'Moonglade', 60);
INSERT INTO `zone_levels` VALUES (495, 'HowlingFjord', 72);
INSERT INTO `zone_levels` VALUES (616, 'Hyjal', 82);
INSERT INTO `zone_levels` VALUES (618, 'Winterspring', 55);
INSERT INTO `zone_levels` VALUES (1377, 'Silithus', 60);
INSERT INTO `zone_levels` VALUES (2817, 'CrystalsongForest', 80);
INSERT INTO `zone_levels` VALUES (3430, 'EversongWoods', 10);
INSERT INTO `zone_levels` VALUES (3433, 'Ghostlands', 20);
INSERT INTO `zone_levels` VALUES (3483, 'Hellfire', 63);
INSERT INTO `zone_levels` VALUES (3518, 'Nagrand', 67);
INSERT INTO `zone_levels` VALUES (3519, 'TerokkarForest', 65);
INSERT INTO `zone_levels` VALUES (3520, 'ShadowmoonValley', 70);
INSERT INTO `zone_levels` VALUES (3521, 'Zangarmarsh', 64);
INSERT INTO `zone_levels` VALUES (3522, 'BladesEdgeMountains', 68);
INSERT INTO `zone_levels` VALUES (3523, 'Netherstorm', 70);
INSERT INTO `zone_levels` VALUES (3524, 'AzuremystIsle', 10);
INSERT INTO `zone_levels` VALUES (3525, 'BloodmystIsle', 20);
INSERT INTO `zone_levels` VALUES (3537, 'BoreanTundra', 72);
INSERT INTO `zone_levels` VALUES (3711, 'SholazarBasin', 78);
INSERT INTO `zone_levels` VALUES (4075, 'SunwellPlateau', 70);
INSERT INTO `zone_levels` VALUES (4197, 'LakeWintergrasp', 80);
INSERT INTO `zone_levels` VALUES (4709, 'SouthernBarrens', 35);
INSERT INTO `zone_levels` VALUES (4714, 'Gilneas', 12);
INSERT INTO `zone_levels` VALUES (4720, 'TheLostIsles', 12);
INSERT INTO `zone_levels` VALUES (4742, 'HrothgarsLanding', 80);
INSERT INTO `zone_levels` VALUES (4922, 'TwilightHighlands', 85);
INSERT INTO `zone_levels` VALUES (5034, 'Uldum', 84);
INSERT INTO `zone_levels` VALUES (5042, 'Deepholm', 83);
INSERT INTO `zone_levels` VALUES (5095, 'TolBarad', 85);
INSERT INTO `zone_levels` VALUES (5146, 'Vashjir', 82);
INSERT INTO `zone_levels` VALUES (5287, 'TheCapeOfStranglethorn', 35);
INSERT INTO `zone_levels` VALUES (5339, 'StranglethornVale', 35);

SET FOREIGN_KEY_CHECKS = 1;
