DELETE FROM `gameobject_template` WHERE entry = 600000;
INSERT INTO `gameobject_template`(`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES (600000, 3, 259, 'Drop chest', '', '', '', 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 12340);


DELETE FROM `gameobject_template_addon` WHERE entry = 600000;
INSERT INTO `gameobject_template_addon`(`entry`, `faction`, `flags`, `mingold`, `maxgold`, `artkit0`, `artkit1`, `artkit2`, `artkit3`) VALUES (600000, 94, 0, 10, 100, 0, 0, 0, 0);

UPDATE `gameobject_template` SET `type` = 3, `displayId` = 259, `name` = 'Arena Treasure Chest', `IconName` = '', `castBarCaption` = '', `unk1` = '', `size` = 1, `Data0` = 1599, `Data1` = 0, `Data2` = 0, `Data3` = 1, `Data4` = 0, `Data5` = 0, `Data6` = 0, `Data7` = 0, `Data8` = 0, `Data9` = 0, `Data10` = 0, `Data11` = 0, `Data12` = 0, `Data13` = 0, `Data14` = 0, `Data15` = 0, `Data16` = 0, `Data17` = 0, `Data18` = 0, `Data19` = 0, `Data20` = 0, `Data21` = 0, `Data22` = 0, `Data23` = 0, `AIName` = '', `ScriptName` = '', `VerifiedBuild` = 12340 WHERE `entry` = 179697;
