/*
    Add pvp rank requirements to pvp items.
    Individual Progression does NOT restore the original pvp ranking system.
    To gain pvp ranks you need a module like https://github.com/azerothcore/mod-pvp-titles
*/

/* Note: You need an appropriate acore module giving pvp titles */
-- Use vendor/item condition to make vanilla pvp item accessible with corresponding vanilla pvp rank
DELETE FROM `conditions` WHERE `Comment` = 'Raider Bork will not sell Swift Warstrider until the player has completed PROGRESSION_PRE_TBC';
DELETE FROM `conditions` WHERE `Comment` = 'Lieutenant Karter will not sell Reins of the Black War Elekk until the player has completed PROGRESSION_PRE_TBC';
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 23 AND `ConditionTypeOrReference` = 18 AND `Comment` = 'Vanilla PvP Ranked Gear (IPP)';
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
-- Alliance
(23, 12805, 15196, 0, 0, 18, 0, 1, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12805, 18854, 0, 0, 18, 0, 2, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'), -- Optional
(23, 12805, 18856, 0, 0, 18, 0, 2, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'), -- Optional
(23, 12805, 18857, 0, 0, 18, 0, 2, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'), -- Optional
(23, 12805, 18858, 0, 0, 18, 0, 2, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'), -- Optional
(23, 12805, 18859, 0, 0, 18, 0, 2, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'), -- Optional
(23, 12805, 18862, 0, 0, 18, 0, 2, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'), -- Optional
(23, 12805, 18863, 0, 0, 18, 0, 2, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'), -- Optional
(23, 12805, 18864, 0, 0, 18, 0, 2, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'), -- Optional
(23, 12781, 29593, 0, 0, 18, 0, 2, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'), -- Optional
(23, 112781, 29593, 0, 0, 18, 0, 2, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'), -- Optional
(23, 12805, 16342, 0, 0, 18, 0, 3, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12805, 18440, 0, 0, 18, 0, 3, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12805, 18441, 0, 0, 18, 0, 3, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12805, 18442, 0, 0, 18, 0, 4, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12805, 18443, 0, 0, 18, 0, 4, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12805, 18444, 0, 0, 18, 0, 4, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12805, 18445, 0, 0, 18, 0, 5, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12805, 18447, 0, 0, 18, 0, 5, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12805, 18448, 0, 0, 18, 0, 5, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12805, 18449, 0, 0, 18, 0, 5, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12805, 18452, 0, 0, 18, 0, 5, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12805, 18453, 0, 0, 18, 0, 5, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12805, 18454, 0, 0, 18, 0, 5, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12805, 18455, 0, 0, 18, 0, 5, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12805, 18456, 0, 0, 18, 0, 5, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12805, 18457, 0, 0, 18, 0, 5, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12781, 15198, 0, 0, 18, 0, 6, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 112781, 15198, 0, 0, 18, 0, 6, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16369, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16391, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16392, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'), 
(23, 12777, 16393, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16396, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16397, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16401, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16403, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16405, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16406, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 17562, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 17564, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 17594, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 17596, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23274, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23275, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23278, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23279, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23280, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23281, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23282, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23283, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23284, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23285, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23286, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23287, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23288, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23289, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23290, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23291, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 29594, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 29595, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16425, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23292, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16426, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23293, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23294, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16422, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23295, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16421, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 17567, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23296, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 17568, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23297, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23272, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23273, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16417, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'), 
(23, 12777, 23298, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16419, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23299, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 29596, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 29597, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16430, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23300, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16431, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23301, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 17599, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23302, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 17600, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23303, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16414, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23304, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16413, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23305, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16416, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16427, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16428, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23306, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23307, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16423, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16424, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 17598, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23308, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23309, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 17566, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 17569, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23310, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23311, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23276, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23277, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23312, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23313, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16420, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16418, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 29598, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 29599, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16429, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23314, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16432, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 17601, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23315, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23316, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23317, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23318, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 23319, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16415, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16369, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16391, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16392, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'), 
(23, 26393, 16393, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16396, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16397, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16401, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16403, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16405, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16406, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 17562, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 17564, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 17594, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 17596, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23274, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23275, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23278, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23279, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23280, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23281, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23282, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23283, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23284, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23285, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23286, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23287, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23288, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23289, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23290, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23291, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 29594, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 29595, 0, 0, 18, 0, 7, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16425, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23292, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16426, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23293, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23294, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16422, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23295, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16421, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 17567, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23296, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 17568, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23297, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23272, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23273, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16417, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'), 
(23, 26393, 23298, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16419, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23299, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 29596, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 29597, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16430, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23300, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16431, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23301, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 17599, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23302, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 17600, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23303, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16414, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23304, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16413, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23305, 0, 0, 18, 0, 8, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16416, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16427, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16428, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23306, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23307, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16423, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16424, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 17598, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23308, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23309, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 17566, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 17569, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23310, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23311, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23276, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23277, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23312, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23313, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16420, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16418, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 29598, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 29599, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16429, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23314, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16432, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 17601, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23315, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23316, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23317, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23318, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 23319, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16415, 0, 0, 18, 0, 10, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12783, 18241, 0, 0, 18, 0, 1, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'), -- Optional
(23, 12783, 18242, 0, 0, 18, 0, 1, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'), -- Optional
(23, 12783, 18243, 0, 0, 18, 0, 1, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'), -- Optional
(23, 12783, 18244, 0, 0, 18, 0, 1, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'), -- Optional
(23, 12777, 16462, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16463, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16467, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16459, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16448, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16450, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 17583, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 17584, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 17579, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16472, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16471, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16475, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16446, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16454, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16456, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 29606, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 29607, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 29608, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16483, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16484, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16479, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 17608, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 17603, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 17607, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16437, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'), 
(23, 12777, 16440, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16442, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16465, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16466, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16468, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 17578, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16441, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16449, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16451, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16452, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 17580, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 17581, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16453, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 17602, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16473, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16474, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16476, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16455, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16457, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 29609, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 29610, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 29611, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16477, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16478, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16480, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 17604, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 17605, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16443, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12777, 16444, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12782, 12584, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12782, 18825, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12782, 18827, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12782, 18830, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12782, 18833, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12782, 18836, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12782, 18838, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12782, 18843, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12782, 18847, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12782, 18855, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'), 
(23, 12782, 18865, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12782, 18867, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12782, 18869, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12782, 18873, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12782, 18876, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12782, 23451, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12782, 23452, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12782, 23453, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12782, 23454, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12782, 23455, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12782, 23456, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16462, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16463, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16467, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16459, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16448, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16450, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 17583, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 17584, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 17579, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16472, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16471, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16475, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16446, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16454, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16456, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 29606, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 29607, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 29608, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16483, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16484, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16479, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 17608, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 17603, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 17607, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16437, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'), 
(23, 26393, 16440, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16442, 0, 0, 18, 0, 12, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16465, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16466, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16468, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 17578, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16441, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16449, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16451, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16452, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 17580, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 17581, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16453, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 17602, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16473, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16474, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16476, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16455, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16457, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 29609, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 29610, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 29611, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16477, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16478, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16480, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 17604, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 17605, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16443, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26393, 16444, 0, 0, 18, 0, 13, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26394, 12584, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26394, 18825, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26394, 18827, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26394, 18830, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26394, 18833, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26394, 18836, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26394, 18838, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26394, 18843, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26394, 18847, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26394, 18855, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'), 
(23, 26394, 18865, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26394, 18867, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26394, 18869, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26394, 18873, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26394, 18876, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26394, 23451, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26394, 23452, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26394, 23453, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26394, 23454, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26394, 23455, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26394, 23456, 0, 0, 18, 0, 14, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
-- Horde
(23, 12799, 15197, 0, 0, 18, 0, 15, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12799, 18834, 0, 0, 18, 0, 16, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'), -- Optional
(23, 12799, 18845, 0, 0, 18, 0, 16, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'), -- Optional
(23, 12799, 18846, 0, 0, 18, 0, 16, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'), -- Optional
(23, 12799, 18849, 0, 0, 18, 0, 16, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'), -- Optional
(23, 12799, 18850, 0, 0, 18, 0, 16, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'), -- Optional
(23, 12799, 18851, 0, 0, 18, 0, 16, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'), -- Optional
(23, 12799, 18852, 0, 0, 18, 0, 16, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'), -- Optional
(23, 12799, 18853, 0, 0, 18, 0, 16, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'), -- Optional
(23, 12793, 29592, 0, 0, 18, 0, 16, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'), -- Optional
(23, 112793, 29592, 0, 0, 18, 0, 16, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'), -- Optional
(23, 12799, 16341, 0, 0, 18, 0, 17, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12799, 18427, 0, 0, 18, 0, 17, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12799, 18461, 0, 0, 18, 0, 17, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12799, 15200, 0, 0, 18, 0, 18, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12799, 16335, 0, 0, 18, 0, 18, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12799, 18428, 0, 0, 18, 0, 18, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12799, 16340, 0, 0, 18, 0, 19, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12799, 18434, 0, 0, 18, 0, 19, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12799, 18436, 0, 0, 18, 0, 19, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12799, 16497, 0, 0, 18, 0, 19, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12799, 16532, 0, 0, 18, 0, 19, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12799, 18435, 0, 0, 18, 0, 19, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12799, 18429, 0, 0, 18, 0, 19, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12799, 18430, 0, 0, 18, 0, 19, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12799, 18432, 0, 0, 18, 0, 19, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12799, 16486, 0, 0, 18, 0, 19, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12799, 18437, 0, 0, 18, 0, 19, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12793, 15199, 0, 0, 18, 0, 20, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 112793, 15199, 0, 0, 18, 0, 20, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16530, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16531, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 22843, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 22862, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16494, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16496, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 22852, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 22863, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 17576, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 17577, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 22855, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 22865, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16498, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 22864, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 29600, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 29601, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16499, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16519, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 22856, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 22857, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16343, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16518, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 22867, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 30710, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16509, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16510, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 22858, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 22868, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'), 
(23, 12792, 17616, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 17617, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 22859, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 22869, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16485, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16487, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 22860, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 22870, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16517, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16525, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16529, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 22874, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16493, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16504, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16527, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 22875, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16495, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16502, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 22877, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 22878, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 17571, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 17574, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 17575, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 22881, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 17572, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 22884, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 29602, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 29603, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16500, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16505, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16508, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 22879, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16520, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16522, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 22876, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 22880, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16512, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16513, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16523, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 22887, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16511, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16515, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 22872, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 22873, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 17611, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 17614, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 17615, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 22882, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16488, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 17612, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 22883, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 22885, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16490, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16491, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 22886, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16526, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16528, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 23251, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 23252, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16501, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16503, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 23253, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 23254, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 17570, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 17573, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 23255, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 23256, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16506, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 23257, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 29604, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 29605, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16507, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16521, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 23258, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 23259, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16514, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16524, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 23244, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 23260, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16516, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 17610, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 23243, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 23261, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16489, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 17613, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 23262, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 23263, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16492, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 23264, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16530, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16531, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 22843, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 22862, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16494, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16496, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 22852, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 22863, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 17576, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 17577, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 22855, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 22865, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16498, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 22864, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 29600, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 29601, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16499, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16519, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 22856, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 22857, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16343, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16518, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 22867, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 30710, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16509, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16510, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 22858, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 22868, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'), 
(23, 26397, 17616, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 17617, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 22859, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 22869, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16485, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16487, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 22860, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 22870, 0, 0, 18, 0, 21, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16517, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16525, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16529, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 22874, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16493, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16504, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16527, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 22875, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16495, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16502, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 22877, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 22878, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 17571, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 17574, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 17575, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 22881, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 17572, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 22884, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 29602, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 29603, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16500, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16505, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16508, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 22879, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16520, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16522, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 22876, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 22880, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16512, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16513, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16523, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 22887, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16511, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16515, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 22872, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 22873, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 17611, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 17614, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 17615, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 22882, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16488, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 17612, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 22883, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 22885, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16490, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16491, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 22886, 0, 0, 18, 0, 22, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16526, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16528, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 23251, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 23252, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16501, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16503, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 23253, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 23254, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 17570, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 17573, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 23255, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 23256, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16506, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 23257, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 29604, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 29605, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16507, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16521, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 23258, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 23259, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16514, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16524, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 23244, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 23260, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16516, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 17610, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 23243, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 23261, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16489, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 17613, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 23262, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 23263, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16492, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 23264, 0, 0, 18, 0, 24, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12796, 18245, 0, 0, 18, 0, 25, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'), -- Optional
(23, 12796, 18246, 0, 0, 18, 0, 25, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'), -- Optional
(23, 12796, 18247, 0, 0, 18, 0, 25, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'), -- Optional
(23, 12796, 18248, 0, 0, 18, 0, 25, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'), -- Optional
(23, 12792, 16569, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16571, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16572, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16556, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16567, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16570, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16553, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16554, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16555, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16552, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 17586, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 17589, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 17587, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 17588, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 17593, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 29612, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 29613, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 29614, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16557, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16559, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16564, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16558, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16560, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16573, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16574, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16576, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16579, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16545, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16546, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16575, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16543, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16547, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16548, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 17618, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 17619, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 17621, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 17620, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 17625, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16539, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16537, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16538, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16540, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16534, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16565, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16566, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16568, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16549, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16550, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16551, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 17590, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 17591, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 17592, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 29615, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 29616, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 29617, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16561, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16562, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16563, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16577, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16578, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16580, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16541, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16542, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16544, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 17622, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 17623, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 17624, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16533, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16535, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12792, 16536, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 14581, 16345, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 14581, 18831, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 14581, 23459, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 14581, 23464, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 14581, 18828, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 14581, 18837, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 14581, 18866, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 14581, 23457, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 14581, 18848, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 14581, 18871, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 14581, 18877, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 14581, 23465, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 14581, 18840, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 14581, 18868, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 14581, 23461, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 14581, 23467, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 14581, 18826, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 14581, 18835, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 14581, 18844, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 14581, 23458, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 14581, 18860, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 14581, 23462, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 14581, 23466, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 14581, 23468, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 14581, 18874, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 14581, 23469, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16569, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16571, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16572, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16556, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16567, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16570, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16553, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16554, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16555, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16552, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 17586, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 17589, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 17587, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 17588, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 17593, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 29612, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 29613, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 29614, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16557, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16559, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16564, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16558, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16560, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16573, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16574, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16576, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16579, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16545, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16546, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16575, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16543, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16547, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16548, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 17618, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 17619, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 17621, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 17620, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 17625, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16539, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16537, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16538, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16540, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16534, 0, 0, 18, 0, 26, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16565, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16566, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16568, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16549, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16550, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16551, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 17590, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 17591, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 17592, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 29615, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 29616, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 29617, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16561, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16562, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16563, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16577, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16578, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16580, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16541, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16542, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16544, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 17622, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 17623, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 17624, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16533, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16535, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26397, 16536, 0, 0, 18, 0, 27, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26396, 16345, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26396, 18831, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26396, 23459, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26396, 23464, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26396, 18828, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26396, 18837, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26396, 18866, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26396, 23457, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26396, 18848, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26396, 18871, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26396, 18877, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26396, 23465, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26396, 18840, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26396, 18868, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26396, 23461, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26396, 23467, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26396, 18826, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26396, 18835, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26396, 18844, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26396, 23458, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26396, 18860, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26396, 23462, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26396, 23466, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26396, 23468, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26396, 18874, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 26396, 23469, 0, 0, 18, 0, 28, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 12796, 34129, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Raider Bork will not sell Swift Warstrider until the player has completed PROGRESSION_PRE_TBC'),
(23, 12783, 35906, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Lieutenant Karter will not sell Reins of the Black War Elekk until the player has completed PROGRESSION_PRE_TBC'),
-- Battle standards
(23, 112781, 18606, 0, 0, 18, 0, 9, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)'),
(23, 112793, 18607, 0, 0, 18, 0, 23, 0, 0, 0, 0, 0, '', 'Vanilla PvP Ranked Gear (IPP)');

-- Gold prices for new Vanilla 60 PvP items added during 2.0
UPDATE `item_template` SET `BuyPrice` = 43208, `SellPrice` = 8641 WHERE `entry` = 23314; -- Lieutenant Commander's Plate Helmet
UPDATE `item_template` SET `BuyPrice` = 285448, `SellPrice` = 57089 WHERE `entry` = 23457; -- High Warlord's Destroyer
UPDATE `item_template` SET `BuyPrice` = 228358, `SellPrice` = 45671 WHERE `entry` = 23458; -- High Warlord's Spellblade
UPDATE `item_template` SET `BuyPrice` = 228358, `SellPrice` = 45671 WHERE `entry` = 23459; -- High Warlord's Battle Mace
UPDATE `item_template` SET `BuyPrice` = 228358, `SellPrice` = 45671 WHERE `entry` = 23461; -- High Warlord's Quickblade
UPDATE `item_template` SET `BuyPrice` = 301810, `SellPrice` = 75452 WHERE `entry` = 23462; -- High Warlord's Tome of Destruction
UPDATE `item_template` SET `BuyPrice` = 67983, `SellPrice` = 13596 WHERE `entry` = 29594; -- Knight-Lieutenant's Mail Greaves
UPDATE `item_template` SET `BuyPrice` = 50804, `SellPrice` = 10160 WHERE `entry` = 29595; -- Knight-Lieutenant's Mail Vices
UPDATE `item_template` SET `BuyPrice` = 82858, `SellPrice` = 16571 WHERE `entry` = 29596; -- Knight-Captain's Mail Hauberk
UPDATE `item_template` SET `BuyPrice` = 83178, `SellPrice` = 16635 WHERE `entry` = 29597; -- Knight-Captain's Mail Legguards
UPDATE `item_template` SET `BuyPrice` = 64573, `SellPrice` = 12914 WHERE `entry` = 29598; -- Lieutenant Commander's Mail Headguard
UPDATE `item_template` SET `BuyPrice` = 64619, `SellPrice` = 12923 WHERE `entry` = 29599; -- Lieutenant Commander's Mail Pauldrons
UPDATE `item_template` SET `BuyPrice` = 44482, `SellPrice` = 8896 WHERE `entry` = 29600; -- Blood Guard's Lamellar Gauntlets
UPDATE `item_template` SET `BuyPrice` = 49869, `SellPrice` = 9973 WHERE `entry` = 29601; -- Blood Guard's Lamellar Sabatons
UPDATE `item_template` SET `BuyPrice` = 70653, `SellPrice` = 14130 WHERE `entry` = 29602; -- Legionnaire's Lamellar Breastplate
UPDATE `item_template` SET `BuyPrice` = 90275, `SellPrice` = 18055 WHERE `entry` = 29603; -- Legionnaire's Lamellar Leggings
UPDATE `item_template` SET `BuyPrice` = 65771, `SellPrice` = 13154 WHERE `entry` = 29604; -- Champion's Lamellar Headguard
UPDATE `item_template` SET `BuyPrice` = 92684, `SellPrice` = 18536 WHERE `entry` = 29605; -- Champion's Lamellar Shoulders
UPDATE `item_template` SET `BuyPrice` = 111087, `SellPrice` = 22217 WHERE `entry` = 29606; -- Marshal's Mail Boots
UPDATE `item_template` SET `BuyPrice` = 69095, `SellPrice` = 13819 WHERE `entry` = 29607; -- Marshal's Mail Gauntlets
UPDATE `item_template` SET `BuyPrice` = 147067, `SellPrice` = 29413 WHERE `entry` = 29608; -- Marshal's Mail Leggings
UPDATE `item_template` SET `BuyPrice` = 166014, `SellPrice` = 33202 WHERE `entry` = 29609; -- Field Marshal's Mail Armor
UPDATE `item_template` SET `BuyPrice` = 124055, `SellPrice` = 24811 WHERE `entry` = 29610; -- Field Marshal's Mail Helm
UPDATE `item_template` SET `BuyPrice` = 123156, `SellPrice` = 24631 WHERE `entry` = 29611; -- Field Marshal's Mail Spaulders
UPDATE `item_template` SET `BuyPrice` = 111087, `SellPrice` = 22217 WHERE `entry` = 29612; -- General's Lamellar Boots
UPDATE `item_template` SET `BuyPrice` = 69095, `SellPrice` = 13819 WHERE `entry` = 29613; -- General's Lamellar Gloves
UPDATE `item_template` SET `BuyPrice` = 147067, `SellPrice` = 29413 WHERE `entry` = 29614; -- General's Lamellar Legplates
UPDATE `item_template` SET `BuyPrice` = 130894, `SellPrice` = 26178 WHERE `entry` = 29615; -- Warlord's Lamellar Chestplate
UPDATE `item_template` SET `BuyPrice` = 145586, `SellPrice` = 29117 WHERE `entry` = 29616; -- Warlord's Lamellar Faceguard
UPDATE `item_template` SET `BuyPrice` = 147331, `SellPrice` = 29466 WHERE `entry` = 29617; -- Warlord's Lamellar Pauldrons

-- During Vanilla, PvP items should cost gold, not honor points
UPDATE `npc_vendor` SET `ExtendedCost` = 0 
WHERE `entry` IN (
-- Vanilla only Horde PvP vendors
12799, -- Sergeant Ba'sha
26396, -- Sergeant Thunderhorn
26397, -- Lady Palanseer
112793, -- Brave Stonehide
112794, -- Stoneguard Zarg
112795, -- First Sergeant Hola'mahi
-- Vanilla only Alliance PvP vendors
12805, -- Officer Areyn
26393, -- Captain Dirgehammer
26394, -- Captain O'Neal
112781, -- Master Sergeant Biggins
112785 -- Sergeant-major Clate
) AND `item` IN ( 
15196, 15198, 16342, 18440, 18441, 18442, 18443, 18444, 16315, 16336, 16337, 18448, 18449, 18454, 18455, 18452, 18453, 18445, 18447, 18456, 18457, 16401,
16403, 23278, 23279, 16393, 16397, 23280, 23281, 17562, 17564, 23282, 23283, 23274, 23275, 16392, 16396, 23284, 23285, 29594, 29595, 16405, 16406, 23286, 23287, 17594, 17596, 23288, 23289, 16369, 16391, 23290, 23291,
16425, 23292, 16426, 23293, 23294, 16422, 23295, 16421, 17567, 23296, 17568, 23297, 23272, 23273, 16417, 23298, 16419, 23299, 29596, 29597, 16430, 23300, 16431, 23301, 17599, 23302, 17600, 23303, 16414, 23304, 16413, 23305,
23306, 16428, 16427, 23307, 16416, 17598, 16423, 23308, 23309, 16424, 23310, 17569, 23311, 17566, 23276, 23277, 23312, 23313, 16420, 16418, 29598, 29599, 16429, 23314, 16432, 23315, 17601, 23316, 23317, 23318, 23319, 16415,
16462, 16463, 16467, 16459, 16448, 16450, 17583, 17584, 17579, 16472, 16471, 16475, 16446, 16454, 16456, 29606, 29607, 29608, 16483, 16484, 16479, 17608, 17603, 17607, 16437, 16440, 16442,
16466, 16465, 16468, 17578, 16441, 16452, 16451, 16449, 17581, 17580, 17602, 16473, 16474, 16476, 16453, 16457, 16455, 29609, 29610, 29611, 16477, 16478, 16480, 17604, 17605, 16444, 16443,
12584, 18825, 18827, 18830, 18833, 18836, 18838, 18843, 18847, 18855, 18865, 18867, 18869, 18873, 18876, 23451, 23452, 23453, 23454, 23455, 23456,
15197, 15199, 15200, 16335, 18428, 16341, 18427, 18461, 16340, 18434, 18436, 16497, 18435, 16532, 18432, 18429, 18430, 16486, 18437,
16531, 16530, 22843, 22862, 16494, 16496, 22863, 22852, 17576, 17577, 22865, 22855, 29600, 29601, 22864, 16498, 16499, 22856, 22857, 16519, 22867, 16518, 16343, 30710, 16509, 22868, 16510, 22858, 17616, 17617, 22869, 22859, 16485, 16487, 22870, 22860,
16517, 16525, 16529, 22874, 16527, 22875, 16493, 16504, 22877, 22878, 16502, 16495, 17574, 17575, 17571, 22881, 17572, 22884, 29602, 29603, 22879, 16500, 16505, 16508, 22880, 16522, 16520, 22876, 16523, 22887, 16513, 16512, 16511, 22872, 22873, 16515, 17615, 22882, 17614, 17611, 22885, 17612, 16488, 22883, 16490, 16491, 22886,
16526, 23251, 16528, 23252, 23253, 16503, 23254, 16501, 23255, 17570, 17573, 23256, 29604, 29605, 16506, 23257, 16507, 23258, 23259, 16521, 23260, 16524, 16514, 23244, 16516, 23243, 17610, 23261, 23262, 17613, 23263, 16489, 23264, 16492,
16569, 16572, 16571, 16567, 16570, 16556, 16554, 16553, 16555, 16552, 17589, 17586, 17587, 17588, 17593, 29612, 29613, 29614, 16559, 16557, 16564, 16560, 16558, 16573, 16576, 16574, 16579, 16575, 16546, 16545, 16548, 16547, 16543, 17618, 17619, 17621, 17620, 17625, 16539, 16538, 16540, 16537, 16534,
16565, 16566, 16568, 16551, 16549, 16550, 17591, 17590, 17592, 29615, 29616, 29617, 16563, 16561, 16562, 16577, 16578, 16580, 16541, 16542, 16544, 17623, 17622, 17624, 16536, 16533, 16535,
18831, 23459, 23464, 16345, 18866, 18828, 18837, 23457, 23465, 18877, 18848, 18871, 18868, 23461, 23467, 18840, 18835, 18844, 18826, 23458, 23466, 18860, 23462, 23468, 23469, 18874,
18834, 18845, 18846, 18849, 18850, 18851, 18852, 18853, 18854, 18856, 18857, 18858, 18859, 18862, 18863, 18864, 29592, 29593, 18606, 18607);
INSERT IGNORE INTO `npc_vendor` VALUES (12805, 0, 15196, 0, 0, 0, 0); -- missing alliance tabard ? 

/* Restore Honor cost if needed to Vanilla PvP items */
-- UPDATE `npc_vendor` SET `ExtendedCost` = 386 WHERE `entry` = 112781 AND `item` = 18606;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 386 WHERE `entry` = 112793 AND `item` = 18607;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 427 WHERE `entry` = 26393 AND `item` = 23275;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 427 WHERE `entry` = 26393 AND `item` = 23277;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 427 WHERE `entry` = 26393 AND `item` = 23278;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 427 WHERE `entry` = 26393 AND `item` = 23281;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 427 WHERE `entry` = 26393 AND `item` = 23283;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 427 WHERE `entry` = 26393 AND `item` = 23285;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 427 WHERE `entry` = 26393 AND `item` = 23287;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 427 WHERE `entry` = 26393 AND `item` = 23289;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 427 WHERE `entry` = 26393 AND `item` = 23291;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 427 WHERE `entry` = 26393 AND `item` = 23307;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 427 WHERE `entry` = 26393 AND `item` = 23309;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 427 WHERE `entry` = 26393 AND `item` = 23311;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 427 WHERE `entry` = 26393 AND `item` = 23313;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 427 WHERE `entry` = 26393 AND `item` = 23315;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 427 WHERE `entry` = 26393 AND `item` = 23317;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 427 WHERE `entry` = 26393 AND `item` = 23319;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 427 WHERE `entry` = 26393 AND `item` = 29594;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 427 WHERE `entry` = 26393 AND `item` = 29599;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 427 WHERE `entry` = 26397 AND `item` = 22843;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 427 WHERE `entry` = 26397 AND `item` = 22852;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 427 WHERE `entry` = 26397 AND `item` = 22855;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 427 WHERE `entry` = 26397 AND `item` = 22856;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 427 WHERE `entry` = 26397 AND `item` = 22857;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 427 WHERE `entry` = 26397 AND `item` = 22858;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 427 WHERE `entry` = 26397 AND `item` = 22859;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 427 WHERE `entry` = 26397 AND `item` = 22860;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 427 WHERE `entry` = 26397 AND `item` = 23243;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 427 WHERE `entry` = 26397 AND `item` = 23252;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 427 WHERE `entry` = 26397 AND `item` = 23254;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 427 WHERE `entry` = 26397 AND `item` = 23256;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 427 WHERE `entry` = 26397 AND `item` = 23258;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 427 WHERE `entry` = 26397 AND `item` = 23260;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 427 WHERE `entry` = 26397 AND `item` = 23262;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 427 WHERE `entry` = 26397 AND `item` = 23264;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 428 WHERE `entry` = 26393 AND `item` = 23274;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 428 WHERE `entry` = 26393 AND `item` = 23279;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 428 WHERE `entry` = 26393 AND `item` = 23280;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 428 WHERE `entry` = 26393 AND `item` = 23282;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 428 WHERE `entry` = 26393 AND `item` = 23284;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 428 WHERE `entry` = 26393 AND `item` = 23286;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 428 WHERE `entry` = 26393 AND `item` = 23288;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 428 WHERE `entry` = 26393 AND `item` = 23290;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 428 WHERE `entry` = 26393 AND `item` = 29595;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 428 WHERE `entry` = 26397 AND `item` = 22862;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 428 WHERE `entry` = 26397 AND `item` = 22863;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 428 WHERE `entry` = 26397 AND `item` = 22864;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 428 WHERE `entry` = 26397 AND `item` = 22865;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 428 WHERE `entry` = 26397 AND `item` = 22867;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 428 WHERE `entry` = 26397 AND `item` = 22868;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 428 WHERE `entry` = 26397 AND `item` = 22869;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 428 WHERE `entry` = 26397 AND `item` = 22870;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 444 WHERE `entry` = 26393 AND `item` = 23276;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 444 WHERE `entry` = 26393 AND `item` = 23306;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 444 WHERE `entry` = 26393 AND `item` = 23308;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 444 WHERE `entry` = 26393 AND `item` = 23310;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 444 WHERE `entry` = 26393 AND `item` = 23312;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 444 WHERE `entry` = 26393 AND `item` = 23314;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 444 WHERE `entry` = 26393 AND `item` = 23316;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 444 WHERE `entry` = 26393 AND `item` = 23318;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 444 WHERE `entry` = 26393 AND `item` = 29598;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 444 WHERE `entry` = 26397 AND `item` = 23244;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 444 WHERE `entry` = 26397 AND `item` = 23251;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 444 WHERE `entry` = 26397 AND `item` = 23253;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 444 WHERE `entry` = 26397 AND `item` = 23255;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 444 WHERE `entry` = 26397 AND `item` = 23257;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 444 WHERE `entry` = 26397 AND `item` = 23259;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 444 WHERE `entry` = 26397 AND `item` = 23261;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 444 WHERE `entry` = 26397 AND `item` = 23263;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 463 WHERE `entry` = 26393 AND `item` = 16443;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 463 WHERE `entry` = 26393 AND `item` = 16452;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 463 WHERE `entry` = 26393 AND `item` = 16453;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 463 WHERE `entry` = 26393 AND `item` = 16466;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 463 WHERE `entry` = 26393 AND `item` = 16473;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 463 WHERE `entry` = 26393 AND `item` = 16477;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 463 WHERE `entry` = 26393 AND `item` = 17581;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 463 WHERE `entry` = 26393 AND `item` = 17605;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 463 WHERE `entry` = 26393 AND `item` = 29609;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 463 WHERE `entry` = 26397 AND `item` = 16535;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 463 WHERE `entry` = 26397 AND `item` = 16541;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 463 WHERE `entry` = 26397 AND `item` = 16549;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 463 WHERE `entry` = 26397 AND `item` = 16563;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 463 WHERE `entry` = 26397 AND `item` = 16565;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 463 WHERE `entry` = 26397 AND `item` = 16577;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 463 WHERE `entry` = 26397 AND `item` = 17592;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 463 WHERE `entry` = 26397 AND `item` = 17624;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 464 WHERE `entry` = 26393 AND `item` = 16441;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 464 WHERE `entry` = 26393 AND `item` = 16451;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 464 WHERE `entry` = 26393 AND `item` = 16455;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 464 WHERE `entry` = 26393 AND `item` = 16465;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 464 WHERE `entry` = 26393 AND `item` = 16474;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 464 WHERE `entry` = 26393 AND `item` = 16478;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 464 WHERE `entry` = 26393 AND `item` = 17578;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 464 WHERE `entry` = 26393 AND `item` = 17602;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 464 WHERE `entry` = 26393 AND `item` = 29610;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 464 WHERE `entry` = 26397 AND `item` = 16533;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 464 WHERE `entry` = 26397 AND `item` = 16542;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 464 WHERE `entry` = 26397 AND `item` = 16550;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 464 WHERE `entry` = 26397 AND `item` = 16561;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 464 WHERE `entry` = 26397 AND `item` = 16566;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 464 WHERE `entry` = 26397 AND `item` = 16578;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 464 WHERE `entry` = 26397 AND `item` = 17591;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 464 WHERE `entry` = 26397 AND `item` = 17623;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 465 WHERE `entry` = 26393 AND `item` = 16437;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 465 WHERE `entry` = 26393 AND `item` = 16444;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 465 WHERE `entry` = 26393 AND `item` = 16446;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 465 WHERE `entry` = 26393 AND `item` = 16449;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 465 WHERE `entry` = 26393 AND `item` = 16457;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 465 WHERE `entry` = 26393 AND `item` = 16459;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 465 WHERE `entry` = 26393 AND `item` = 16462;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 465 WHERE `entry` = 26393 AND `item` = 16468;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 465 WHERE `entry` = 26393 AND `item` = 16472;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 465 WHERE `entry` = 26393 AND `item` = 16476;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 465 WHERE `entry` = 26393 AND `item` = 16480;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 465 WHERE `entry` = 26393 AND `item` = 16483;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 465 WHERE `entry` = 26393 AND `item` = 17580;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 465 WHERE `entry` = 26393 AND `item` = 17583;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 465 WHERE `entry` = 26393 AND `item` = 17604;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 465 WHERE `entry` = 26393 AND `item` = 17607;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 465 WHERE `entry` = 26393 AND `item` = 29606;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 465 WHERE `entry` = 26393 AND `item` = 29611;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 465 WHERE `entry` = 26397 AND `item` = 16536;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 465 WHERE `entry` = 26397 AND `item` = 16539;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 465 WHERE `entry` = 26397 AND `item` = 16544;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 465 WHERE `entry` = 26397 AND `item` = 16545;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 465 WHERE `entry` = 26397 AND `item` = 16551;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 465 WHERE `entry` = 26397 AND `item` = 16554;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 465 WHERE `entry` = 26397 AND `item` = 16558;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 465 WHERE `entry` = 26397 AND `item` = 16562;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 465 WHERE `entry` = 26397 AND `item` = 16568;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 465 WHERE `entry` = 26397 AND `item` = 16569;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 465 WHERE `entry` = 26397 AND `item` = 16573;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 465 WHERE `entry` = 26397 AND `item` = 16580;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 465 WHERE `entry` = 26397 AND `item` = 17586;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 465 WHERE `entry` = 26397 AND `item` = 17590;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 465 WHERE `entry` = 26397 AND `item` = 17618;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 465 WHERE `entry` = 26397 AND `item` = 17622;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 491 WHERE `entry` = 12799 AND `item` = 16335;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 492 WHERE `entry` = 12799 AND `item` = 16486;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 492 WHERE `entry` = 12799 AND `item` = 16497;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 492 WHERE `entry` = 12799 AND `item` = 16532;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 492 WHERE `entry` = 12799 AND `item` = 18429;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 492 WHERE `entry` = 12799 AND `item` = 18434;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 492 WHERE `entry` = 12805 AND `item` = 18445;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 492 WHERE `entry` = 12805 AND `item` = 18448;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 492 WHERE `entry` = 12805 AND `item` = 18454;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 492 WHERE `entry` = 12805 AND `item` = 18456;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 541 WHERE `entry` = 26393 AND `item` = 16440;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 541 WHERE `entry` = 26393 AND `item` = 16448;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 541 WHERE `entry` = 26393 AND `item` = 16454;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 541 WHERE `entry` = 26393 AND `item` = 16463;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 541 WHERE `entry` = 26393 AND `item` = 16471;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 541 WHERE `entry` = 26393 AND `item` = 16484;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 541 WHERE `entry` = 26393 AND `item` = 17584;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 541 WHERE `entry` = 26393 AND `item` = 17608;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 541 WHERE `entry` = 26393 AND `item` = 29607;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 541 WHERE `entry` = 26397 AND `item` = 16540;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 541 WHERE `entry` = 26397 AND `item` = 16548;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 541 WHERE `entry` = 26397 AND `item` = 16555;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 541 WHERE `entry` = 26397 AND `item` = 16560;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 541 WHERE `entry` = 26397 AND `item` = 16571;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 541 WHERE `entry` = 26397 AND `item` = 16574;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 541 WHERE `entry` = 26397 AND `item` = 17588;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 541 WHERE `entry` = 26397 AND `item` = 17620;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 542 WHERE `entry` = 26393 AND `item` = 16442;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 542 WHERE `entry` = 26393 AND `item` = 16450;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 542 WHERE `entry` = 26393 AND `item` = 16456;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 542 WHERE `entry` = 26393 AND `item` = 16467;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 542 WHERE `entry` = 26393 AND `item` = 16475;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 542 WHERE `entry` = 26393 AND `item` = 16479;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 542 WHERE `entry` = 26393 AND `item` = 17579;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 542 WHERE `entry` = 26393 AND `item` = 17603;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 542 WHERE `entry` = 26393 AND `item` = 29608;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 542 WHERE `entry` = 26397 AND `item` = 16534;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 542 WHERE `entry` = 26397 AND `item` = 16543;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 542 WHERE `entry` = 26397 AND `item` = 16552;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 542 WHERE `entry` = 26397 AND `item` = 16564;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 542 WHERE `entry` = 26397 AND `item` = 16567;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 542 WHERE `entry` = 26397 AND `item` = 16579;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 542 WHERE `entry` = 26397 AND `item` = 17593;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 542 WHERE `entry` = 26397 AND `item` = 17625;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 634 WHERE `entry` = 12799 AND `item` = 18834;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 634 WHERE `entry` = 12799 AND `item` = 18845;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 634 WHERE `entry` = 12799 AND `item` = 18846;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 634 WHERE `entry` = 12799 AND `item` = 18849;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 634 WHERE `entry` = 12799 AND `item` = 18850;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 634 WHERE `entry` = 12799 AND `item` = 18851;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 634 WHERE `entry` = 12799 AND `item` = 18852;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 634 WHERE `entry` = 12799 AND `item` = 18853;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 634 WHERE `entry` = 12805 AND `item` = 18854;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 634 WHERE `entry` = 12805 AND `item` = 18856;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 634 WHERE `entry` = 12805 AND `item` = 18858;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 634 WHERE `entry` = 12805 AND `item` = 18859;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 634 WHERE `entry` = 12805 AND `item` = 18862;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 634 WHERE `entry` = 12805 AND `item` = 18863;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 634 WHERE `entry` = 12805 AND `item` = 18864;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 652 WHERE `entry` = 26393 AND `item` = 23272;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 652 WHERE `entry` = 26393 AND `item` = 23292;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 652 WHERE `entry` = 26393 AND `item` = 23294;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 652 WHERE `entry` = 26393 AND `item` = 23297;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 652 WHERE `entry` = 26393 AND `item` = 23298;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 652 WHERE `entry` = 26393 AND `item` = 23300;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 652 WHERE `entry` = 26393 AND `item` = 23303;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 652 WHERE `entry` = 26393 AND `item` = 23305;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 652 WHERE `entry` = 26393 AND `item` = 29596;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 652 WHERE `entry` = 26397 AND `item` = 22872;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 652 WHERE `entry` = 26397 AND `item` = 22874;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 652 WHERE `entry` = 26397 AND `item` = 22876;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 652 WHERE `entry` = 26397 AND `item` = 22877;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 652 WHERE `entry` = 26397 AND `item` = 22879;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 652 WHERE `entry` = 26397 AND `item` = 22884;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 652 WHERE `entry` = 26397 AND `item` = 22885;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 652 WHERE `entry` = 26397 AND `item` = 22886;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 653 WHERE `entry` = 26393 AND `item` = 23273;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 653 WHERE `entry` = 26393 AND `item` = 23293;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 653 WHERE `entry` = 26393 AND `item` = 23295;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 653 WHERE `entry` = 26393 AND `item` = 23296;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 653 WHERE `entry` = 26393 AND `item` = 23299;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 653 WHERE `entry` = 26393 AND `item` = 23301;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 653 WHERE `entry` = 26393 AND `item` = 23302;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 653 WHERE `entry` = 26393 AND `item` = 23304;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 653 WHERE `entry` = 26393 AND `item` = 29597;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 653 WHERE `entry` = 26397 AND `item` = 22873;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 653 WHERE `entry` = 26397 AND `item` = 22875;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 653 WHERE `entry` = 26397 AND `item` = 22878;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 653 WHERE `entry` = 26397 AND `item` = 22880;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 653 WHERE `entry` = 26397 AND `item` = 22881;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 653 WHERE `entry` = 26397 AND `item` = 22882;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 653 WHERE `entry` = 26397 AND `item` = 22883;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 653 WHERE `entry` = 26397 AND `item` = 22887;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 774 WHERE `entry` = 12799 AND `item` = 18461;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 838 WHERE `entry` = 12799 AND `item` = 15200;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 930 WHERE `entry` = 12799 AND `item` = 18428;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 931 WHERE `entry` = 12799 AND `item` = 18430;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 931 WHERE `entry` = 12799 AND `item` = 18432;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 931 WHERE `entry` = 12799 AND `item` = 18435;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 931 WHERE `entry` = 12799 AND `item` = 18436;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 931 WHERE `entry` = 12799 AND `item` = 18437;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 931 WHERE `entry` = 12805 AND `item` = 18447;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 931 WHERE `entry` = 12805 AND `item` = 18449;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 931 WHERE `entry` = 12805 AND `item` = 18455;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 931 WHERE `entry` = 12805 AND `item` = 18457;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 986 WHERE `entry` = 12799 AND `item` = 16341;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 1006 WHERE `entry` = 112781 AND `item` = 15198;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 1006 WHERE `entry` = 112793 AND `item` = 15199;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 1007 WHERE `entry` = 12799 AND `item` = 15197;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 1050 WHERE `entry` = 12799 AND `item` = 18427;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2257 WHERE `entry` = 26394 AND `item` = 18830;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2257 WHERE `entry` = 26394 AND `item` = 18867;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2257 WHERE `entry` = 26394 AND `item` = 18869;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2257 WHERE `entry` = 26394 AND `item` = 18873;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2257 WHERE `entry` = 26394 AND `item` = 18876;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2257 WHERE `entry` = 26394 AND `item` = 23452;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2257 WHERE `entry` = 26396 AND `item` = 18831;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2257 WHERE `entry` = 26396 AND `item` = 18868;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2257 WHERE `entry` = 26396 AND `item` = 18871;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2257 WHERE `entry` = 26396 AND `item` = 18874;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2257 WHERE `entry` = 26396 AND `item` = 18877;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2257 WHERE `entry` = 26396 AND `item` = 23465;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2291 WHERE `entry` = 26394 AND `item` = 12584;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2291 WHERE `entry` = 26394 AND `item` = 18825;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2291 WHERE `entry` = 26394 AND `item` = 18827;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2291 WHERE `entry` = 26394 AND `item` = 18833;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2291 WHERE `entry` = 26394 AND `item` = 18836;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2291 WHERE `entry` = 26394 AND `item` = 18838;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2291 WHERE `entry` = 26394 AND `item` = 18843;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2291 WHERE `entry` = 26394 AND `item` = 18847;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2291 WHERE `entry` = 26394 AND `item` = 18855;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2291 WHERE `entry` = 26394 AND `item` = 18865;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2291 WHERE `entry` = 26394 AND `item` = 23451;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2291 WHERE `entry` = 26394 AND `item` = 23453;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2291 WHERE `entry` = 26394 AND `item` = 23454;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2291 WHERE `entry` = 26394 AND `item` = 23455;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2291 WHERE `entry` = 26394 AND `item` = 23456;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2291 WHERE `entry` = 26396 AND `item` = 16345;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2291 WHERE `entry` = 26396 AND `item` = 18826;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2291 WHERE `entry` = 26396 AND `item` = 18828;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2291 WHERE `entry` = 26396 AND `item` = 18835;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2291 WHERE `entry` = 26396 AND `item` = 18837;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2291 WHERE `entry` = 26396 AND `item` = 18840;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2291 WHERE `entry` = 26396 AND `item` = 18844;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2291 WHERE `entry` = 26396 AND `item` = 18848;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2291 WHERE `entry` = 26396 AND `item` = 18860;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2291 WHERE `entry` = 26396 AND `item` = 18866;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2291 WHERE `entry` = 26396 AND `item` = 23464;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2291 WHERE `entry` = 26396 AND `item` = 23466;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2291 WHERE `entry` = 26396 AND `item` = 23467;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2291 WHERE `entry` = 26396 AND `item` = 23468;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2291 WHERE `entry` = 26396 AND `item` = 23469;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2354 WHERE `entry` = 112781 AND `item` = 18839;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2354 WHERE `entry` = 112781 AND `item` = 18841;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2354 WHERE `entry` = 112793 AND `item` = 18839;
-- UPDATE `npc_vendor` SET `ExtendedCost` = 2354 WHERE `entry` = 112793 AND `item` = 18841;

/* Note: next sql lines not working as intended right now without appropriate module code */
/* Alliance Vanilla PvP Gear Rank Requirements */
-- UPDATE `item_template` SET `requiredhonorrank` = 5 WHERE `entry` IN (15196);
-- -- UPDATE `item_template` SET `requiredhonorrank` = 6 WHERE `entry` IN (18854, 18856, 18857, 18858, 18859, 18862, 18863, 18864, 29593);
-- UPDATE `item_template` SET `requiredhonorrank` = 7 WHERE `entry` IN (16342, 18440, 18441);
-- UPDATE `item_template` SET `requiredhonorrank` = 8 WHERE `entry` IN (18442, 18443, 18444);
-- UPDATE `item_template` SET `requiredhonorrank` = 9 WHERE `entry` IN (16315, 16336, 16337, 18448, 18449, 18454, 18455, 18452, 18453, 18445, 18447, 18456, 18457);
-- UPDATE `item_template` SET `requiredhonorrank` = 10 WHERE `entry` IN (15198);
-- UPDATE `item_template` SET `requiredhonorrank` = 11 WHERE `entry` IN (16401, 16403, 23278, 23279, 16393, 16397, 23280, 23281, 17562, 17564, 23282, 23283, 23274, 23275, 16392, 16396, 23284, 23285, 29594, 29595, 16405, 16406, 23286, 23287, 17594, 17596, 23288, 23289, 16369, 16391, 23290, 23291);
-- UPDATE `item_template` SET `requiredhonorrank` = 12 WHERE `entry` IN (16425, 23292, 16426, 23293, 23294, 16422, 23295, 16421, 17567, 23296, 17568, 23297, 23272, 23273, 16417, 23298, 16419, 23299, 29596, 29597, 16430, 23300, 16431, 23301, 17599, 23302, 17600, 23303, 16414, 23304, 16413, 23305);
-- UPDATE `item_template` SET `requiredhonorrank` = 14 WHERE `entry` IN (23306, 16428, 16427, 23307, 16416, 17598, 16423, 23308, 23309, 16424, 23310, 17569, 23311, 17566, 23276, 23277, 23312, 23313, 16420, 16418, 29598, 29599, 16429, 23314, 16432, 23315, 17601, 23316, 23317, 23318, 23319, 16415);
-- -- UPDATE `item_template` SET `requiredhonorrank` = 15 WHERE `entry` IN (18241, 18242, 18243, 18244);
-- UPDATE `item_template` SET `requiredhonorrank` = 16 WHERE `entry` IN (16462, 16463, 16467, 16459, 16448, 16450, 17583, 17584, 17579, 16472, 16471, 16475, 16446, 16454, 16456, 29606, 29607, 29608, 16483, 16484, 16479, 17608, 17603, 17607, 16437, 16440, 16442);
-- UPDATE `item_template` SET `requiredhonorrank` = 17 WHERE `entry` IN (16466, 16465, 16468, 17578, 16441, 16452, 16451, 16449, 17581, 17580, 17602, 16473, 16474, 16476, 16453, 16457, 16455, 29609, 29610, 29611, 16477, 16478, 16480, 17604, 17605, 16444, 16443);
-- UPDATE `item_template` SET `requiredhonorrank` = 18 WHERE `entry` IN (12584, 18825, 18827, 18830, 18833, 18836, 18838, 18843, 18847, 18855, 18865, 18867, 18869, 18873, 18876, 23451, 23452, 23453, 23454, 23455, 23456);

/* Horde Vanilla PvP Gear Rank Requirements */
-- UPDATE `item_template` SET `requiredhonorrank` = 5 WHERE `entry` IN (15197);
-- -- UPDATE `item_template` SET `requiredhonorrank` = 6 WHERE `entry` IN (18834, 18845, 18846, 18849, 18850, 18851, 18852, 18853, 29592);
-- UPDATE `item_template` SET `requiredhonorrank` = 7 WHERE `entry` IN (16341, 18427, 18461);
-- UPDATE `item_template` SET `requiredhonorrank` = 8 WHERE `entry` IN (15200, 16335, 18428);
-- UPDATE `item_template` SET `requiredhonorrank` = 9 WHERE `entry` IN (16340, 18434, 18436, 16497, 18435, 16532, 18432, 18429, 18430, 16486, 18437);
-- UPDATE `item_template` SET `requiredhonorrank` = 10 WHERE `entry` IN (15199);
-- UPDATE `item_template` SET `requiredhonorrank` = 11 WHERE `entry` IN (16531, 16530, 22843, 22862, 16494, 16496, 22863, 22852, 17576, 17577, 22865, 22855, 29600, 29601, 22864, 16498, 16499, 22856, 22857, 16519, 22867, 16518, 16343, 30710, 16509, 22868, 16510, 22858, 17616, 17617, 22869, 22859, 16485, 16487, 22870, 22860);
-- UPDATE `item_template` SET `requiredhonorrank` = 12 WHERE `entry` IN (16517, 16525, 16529, 22874, 16527, 22875, 16493, 16504, 22877, 22878, 16502, 16495, 17574, 17575, 17571, 22881, 17572, 22884, 29602, 29603, 22879, 16500, 16505, 16508, 22880, 16522, 16520, 22876, 16523, 22887, 16513, 16512, 16511, 22872, 22873, 16515, 17615, 22882, 17614, 17611, 22885, 17612, 16488, 22883, 16490, 16491, 22886);
-- UPDATE `item_template` SET `requiredhonorrank` = 14 WHERE `entry` IN (16526, 23251, 16528, 23252, 23253, 16503, 23254, 16501, 23255, 17570, 17573, 23256, 29604, 29605, 16506, 23257, 16507, 23258, 23259, 16521, 23260, 16524, 16514, 23244, 16516, 23243, 17610, 23261, 23262, 17613, 23263, 16489, 23264, 16492);
-- -- UPDATE `item_template` SET `requiredhonorrank` = 15 WHERE `entry` IN (18245, 18246, 18247, 18248);
-- UPDATE `item_template` SET `requiredhonorrank` = 16 WHERE `entry` IN (16569, 16572, 16571, 16567, 16570, 16556, 16554, 16553, 16555, 16552, 17589, 17586, 17587, 17588, 17593, 29612, 29613, 29614, 16559, 16557, 16564, 16560, 16558, 16573, 16576, 16574, 16579, 16575, 16546, 16545, 16548, 16547, 16543, 17618, 17619, 17621, 17620, 17625, 16539, 16538, 16540, 16537, 16534);
-- UPDATE `item_template` SET `requiredhonorrank` = 17 WHERE `entry` IN (16565, 16566, 16568, 16551, 16549, 16550, 17591, 17590, 17592, 29615, 29616, 29617, 16563, 16561, 16562, 16577, 16578, 16580, 16541, 16542, 16544, 17623, 17622, 17624, 16536, 16533, 16535);
-- UPDATE `item_template` SET `requiredhonorrank` = 18 WHERE `entry` IN (18831, 23459, 23464, 16345, 18866, 18828, 18837, 23457, 23465, 18877, 18848, 18871, 18868, 23461, 23467, 18840, 18835, 18844, 18826, 23458, 23466, 18860, 23462, 23468, 23469, 18874);

-- disable honor rank requirement for trinkets and mounts, because with the requirement they cannot be used.
UPDATE `item_template` SET `requiredhonorrank` = 0 WHERE `entry` IN 
(18241, 18242, 18243, 18244, 18245, 18246, 18247, 18248, 18834, 18845, 18846, 18849, 18850, 18851, 18852, 18853, 18854, 18856, 18857, 18858, 18859, 18862, 18863, 18864, 29592, 29593);

/* Temp fix: set pvp items requiredhonorrank = 0 */
UPDATE `item_template` SET `requiredhonorrank` = 0
WHERE `entry` IN (15196, 15198, 16342, 18440, 18441, 18442, 18443, 18444, 16315, 16336, 16337, 18448, 18449, 18454, 18455, 18452, 18453, 18445, 18447, 18456, 18457, 16401,
16403, 23278, 23279, 16393, 16397, 23280, 23281, 17562, 17564, 23282, 23283, 23274, 23275, 16392, 16396, 23284, 23285, 29594, 29595, 16405, 16406, 23286, 23287, 17594, 17596, 23288, 23289, 16369, 16391, 23290, 23291,
16425, 23292, 16426, 23293, 23294, 16422, 23295, 16421, 17567, 23296, 17568, 23297, 23272, 23273, 16417, 23298, 16419, 23299, 29596, 29597, 16430, 23300, 16431, 23301, 17599, 23302, 17600, 23303, 16414, 23304, 16413, 23305,
23306, 16428, 16427, 23307, 16416, 17598, 16423, 23308, 23309, 16424, 23310, 17569, 23311, 17566, 23276, 23277, 23312, 23313, 16420, 16418, 29598, 29599, 16429, 23314, 16432, 23315, 17601, 23316, 23317, 23318, 23319, 16415,
16462, 16463, 16467, 16459, 16448, 16450, 17583, 17584, 17579, 16472, 16471, 16475, 16446, 16454, 16456, 29606, 29607, 29608, 16483, 16484, 16479, 17608, 17603, 17607, 16437, 16440, 16442,
16466, 16465, 16468, 17578, 16441, 16452, 16451, 16449, 17581, 17580, 17602, 16473, 16474, 16476, 16453, 16457, 16455, 29609, 29610, 29611, 16477, 16478, 16480, 17604, 17605, 16444, 16443,
12584, 18825, 18827, 18830, 18833, 18836, 18838, 18843, 18847, 18855, 18865, 18867, 18869, 18873, 18876, 23451, 23452, 23453, 23454, 23455, 23456,
15197, 15199, 15200, 16335, 18428, 16341, 18427, 18461, 16340, 18434, 18436, 16497, 18435, 16532, 18432, 18429, 18430, 16486, 18437,
16531, 16530, 22843, 22862, 16494, 16496, 22863, 22852, 17576, 17577, 22865, 22855, 29600, 29601, 22864, 16498, 16499, 22856, 22857, 16519, 22867, 16518, 16343, 30710, 16509, 22868, 16510, 22858, 17616, 17617, 22869, 22859, 16485, 16487, 22870, 22860,
16517, 16525, 16529, 22874, 16527, 22875, 16493, 16504, 22877, 22878, 16502, 16495, 17574, 17575, 17571, 22881, 17572, 22884, 29602, 29603, 22879, 16500, 16505, 16508, 22880, 16522, 16520, 22876, 16523, 22887, 16513, 16512, 16511, 22872, 22873, 16515, 17615, 22882, 17614, 17611, 22885, 17612, 16488, 22883, 16490, 16491, 22886,
16526, 23251, 16528, 23252, 23253, 16503, 23254, 16501, 23255, 17570, 17573, 23256, 29604, 29605, 16506, 23257, 16507, 23258, 23259, 16521, 23260, 16524, 16514, 23244, 16516, 23243, 17610, 23261, 23262, 17613, 23263, 16489, 23264, 16492,
16569, 16572, 16571, 16567, 16570, 16556, 16554, 16553, 16555, 16552, 17589, 17586, 17587, 17588, 17593, 29612, 29613, 29614, 16559, 16557, 16564, 16560, 16558, 16573, 16576, 16574, 16579, 16575, 16546, 16545, 16548, 16547, 16543, 17618, 17619, 17621, 17620, 17625, 16539, 16538, 16540, 16537, 16534,
16565, 16566, 16568, 16551, 16549, 16550, 17591, 17590, 17592, 29615, 29616, 29617, 16563, 16561, 16562, 16577, 16578, 16580, 16541, 16542, 16544, 17623, 17622, 17624, 16536, 16533, 16535,
18831, 23459, 23464, 16345, 18866, 18828, 18837, 23457, 23465, 18877, 18848, 18871, 18868, 23461, 23467, 18840, 18835, 18844, 18826, 23458, 23466, 18860, 23462, 23468, 23469, 18874);

/* 1.0 - Block access to PvP vendors until BWL (Orgrimmar & Stormwind) */
UPDATE `creature_template` SET `ScriptName` = "npc_ipp_pvp_vendor_pre_tbc" WHERE `entry` IN (12799,12805,26393,26394,26396,26397,112781,112785,112793,112794,112795);
UPDATE `creature_template` SET `ScriptName` = "npc_ipp_bwl" WHERE `entry` IN (12783,12796);
