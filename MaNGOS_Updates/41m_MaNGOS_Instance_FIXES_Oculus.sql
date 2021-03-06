-- Oculus
UPDATE `instance_template` SET `ScriptName`='instance_oculus' WHERE `map`=578;

-- Nexus Portal
UPDATE `gameobject_template` SET `ScriptName` = 'go_oculus_portal' WHERE `entry` = 189985;

-- Orb of the Nexus
UPDATE `gameobject_template` SET `ScriptName` = 'go_oculus_portal' WHERE `entry` = 188715;

-- Drakos the Interrogator
UPDATE `creature_template` SET `maxhealth` = 431392 WHERE `entry` = 31558;  -- Hard Instance Version  data from wow.com
UPDATE `creature_template` SET `mechanic_immune_mask` = 617299931 WHERE `entry` = 27654;  -- added immune to pacify
UPDATE `creature_template` SET `mechanic_immune_mask` = 617299931 WHERE `entry` = 31558;  -- added immune to pacify to hard version

-- Varos
UPDATE `creature_template` SET `mechanic_immune_mask` = 617299931 WHERE `entry` = 27447; -- added immune to pacify
UPDATE `creature_template` SET `mechanic_immune_mask` = 617299931 WHERE `entry` = 31559; -- added immune to pacify to hard version 
UPDATE `creature_template` SET `unit_flags` = 33280 WHERE `entry` = 28183;

--  Centrifuge Construct
UPDATE `creature_template` SET `KillCredit1` = 27641 WHERE `entry` = 27641;

-- Eternos
UPDATE `creature_template` SET `npcflag` = 1 WHERE `entry` = 27659; -- YTDB FIX Make eternos capable of gossip - to give out drake

-- herbalism flower   a ytdb bugs flowers cant wander around lol
UPDATE `creature_template` SET `unit_flags` = 33555204, `dynamicflags` = 8 WHERE `entry` = 29888;
UPDATE `creature_template` SET `speed_walk` = 0, `speed_run` = 0, `movementId` = 0 WHERE `entry` = 29888;



-- FallenAngelX
ALTER TABLE db_version_Infinity_Update CHANGE COLUMN r40 r41 bit;
REPLACE INTO `db_version_Infinity_Update` (`version`) VALUES ('r41');

UPDATE db_version SET `cache_id`= 'r41';
UPDATE db_version SET `version`= 'YTDB579_Infinity_Update_r41';