/*
 * This file is part of the AzerothCore Project. See AUTHORS file for Copyright information
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Affero General Public License as published by the
 * Free Software Foundation; either version 3 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "CellImpl.h"
#include "GridNotifiers.h"
#include "GridNotifiersImpl.h"
#include "IndividualProgression.h"
#include "PassiveAI.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "DBCEnums.h"
#include "ObjectMgr.h"
#include "naxxramas.h"

const float HeiganPos[2] = {2796, -3707};
const float HeiganEruptionSlope[3] =
{
    (-3685 - HeiganPos[1]) / (2724 - HeiganPos[0]),
    (-3647 - HeiganPos[1]) / (2749 - HeiganPos[0]),
    (-3637 - HeiganPos[1]) / (2771 - HeiganPos[0]),
};

inline uint8 GetEruptionSection(float x, float y)
{
    y -= HeiganPos[1];
    if (y < 1.0f)
        return 0;

    x -= HeiganPos[0];
    if (x > -1.0f)
        return 3;

    float slope = y / x;
    for (uint32 i = 0; i < 3; ++i)
    {
        if (slope > HeiganEruptionSlope[i])
            return i;
    }
    return 3;
}

ObjectData const creatureData[] =
{
    { NPC_RAZUVIOUS,    DATA_RAZUVIOUS },
    { NPC_RAZUVIOUS_40, DATA_RAZUVIOUS_40 },
    { 0,                0              }
};

ObjectData const gameObjectData[] =
{
    { 0,             0              }
};

class instance_naxxramas_combined : public InstanceMapScript
{
public:
    instance_naxxramas_combined() : InstanceMapScript("instance_naxxramas", MAP_NAXXRAMAS) { }

    InstanceScript* GetInstanceScript(InstanceMap* pMap) const override
    {
        return new instance_naxxramas_combined_InstanceMapScript(pMap);
    }

    struct instance_naxxramas_combined_InstanceMapScript : public InstanceScript
    {
        explicit instance_naxxramas_combined_InstanceMapScript(Map* pMap) : InstanceScript(pMap)
        {
            SetHeaders(DataHeader);
            SetBossNumber(MAX_ENCOUNTERS);
            LoadObjectData(creatureData, gameObjectData);
            for (auto& i : HeiganEruption)
                i.clear();

            // NPCs
            PatchwerkRoomTrash.clear();
            HeiganBackRoomAdds.clear();

            // Controls
            _horsemanKilled = 0;
            _speakTimer = 0;
            _horsemanTimer = 0;
            _screamTimer = 2 * MINUTE * IN_MILLISECONDS;
            _hadThaddiusGreet = false;
            _currentWingTaunt = SAY_FIRST_WING_TAUNT;
            _horsemanLoadDoneState = false;

            // Achievements
            abominationsKilled = 0;
            faerlinaAchievement = true;
            thaddiusAchievement = true;
            loathebAchievement = true;
            sapphironAchievement = true;
            heiganAchievement = true;
            immortalAchievement = 1;
        }

        std::set<GameObject*> HeiganEruption[4];
        std::set<GameObject*> HeiganEruptionTunnel;

        // GOs
        ObjectGuid _patchwerkGateGUID;
        ObjectGuid _gluthGateGUID;
        ObjectGuid _nothEntryGateGUID;
        ObjectGuid _nothExitGateGUID;
        ObjectGuid _heiganGateGUID;
        ObjectGuid _heiganGateExitGUID;
        ObjectGuid _heiganGateExitOldGUID;
        ObjectGuid _loathebGateGUID;
        ObjectGuid _anubGateGUID;
        ObjectGuid _anubNextGateGUID;
        ObjectGuid _faerlinaWebGUID;
        ObjectGuid _faerlinaGateGUID;
        ObjectGuid _maexxnaGateGUID;
        ObjectGuid _thaddiusGateGUID;
        ObjectGuid _gothikEnterGateGUID;
        ObjectGuid _gothikInnerGateGUID;
        ObjectGuid _gothikExitGateGUID{};
        ObjectGuid _horsemanGateGUID;
        ObjectGuid _kelthuzadFloorGUID;
        ObjectGuid _kelthuzadGateGUID;
        ObjectGuid _kelthuzadPortal1GUID;
        ObjectGuid _kelthuzadPortal2GUID;
        ObjectGuid _kelthuzadPortal3GUID;
        ObjectGuid _kelthuzadPortal4GUID;
        ObjectGuid _sapphironGateGUID;
        ObjectGuid _horsemanPortalGUID;
        ObjectGuid _loathebPortalGUID;
        ObjectGuid _maexxnaPortalGUID;
        ObjectGuid _thaddiusPortalGUID;
        ObjectGuid _deathknightEyePortalGUID;
        ObjectGuid _plagueEyePortalGUID;
        ObjectGuid _spiderEyePortalGUID;
        ObjectGuid _abomEyePortalGUID;
        ObjectGuid _deathknightGlowEyePortalGUID;
        ObjectGuid _plagueGlowEyePortalGUID;
        ObjectGuid _spiderGlowEyePortalGUID;
        ObjectGuid _abomGlowEyePortalGUID;

        // NPCs
        GuidList PatchwerkRoomTrash;
        GuidList HeiganBackRoomAdds;
        ObjectGuid _patchwerkGUID;
        ObjectGuid _thaddiusGUID;
        ObjectGuid _gothikGUID;
        ObjectGuid _stalaggGUID;
        ObjectGuid _feugenGUID;
        ObjectGuid _zeliekGUID;
        ObjectGuid _rivendareGUID;
        ObjectGuid _blaumeuxGUID;
        ObjectGuid _korthazzGUID;
        ObjectGuid _sapphironGUID;
        ObjectGuid _kelthuzadGUID;
        ObjectGuid _lichkingGUID;

        // Controls
        uint8 _horsemanKilled;
        uint32 _speakTimer;
        uint32 _horsemanTimer;
        uint32 _screamTimer;
        bool _hadThaddiusGreet;
        EventMap events;
        uint8 _currentWingTaunt;
        bool _horsemanLoadDoneState;

        // Achievements
        uint8 abominationsKilled;
        bool faerlinaAchievement;
        bool thaddiusAchievement;
        bool loathebAchievement;
        bool sapphironAchievement;
        bool heiganAchievement;
        uint32 immortalAchievement;

        void HeiganEruptSections(uint32 section)
        {
            for (uint8 i = 0; i < 4; ++i)
            {
                if (i == section)
                    continue;

                for (auto itr : HeiganEruption[i])
                {
                    itr->SendCustomAnim(itr->GetGoAnimProgress());
                    itr->CastSpell(nullptr, SPELL_ERUPTION);
                }

            }
        }

        void HeiganEruptSectionsTunnel()
        {
            // doesn't work
            for (auto itr : HeiganEruptionTunnel)
            {
                itr->SendCustomAnim(itr->GetGoAnimProgress());
                itr->CastSpell(nullptr, SPELL_ERUPTION);
            }
        }

        bool IsEncounterInProgress() const override
        {
            for (uint8 i = 0; i < MAX_ENCOUNTERS; ++i)
            {
                if (GetBossState(i) == IN_PROGRESS)
                    return true;
            }
            return false;
        }

        void OnCreatureCreate(Creature* creature) override
        {

            switch(creature->GetEntry())
            {
                case NPC_ROTTING_MAGGOT_40:
                    HeiganBackRoomAdds.push_back(creature->GetGUID());
                    return;
                case NPC_DISEASED_MAGGOT_40:
                    HeiganBackRoomAdds.push_back(creature->GetGUID());
                    return;
                case NPC_EYE_STALK_40:
                    HeiganBackRoomAdds.push_back(creature->GetGUID());
                    return;
                case NPC_PATCHWERK:
                    _patchwerkGUID = creature->GetGUID();
                    return;
                case NPC_PATCHWORK_GOLEM:
                    PatchwerkRoomTrash.push_back(creature->GetGUID());
                    return;
                case NPC_BILE_RETCHER:
                    if (creature->GetPositionY() > -3258.0f) // we want only those inside the room, not before
                        PatchwerkRoomTrash.push_back(creature->GetGUID());
                    return;
                case NPC_SLUDGE_BELCHER:
                    if (creature->GetPositionY() > -3258.0f) // we want only those inside the room, not before
                        PatchwerkRoomTrash.push_back(creature->GetGUID());
                    return;
                case NPC_MAD_SCIENTIST:
                    PatchwerkRoomTrash.push_back(creature->GetGUID());
                    return;
                case NPC_LIVING_MONSTROSITY:
                    PatchwerkRoomTrash.push_back(creature->GetGUID());
                    return;
                case NPC_SURGICAL_ASSIST:
                    PatchwerkRoomTrash.push_back(creature->GetGUID());
                    return;
                case NPC_THADDIUS:
                    _thaddiusGUID = creature->GetGUID();
                    return;
                case NPC_STALAGG:
                    _stalaggGUID = creature->GetGUID();
                    return;
                case NPC_FEUGEN:
                    _feugenGUID = creature->GetGUID();
                    return;
                case NPC_GOTHIK:
                    _gothikGUID = creature->GetGUID();
                    return;
                case NPC_LADY_BLAUMEUX:
                    _blaumeuxGUID = creature->GetGUID();
                    return;
                case NPC_SIR_ZELIEK:
                    _zeliekGUID = creature->GetGUID();
                    return;
                case NPC_BARON_RIVENDARE:
                    _rivendareGUID = creature->GetGUID();
                    return;
                case NPC_THANE_KORTHAZZ:
                    _korthazzGUID = creature->GetGUID();
                    return;
                case NPC_SAPPHIRON:
                    _sapphironGUID = creature->GetGUID();
                    return;
                case NPC_KELTHUZAD:
                    _kelthuzadGUID = creature->GetGUID();
                    return;
                case NPC_LICH_KING:
                    _lichkingGUID = creature->GetGUID();
                    return;
                // Naxx 40 NPCs
                case NPC_GOTHIK_40:
                    _gothikGUID = creature->GetGUID();
                    return;
                case NPC_PATCHWERK_40:
                    _patchwerkGUID = creature->GetGUID();
                    return;
                case NPC_PATCHWORK_GOLEM_40:
                    PatchwerkRoomTrash.push_back(creature->GetGUID());
                    return;
                case NPC_BILE_RETCHER_40:
                    if (creature->GetPositionY() > -3258.0f) // we want only those inside the room, not before
                        PatchwerkRoomTrash.push_back(creature->GetGUID());
                    return;
                case NPC_SLUDGE_BELCHER_40:
                    if (creature->GetPositionY() > -3258.0f) // we want only those inside the room, not before
                        PatchwerkRoomTrash.push_back(creature->GetGUID());
                    return;
                case NPC_MAD_SCIENTIST_40:
                    PatchwerkRoomTrash.push_back(creature->GetGUID());
                    return;
                case NPC_LIVING_MONSTROSITY_40:
                    PatchwerkRoomTrash.push_back(creature->GetGUID());
                    return;
                case NPC_SURGICAL_ASSIST_40:
                    PatchwerkRoomTrash.push_back(creature->GetGUID());
                    return;
                case NPC_THADDIUS_40:
                    _thaddiusGUID = creature->GetGUID();
                    return;
                case NPC_STALAGG_40:
                    _stalaggGUID = creature->GetGUID();
                    return;
                case NPC_FEUGEN_40:
                    _feugenGUID = creature->GetGUID();
                    return;
                case NPC_LADY_BLAUMEUX_40:
                    _blaumeuxGUID = creature->GetGUID();
                    return;
                case NPC_SIR_ZELIEK_40:
                    _zeliekGUID = creature->GetGUID();
                    return;
                case NPC_HIGHLORD_MOGRAINE_40:
                    _rivendareGUID = creature->GetGUID();
                    return;
                case NPC_THANE_KORTHAZZ_40:
                    _korthazzGUID = creature->GetGUID();
                    return;
                case NPC_SAPPHIRON_40:
                    _sapphironGUID = creature->GetGUID();
                    return;
                case NPC_KELTHUZAD_40:
                    _kelthuzadGUID = creature->GetGUID();
                    return;
                case NPC_ARCHMAGE_TARSIS:
                    creature->SetStandState(UNIT_STAND_STATE_DEAD);
                    return;
            }

            InstanceScript::OnCreatureCreate(creature);
        }

        void OnGameObjectCreate(GameObject* pGo) override
        {
            if (pGo->GetGOInfo()->displayId == 6785 || pGo->GetGOInfo()->displayId == 1287)
            {
                HeiganEruption[GetEruptionSection(pGo->GetPositionX(), pGo->GetPositionY())].insert(pGo);
                return;
            }
            if (pGo->GetGOInfo()->entry == 361001)
            {
                HeiganEruptionTunnel.insert(pGo);
                return;
            }

            switch(pGo->GetEntry())
            {
                case GO_PATCHWERK_GATE:
                    _patchwerkGateGUID = pGo->GetGUID();
                    if (GetBossState(BOSS_PATCHWERK) == DONE)
                    {
                        pGo->SetGoState(GO_STATE_ACTIVE);
                    }
                    break;
                case GO_GLUTH_GATE:
                    _gluthGateGUID = pGo->GetGUID();
                    if (GetBossState(BOSS_GLUTH) == DONE)
                    {
                        pGo->SetGoState(GO_STATE_ACTIVE);
                    }
                    break;
                case GO_NOTH_ENTRY_GATE:
                    _nothEntryGateGUID = pGo->GetGUID();
                    if (GetBossState(BOSS_NOTH) == DONE)
                    {
                        pGo->SetGoState(GO_STATE_ACTIVE);
                    }
                    break;
                case GO_NOTH_EXIT_GATE:
                    _nothExitGateGUID = pGo->GetGUID();
                    if (GetBossState(BOSS_NOTH) == DONE)
                    {
                        pGo->SetGoState(GO_STATE_ACTIVE);
                    }
                    break;
                case GO_HEIGAN_ENTRY_GATE:
                    _heiganGateGUID = pGo->GetGUID();
                    if (GetBossState(BOSS_HEIGAN) == DONE || GetBossState(BOSS_NOTH) == DONE)
                    {
                        pGo->SetGoState(GO_STATE_ACTIVE);
                    }
                    break;
                case GO_HEIGAN_EXIT_GATE:
                    _heiganGateExitGUID = pGo->GetGUID();
                    if (GetBossState(BOSS_HEIGAN) == DONE)
                    {
                        pGo->SetGoState(GO_STATE_ACTIVE);
                    }
                    break;
                case GO_HEIGAN_EXIT_GATE_OLD:
                    _heiganGateExitOldGUID = pGo->GetGUID();
                    if (GetBossState(BOSS_HEIGAN) == DONE)
                    {
                        pGo->SetGoState(GO_STATE_ACTIVE);
                    }
                    break;
                case GO_LOATHEB_GATE:
                    _loathebGateGUID = pGo->GetGUID();
                    if (GetBossState(BOSS_LOATHEB) == DONE)
                    {
                        pGo->SetGoState(GO_STATE_ACTIVE);
                    }
                    break;
                case GO_ANUB_GATE:
                    _anubGateGUID = pGo->GetGUID();
                    if (GetBossState(BOSS_ANUB) == DONE)
                    {
                        pGo->SetGoState(GO_STATE_ACTIVE);
                    }
                    break;
                case GO_ANUB_NEXT_GATE:
                    _anubNextGateGUID = pGo->GetGUID();
                    if (GetBossState(BOSS_ANUB) == DONE)
                    {
                        pGo->SetGoState(GO_STATE_ACTIVE);
                    }
                    break;
                case GO_FAERLINA_GATE:
                    _faerlinaGateGUID = pGo->GetGUID();
                    if (GetBossState(BOSS_FAERLINA) == DONE)
                    {
                        pGo->SetGoState(GO_STATE_ACTIVE);
                    }
                    break;
                case GO_FAERLINA_WEB:
                    _faerlinaWebGUID = pGo->GetGUID();
                    if (GetBossState(BOSS_FAERLINA) == DONE)
                    {
                        pGo->SetGoState(GO_STATE_ACTIVE);
                    }
                    break;
                case GO_MAEXXNA_GATE:
                    _maexxnaGateGUID = pGo->GetGUID();
                    if (GetBossState(BOSS_FAERLINA) == DONE)
                    {
                        pGo->SetGoState(GO_STATE_ACTIVE);
                    }
                    break;
                case GO_THADDIUS_GATE:
                    _thaddiusGateGUID = pGo->GetGUID();
                    if (GetBossState(BOSS_GLUTH) == DONE)
                    {
                        pGo->SetGoState(GO_STATE_ACTIVE);
                    }
                    break;
                case GO_GOTHIK_ENTER_GATE:
                    _gothikEnterGateGUID = pGo->GetGUID();
                    break;
                case GO_GOTHIK_INNER_GATE:
                    _gothikInnerGateGUID = pGo->GetGUID();
                    break;
                case GO_GOTHIK_EXIT_GATE:
                    _gothikExitGateGUID = pGo->GetGUID();
                    if (GetBossState(BOSS_GOTHIK) == DONE)
                    {
                        pGo->SetGoState(GO_STATE_ACTIVE);
                    }
                    break;
                case GO_HORSEMEN_GATE:
                    _horsemanGateGUID = pGo->GetGUID();
                    if (GetBossState(BOSS_GOTHIK) == DONE)
                    {
                        pGo->SetGoState(GO_STATE_ACTIVE);
                    }
                    break;
                case GO_KELTHUZAD_FLOOR:
                    _kelthuzadFloorGUID = pGo->GetGUID();
                    break;
                case GO_KELTHUZAD_GATE:
                    _kelthuzadGateGUID = pGo->GetGUID();
                    if (GetBossState(BOSS_SAPPHIRON) == DONE && _speakTimer == 0)
                    {
                        pGo->SetGoState(GO_STATE_ACTIVE);
                    }
                    break;
                case GO_KELTHUZAD_PORTAL_1:
                    _kelthuzadPortal1GUID = pGo->GetGUID();
                    break;
                case GO_KELTHUZAD_PORTAL_2:
                    _kelthuzadPortal2GUID = pGo->GetGUID();
                    break;
                case GO_KELTHUZAD_PORTAL_3:
                    _kelthuzadPortal3GUID = pGo->GetGUID();
                    break;
                case GO_KELTHUZAD_PORTAL_4:
                    _kelthuzadPortal4GUID = pGo->GetGUID();
                    break;
                case GO_SAPPHIRON_GATE:
                    _sapphironGateGUID = pGo->GetGUID();
                    if (GetBossState(BOSS_SAPPHIRON) == DONE)
                    {
                        pGo->SetGoState(GO_STATE_ACTIVE);
                    }
                    break;
                case GO_LOATHEB_PORTAL:
                    _loathebPortalGUID = pGo->GetGUID();
                    if (GetBossState(BOSS_LOATHEB) == DONE)
                    {
                        pGo->SetGoState(GO_STATE_ACTIVE);
                        pGo->RemoveGameObjectFlag(GO_FLAG_NOT_SELECTABLE);
                    }
                    break;
                case GO_THADDIUS_PORTAL:
                    _thaddiusPortalGUID = pGo->GetGUID();
                    if (GetBossState(BOSS_THADDIUS) == DONE)
                    {
                        pGo->SetGoState(GO_STATE_ACTIVE);
                        pGo->RemoveGameObjectFlag(GO_FLAG_NOT_SELECTABLE);
                    }
                    break;
                case GO_MAEXXNA_PORTAL:
                    _maexxnaPortalGUID = pGo->GetGUID();
                    if (GetBossState(BOSS_MAEXXNA) == DONE)
                    {
                        pGo->SetGoState(GO_STATE_ACTIVE);
                        pGo->RemoveGameObjectFlag(GO_FLAG_NOT_SELECTABLE);
                    }
                    break;
                case GO_HORSEMAN_PORTAL:
                    _horsemanPortalGUID = pGo->GetGUID();
                    if (GetBossState(BOSS_HORSEMAN) == DONE)
                    {
                        pGo->SetGoState(GO_STATE_ACTIVE);
                        pGo->RemoveGameObjectFlag(GO_FLAG_NOT_SELECTABLE);
                    }
                    break;

                // Glow portals at center-side
                case GO_DEATHKNIGHT_EYE_PORTAL:
                    _deathknightEyePortalGUID = pGo->GetGUID();
                    if (GetBossState(BOSS_HORSEMAN) == DONE)
                    {
                        pGo->SetGoState(GO_STATE_ACTIVE);
                    }
                    break;
                case GO_PLAGUE_EYE_PORTAL:
                    _plagueEyePortalGUID = pGo->GetGUID();
                    if (GetBossState(BOSS_LOATHEB) == DONE)
                    {
                        pGo->SetGoState(GO_STATE_ACTIVE);
                    }
                    break;
                case GO_SPIDER_EYE_PORTAL:
                    _spiderEyePortalGUID = pGo->GetGUID();
                    if (GetBossState(BOSS_MAEXXNA) == DONE)
                    {
                        pGo->SetGoState(GO_STATE_ACTIVE);
                    }
                    break;
                case GO_ABOM_EYE_PORTAL:
                    _abomEyePortalGUID = pGo->GetGUID();
                    if (GetBossState(BOSS_THADDIUS) == DONE)
                    {
                        pGo->SetGoState(GO_STATE_ACTIVE);
                    }
                    break;

                // Glow portals at boss-side
                case GO_MILI_EYE_RAMP_BOSS:
                    _deathknightGlowEyePortalGUID = pGo->GetGUID();
                    if (GetBossState(BOSS_HORSEMAN) == DONE)
                    {
                        pGo->SetGoState(GO_STATE_ACTIVE);
                    }
                    break;
                case GO_PLAG_EYE_RAMP_BOSS:
                    _plagueGlowEyePortalGUID = pGo->GetGUID();
                    if (GetBossState(BOSS_LOATHEB) == DONE)
                    {
                        pGo->SetGoState(GO_STATE_ACTIVE);
                    }
                    break;
                case GO_ARAC_EYE_RAMP_BOSS:
                    _spiderGlowEyePortalGUID = pGo->GetGUID();
                    if (GetBossState(BOSS_MAEXXNA) == DONE)
                    {
                        pGo->SetGoState(GO_STATE_ACTIVE);
                    }
                    break;
                case GO_CONS_EYE_RAMP_BOSS:
                    _abomGlowEyePortalGUID = pGo->GetGUID();
                    if (GetBossState(BOSS_THADDIUS) == DONE)
                    {
                        pGo->SetGoState(GO_STATE_ACTIVE);
                    }
                    break;
            }

            InstanceScript::OnGameObjectCreate(pGo);
        }

        void OnGameObjectRemove(GameObject* pGo) override
        {
            if (pGo->GetGOInfo()->displayId == 6785 || pGo->GetGOInfo()->displayId == 1287)
            {
                uint32 section = GetEruptionSection(pGo->GetPositionX(), pGo->GetPositionY());
                HeiganEruption[section].erase(pGo);
                return;
            }
            if (pGo->GetEntry() == GO_SAPPHIRON_BIRTH)
            {
                if (Creature* cr = instance->GetCreature(_sapphironGUID))
                {
                    cr->AI()->DoAction(ACTION_SAPPHIRON_BIRTH);
                }
            }
        }

        bool CheckAchievementCriteriaMeet(uint32 criteria_id, Player const*  /*source*/, Unit const*  /*target*/, uint32  /*miscvalue1*/) override
        {
            if (instance->GetDifficulty() == RAID_DIFFICULTY_10MAN_HEROIC)
            {
                return false; // No achievements in Naxx 40
            }
            switch (criteria_id)
            {
                case 7600: // And They Would All Go Down Together (10 player)
                case 7601: // And They Would All Go Down Together (25 player)
                    return (_horsemanTimer < 15 * IN_MILLISECONDS);
                case 7614: // Just Can't Get Enough (10 player)
                case 7615: // Just Can't Get Enough (25 player)
                    return abominationsKilled >= 18;
                case 7265: // Momma Said Knock You Out (10 player)
                case 7549: // Momma Said Knock You Out (25 player)
                    return faerlinaAchievement;
                case 7604: // Shocking! (10 player)
                case 7605: // Shocking! (25 player)
                    return thaddiusAchievement;
                case 7612: // Spore Loser (10 player)
                case 7613: // Spore Loser (25 player)
                    return loathebAchievement;
                case 7264: // The Safety Dance (10 player)
                case 7548: // The Safety Dance (25 player)
                    return heiganAchievement;
                case 7608: // Subtraction (10 player)
                // The Dedicated few (10 player)
                case 6802:
                case 7146:
                case 7147:
                case 7148:
                case 7149:
                case 7150:
                case 7151:
                case 7152:
                case 7153:
                case 7154:
                case 7155:
                case 7156:
                case 7157:
                case 7158:
                    return (instance->GetPlayersCountExceptGMs() < 9);
                case 7609: // Subtraction (25 player)
                // The Dedicated few (25 player)
                case 7159:
                case 7160:
                case 7161:
                case 7162:
                case 7163:
                case 7164:
                case 7165:
                case 7166:
                case 7167:
                case 7168:
                case 7169:
                case 7170:
                case 7171:
                case 7172:
                    return (instance->GetPlayersCountExceptGMs() < 21);
                case 7567: // The Hundred Club (10 player)
                case 7568: // The Hundred Club (25 player)
                    return sapphironAchievement;
                // The Undying
                case 7617:
                case 13237:
                case 13238:
                case 13239:
                case 13240:
                // The Immortal
                case 7616:
                case 13233:
                case 13234:
                case 13235:
                case 13236:
                    {
                        uint8 count = 0;
                        for (uint8 i = 0; i < MAX_ENCOUNTERS; ++i)
                        {
                            if (GetBossState(i) == NOT_STARTED)
                                ++count;
                        }
                        return !count && immortalAchievement;
                    }

                default:
                    return false;
            }
        }

        void SetData(uint32 id, uint32 data) override
        {
            switch(id)
            {
                case DATA_ABOMINATION_KILLED:
                    abominationsKilled++;
                    return;
                case DATA_FRENZY_REMOVED:
                    faerlinaAchievement = false;
                    return;
                case DATA_CHARGES_CROSSED:
                    thaddiusAchievement = false;
                    return;
                case DATA_SPORE_KILLED:
                    loathebAchievement = false;
                    return;
                case DATA_HUNDRED_CLUB:
                    sapphironAchievement = false;
                    return;
                case DATA_DANCE_FAIL:
                    heiganAchievement = false;
                    return;
                case DATA_IMMORTAL_FAIL:
                    immortalAchievement = 0;
                    SaveToDB();
                    return;
                case DATA_HEIGAN_ERUPTION:
                    HeiganEruptSections(data);
                    return;
                case DATA_HEIGAN_ERUPTION_TUNNEL_40:
                    HeiganEruptSectionsTunnel();
                    return;
                case DATA_HAD_THADDIUS_GREET:
                    _hadThaddiusGreet = (data == 1);
                default:
                    return;
            }
        }

        uint32 GetData(uint32 id) const override
        {
            if (id == DATA_HAD_THADDIUS_GREET && _hadThaddiusGreet)
                return 1;

            return 0;
        }

        void Load(const char* data) override
        {
            _horsemanLoadDoneState = true;
            InstanceScript::Load(data);
            if (GetBossState(BOSS_HORSEMAN) != DONE)
            {
                _horsemanLoadDoneState = false;
            }
        }

        bool SetBossState(uint32 bossId, EncounterState state) override
        {
            // pull all the trash if not killed
            if (bossId == BOSS_PATCHWERK && state == IN_PROGRESS)
            {
                if (Creature* patch = instance->GetCreature(_patchwerkGUID))
                {
                    for (auto& itr : PatchwerkRoomTrash)
                    {
                        Creature* trash = ObjectAccessor::GetCreature(*patch, itr);
                        if (trash && trash->IsAlive() && !trash->IsInCombat())
                        {
                            trash->AI()->AttackStart(patch->GetVictim());
                        }
                    }
                }
            }

            // Horseman handling
            if (bossId == BOSS_HORSEMAN)
            {
                if (state == DONE && !_horsemanLoadDoneState)
                {
                    _horsemanTimer++;
                    _horsemanKilled++;
                    if (_horsemanKilled < 4)
                    {
                        return false;
                    }
                    // All horsemans are killed
                    if (Creature* cr = instance->GetCreature(_blaumeuxGUID))
                    {
                        cr->CastSpell(cr, 59450, true); // credit
                    }
                }

                // respawn
                else if (state == NOT_STARTED && _horsemanKilled > 0)
                {
                    Creature* cr;
                    _horsemanKilled = 0;
                    if ((cr = instance->GetCreature(_blaumeuxGUID)))
                    {
                        if (!cr->IsAlive())
                        {
                            cr->SetPosition(cr->GetHomePosition());
                            cr->Respawn();
                        }
                    }
                    if ((cr = instance->GetCreature(_rivendareGUID)))
                    {
                        if (!cr->IsAlive())
                        {
                            cr->SetPosition(cr->GetHomePosition());
                            cr->Respawn();
                        }
                    }
                    if ((cr = instance->GetCreature(_zeliekGUID)))
                    {
                        if (!cr->IsAlive())
                        {
                            cr->SetPosition(cr->GetHomePosition());
                            cr->Respawn();
                        }
                    }
                    if ((cr = instance->GetCreature(_korthazzGUID)))
                    {
                        if (!cr->IsAlive())
                        {
                            cr->SetPosition(cr->GetHomePosition());
                            cr->Respawn();
                        }
                    }
                }
                else if (state == IN_PROGRESS)
                {
                    Creature* cr;
                    if ((cr = instance->GetCreature(_blaumeuxGUID)))
                    {
                        cr->SetInCombatWithZone();
                    }
                    if ((cr = instance->GetCreature(_rivendareGUID)))
                    {
                        cr->SetInCombatWithZone();
                    }
                    if ((cr = instance->GetCreature(_zeliekGUID)))
                    {
                        cr->SetInCombatWithZone();
                    }
                    if ((cr = instance->GetCreature(_korthazzGUID)))
                    {
                        cr->SetInCombatWithZone();
                    }
                }

                if (state == NOT_STARTED)
                {
                    _horsemanTimer = 0;
                }
            }

            if (!InstanceScript::SetBossState(bossId, state))
                return false;

            // Bosses data
            switch(bossId)
            {
                case BOSS_KELTHUZAD:
                    if (state == NOT_STARTED)
                    {
                        abominationsKilled = 0;
                    }
                    break;
                case BOSS_FAERLINA:
                    if (state == NOT_STARTED)
                    {
                        faerlinaAchievement = true;
                    }
                    break;
                case BOSS_THADDIUS:
                    if (state == NOT_STARTED)
                    {
                        thaddiusAchievement = true;
                    }
                    break;
                case BOSS_LOATHEB:
                    if (state == NOT_STARTED)
                    {
                        loathebAchievement = true;
                    }
                    break;
                case BOSS_HEIGAN:
                    if (state == NOT_STARTED)
                    {
                        heiganAchievement = true;
                    }
                    break;
                case BOSS_SAPPHIRON:
                    if (state == DONE)
                    {
                        _speakTimer = 1;
                        // Load KT's grid so he can talk
                        instance->LoadGrid(3763.43f, -5115.87f);
                    }
                    else if (state == NOT_STARTED)
                    {
                        sapphironAchievement = true;
                    }
                    break;
                default:
                    break;
            }

            // Save instance and open gates
            if (state == DONE)
            {
                SaveToDB();

                switch (bossId)
                {
                    case BOSS_PATCHWERK:
                        if (GameObject* go = instance->GetGameObject(_patchwerkGateGUID))
                        {
                            go->SetGoState(GO_STATE_ACTIVE);
                        }
                        break;
                    case BOSS_GLUTH:
                        if (GameObject* go = instance->GetGameObject(_gluthGateGUID))
                        {
                            go->SetGoState(GO_STATE_ACTIVE);
                        }
                        if (GameObject* go = instance->GetGameObject(_thaddiusGateGUID))
                        {
                            go->SetGoState(GO_STATE_ACTIVE);
                        }
                        break;
                    case BOSS_NOTH:
                        if (GameObject* go = instance->GetGameObject(_nothExitGateGUID))
                        {
                            go->SetGoState(GO_STATE_ACTIVE);
                        }
                        if (GameObject* go = instance->GetGameObject(_heiganGateGUID))
                        {
                            go->SetGoState(GO_STATE_ACTIVE);
                        }
                        break;
                    case BOSS_HEIGAN:
                        for (auto& mobGUID : HeiganBackRoomAdds)
                        {
                            if (Creature* mob = instance->GetCreature(mobGUID))
                            {
                                mob->DespawnOrUnsummon();
                            }
                        }
                        if (GameObject* go = instance->GetGameObject(_heiganGateGUID))
                        {
                            go->SetGoState(GO_STATE_ACTIVE);
                        }
                        if (GameObject* go = instance->GetGameObject(_heiganGateExitGUID))
                        {
                            go->SetGoState(GO_STATE_ACTIVE);
                        }
                        if (GameObject* go = instance->GetGameObject(_heiganGateExitOldGUID))
                        {
                            go->SetGoState(GO_STATE_ACTIVE);
                        }
                        break;
                    case BOSS_LOATHEB:
                        if (GameObject* go = instance->GetGameObject(_loathebGateGUID))
                        {
                            go->SetGoState(GO_STATE_ACTIVE);
                        }
                        if (GameObject* go = instance->GetGameObject(_loathebPortalGUID))
                        {
                            go->SetGoState(GO_STATE_ACTIVE);
                            go->RemoveGameObjectFlag(GO_FLAG_NOT_SELECTABLE);
                        }
                        if (GameObject* go = instance->GetGameObject(_plagueEyePortalGUID))
                        {
                            go->SetGoState(GO_STATE_ACTIVE);
                        }
                        if (GameObject* go = instance->GetGameObject(_plagueGlowEyePortalGUID))
                        {
                            go->SetGoState(GO_STATE_ACTIVE);
                        }
                        events.ScheduleEvent(EVENT_KELTHUZAD_WING_TAUNT, 6000);
                        break;
                    case BOSS_ANUB:
                        if (GameObject* go = instance->GetGameObject(_anubGateGUID))
                        {
                            go->SetGoState(GO_STATE_ACTIVE);
                        }
                        if (GameObject* go = instance->GetGameObject(_anubNextGateGUID))
                        {
                            go->SetGoState(GO_STATE_ACTIVE);
                        }
                        break;
                    case BOSS_FAERLINA:
                        if (GameObject* go = instance->GetGameObject(_faerlinaGateGUID))
                        {
                            go->SetGoState(GO_STATE_ACTIVE);
                        }
                        if (GameObject* go = instance->GetGameObject(_maexxnaGateGUID))
                        {
                            go->SetGoState(GO_STATE_ACTIVE);
                        }
                        break;
                    case BOSS_MAEXXNA:
                        if (GameObject* go = instance->GetGameObject(_maexxnaGateGUID))
                        {
                            go->SetGoState(GO_STATE_ACTIVE);
                        }
                        if (GameObject* go = instance->GetGameObject(_maexxnaPortalGUID))
                        {
                            go->SetGoState(GO_STATE_ACTIVE);
                            go->RemoveGameObjectFlag(GO_FLAG_NOT_SELECTABLE);
                        }
                        if (GameObject* go = instance->GetGameObject(_spiderEyePortalGUID))
                        {
                            go->SetGoState(GO_STATE_ACTIVE);
                        }
                        if (GameObject* go = instance->GetGameObject(_spiderGlowEyePortalGUID))
                        {
                            go->SetGoState(GO_STATE_ACTIVE);
                        }
                        events.ScheduleEvent(EVENT_KELTHUZAD_WING_TAUNT, 6000);
                        break;
                    case BOSS_GOTHIK:
                        if (GameObject* go = instance->GetGameObject(_gothikEnterGateGUID))
                        {
                            go->SetGoState(GO_STATE_ACTIVE);
                        }
                        if (GameObject* go = instance->GetGameObject(_gothikExitGateGUID))
                        {
                            go->SetGoState(GO_STATE_ACTIVE);
                        }
                        if (GameObject* go = instance->GetGameObject(_horsemanGateGUID))
                        {
                            go->SetGoState(GO_STATE_ACTIVE);
                        }
                        break;
                    case BOSS_SAPPHIRON:
                        events.ScheduleEvent(EVENT_FROSTWYRM_WATERFALL_DOOR, 5000);
                        break;
                    case BOSS_THADDIUS:
                        if (GameObject* go = instance->GetGameObject(_thaddiusPortalGUID))
                        {
                            go->SetGoState(GO_STATE_ACTIVE);
                            go->RemoveGameObjectFlag(GO_FLAG_NOT_SELECTABLE);
                        }
                        if (GameObject* go = instance->GetGameObject(_abomEyePortalGUID))
                        {
                            go->SetGoState(GO_STATE_ACTIVE);
                        }
                        if (GameObject* go = instance->GetGameObject(_abomGlowEyePortalGUID))
                        {
                            go->SetGoState(GO_STATE_ACTIVE);
                        }
                        events.ScheduleEvent(EVENT_KELTHUZAD_WING_TAUNT, 6000);
                        break;
                    case BOSS_HORSEMAN:
                        if (GameObject* go = instance->GetGameObject(_horsemanPortalGUID))
                        {
                            go->SetGoState(GO_STATE_ACTIVE);
                            go->RemoveGameObjectFlag(GO_FLAG_NOT_SELECTABLE);
                        }
                        if (GameObject* go = instance->GetGameObject(_deathknightEyePortalGUID))
                        {
                            go->SetGoState(GO_STATE_ACTIVE);
                        }
                        if (GameObject* go = instance->GetGameObject(_deathknightGlowEyePortalGUID))
                        {
                            go->SetGoState(GO_STATE_ACTIVE);
                        }
                        events.ScheduleEvent(EVENT_KELTHUZAD_WING_TAUNT, 6000);
                        break;
                    default:
                        break;
                }
            }
            return true;
        }

        void Update(uint32 diff) override
        {
            if (_speakTimer)
            {
                Creature* kel = instance->GetCreature(_kelthuzadGUID);
                Creature* lich = instance->GetCreature(_lichkingGUID);
                if (kel && lich)
                {
                    _speakTimer += diff;
                }
                else
                {
                    return;
                }
                if (_speakTimer > 10000 && _speakTimer < 20000)
                {
                    kel->AI()->Talk(SAY_SAPP_DIALOG1);
                    _speakTimer = 20000;
                }
                else if (_speakTimer > 30000 && _speakTimer < 40000)
                {
                    lich->AI()->Talk(SAY_SAPP_DIALOG2_LICH);
                    _speakTimer = 40000;
                }
                else if (_speakTimer > 54000 && _speakTimer < 60000)
                {
                    kel->AI()->Talk(SAY_SAPP_DIALOG3);
                    _speakTimer = 60000;
                }
                else if (_speakTimer > 70000 && _speakTimer < 80000)
                {
                    lich->AI()->Talk(SAY_SAPP_DIALOG4_LICH);
                    _speakTimer = 80000;
                }
                else if (_speakTimer > 92000 && _speakTimer < 100000)
                {
                    kel->AI()->Talk(SAY_SAPP_DIALOG5);
                    _speakTimer = 100000;
                }
                else if (_speakTimer > 105000)
                {
                    kel->AI()->Talk(SAY_SAPP_DIALOG6);
                    _speakTimer = 0;
                    if (GameObject* go = instance->GetGameObject(_kelthuzadGateGUID))
                    {
                        go->SetGoState(GO_STATE_ACTIVE);
                    }
                }
            }

            // And They would all
            if (_horsemanTimer)
            {
                _horsemanTimer += diff;
            }

            if (_screamTimer && GetBossState(BOSS_THADDIUS) != DONE)
            {
                if (_screamTimer <= diff)
                {
                    instance->PlayDirectSoundToMap(SOUND_SCREAM + urand(0, 3));
                    _screamTimer = (2 * MINUTE + urand(0, 30)) * IN_MILLISECONDS;
                }
                else
                {
                    _screamTimer -= diff;
                }
            }

            events.Update(diff);
            switch (events.ExecuteEvent())
            {
                case EVENT_KELTHUZAD_WING_TAUNT:
                    // Loads Kel'Thuzad's grid. We need this as he must be active in order for his texts to work.
                    instance->LoadGrid(3749.67f, -5114.06f);
                    if (Creature* kelthuzad = instance->GetCreature(_kelthuzadGUID))
                    {
                        kelthuzad->AI()->Talk(_currentWingTaunt);
                    }
                    ++_currentWingTaunt;
                    break;
                case EVENT_FROSTWYRM_WATERFALL_DOOR:
                    if (GameObject* go = instance->GetGameObject(_sapphironGateGUID))
                    {
                        go->SetGoState(GO_STATE_ACTIVE);
                    }
                    break;
            }
        }

        ObjectGuid GetGuidData(uint32 id) const override
        {
            switch (id)
            {
                // GameObjects
                case DATA_HEIGAN_ENTER_GATE:
                    return _heiganGateGUID;
                case DATA_HEIGAN_EXIT_GATE_OLD_40:
                    return _heiganGateExitOldGUID;
                case DATA_HEIGAN_EXIT_GATE_40:
                    return _heiganGateExitGUID;
                case DATA_LOATHEB_GATE:
                    return _loathebGateGUID;
                case DATA_ANUB_GATE:
                    return _anubGateGUID;
                case DATA_FAERLINA_WEB:
                    return _faerlinaWebGUID;
                case DATA_MAEXXNA_GATE:
                    return _maexxnaGateGUID;
                case DATA_GOTHIK_ENTER_GATE:
                    return _gothikEnterGateGUID;
                case DATA_GOTHIK_INNER_GATE:
                    return _gothikInnerGateGUID;
                case DATA_GOTHIK_EXIT_GATE:
                    return _gothikExitGateGUID;
                case DATA_HORSEMEN_GATE:
                    return _horsemanGateGUID;
                case DATA_THADDIUS_GATE:
                    return _thaddiusGateGUID;
                case DATA_NOTH_ENTRY_GATE:
                    return _nothEntryGateGUID;
                case DATA_KELTHUZAD_FLOOR:
                    return _kelthuzadFloorGUID;
                case DATA_KELTHUZAD_GATE:
                    return _kelthuzadGateGUID;
                case DATA_KELTHUZAD_PORTAL_1:
                    return _kelthuzadPortal1GUID;
                case DATA_KELTHUZAD_PORTAL_2:
                    return _kelthuzadPortal2GUID;
                case DATA_KELTHUZAD_PORTAL_3:
                    return _kelthuzadPortal3GUID;
                case DATA_KELTHUZAD_PORTAL_4:
                    return _kelthuzadPortal4GUID;

                // NPCs
                case DATA_THADDIUS_BOSS:
                    return _thaddiusGUID;
                case DATA_STALAGG_BOSS:
                    return _stalaggGUID;
                case DATA_FEUGEN_BOSS:
                    return _feugenGUID;
                case DATA_GOTHIK_BOSS:
                    return _gothikGUID;
                case DATA_LICH_KING_BOSS:
                    return _lichkingGUID;
                default:
                    break;
            }

            return ObjectGuid::Empty;
        }

        void ReadSaveDataMore(std::istringstream& data) override
            {
            data >> immortalAchievement;
                    }

        void WriteSaveDataMore(std::ostringstream& data) override
            {
            data << immortalAchievement;
        }
    };
};

class boss_naxxramas_misc : public CreatureScript
{
public:
    boss_naxxramas_misc() : CreatureScript("boss_naxxramas_misc") { }

    CreatureAI* GetAI(Creature* pCreature) const override
    {
        return GetNaxxramasAI<boss_naxxramas_miscAI>(pCreature);
    }

    struct boss_naxxramas_miscAI : public NullCreatureAI
    {
        explicit boss_naxxramas_miscAI(Creature* c) : NullCreatureAI(c)
        {
            timer = 0;
        }

        uint32 timer;

        void JustDied(Unit* /*killer*/) override
        {
            if (me->GetEntry() == NPC_MR_BIGGLESWORTH && me->GetInstanceScript())
            {
                if (Creature* cr = me->SummonCreature(20350/*NPC_KELTHUZAD*/, *me, TEMPSUMMON_TIMED_DESPAWN, 1))
                {
                    cr->SetDisplayId(11686);
                    cr->AI()->Talk(SAY_CAT_DIED);
                }
            }
        }

        void UpdateAI(uint32 diff) override
        {
            if (me->GetEntry() == NPC_NAXXRAMAS_TRIGGER)
            {
                timer += diff;
                if (timer >= 5000)
                {
                    if (Creature* cr = me->SummonCreature(NPC_LIVING_POISON, 3128.59, -3118.81, 293.346, 4.76754, TEMPSUMMON_TIMED_DESPAWN, 15200))
                    {
                        cr->AddUnitMovementFlag(MOVEMENTFLAG_WALKING);
                        cr->GetMotionMaster()->MovePoint(0, 3130.322, -3156.51, 293.324, false);
                    }
                    if (Creature* cr = me->SummonCreature(NPC_LIVING_POISON, *me, TEMPSUMMON_TIMED_DESPAWN, 14800))
                    {
                        cr->AddUnitMovementFlag(MOVEMENTFLAG_WALKING);
                        cr->GetMotionMaster()->MovePoint(0, 3144.779, -3158.416, 293.324, false);
                    }
                    if (Creature* cr = me->SummonCreature(NPC_LIVING_POISON, 3175.42, -3134.86, 293.34, 4.284, TEMPSUMMON_TIMED_DESPAWN, 14800))
                    {
                        cr->AddUnitMovementFlag(MOVEMENTFLAG_WALKING);
                        cr->GetMotionMaster()->MovePoint(0, 3158.778, -3164.201, 293.312, false);
                    }
                    timer = 0;
                }
            }
            else if (me->GetEntry() == NPC_LIVING_POISON)
            {
                Unit* target = nullptr;
                Acore::AnyUnfriendlyUnitInObjectRangeCheck u_check(me, me, 0.5f);
                Acore::UnitLastSearcher<Acore::AnyUnfriendlyUnitInObjectRangeCheck> searcher(me, target, u_check);
                Cell::VisitAllObjects(me, searcher, 1.5f);
                if (target)
                {
                    me->CastSpell(me, SPELL_FROGGER_EXPLODE, true);
                }
            }
        }
    };
};

const Position sapphironEntryTP = { 3498.300049f, -5349.490234f, 144.968002f, 1.3698910f };

class at_naxxramas_hub_portal : public AreaTriggerScript
{
public:
    at_naxxramas_hub_portal() : AreaTriggerScript("at_naxxramas_hub_portal") { }

    bool OnTrigger(Player* player, AreaTrigger const* /*areaTrigger*/) override
    {
        if (!player->IsAlive() || player->IsInCombat())
            return false;

        InstanceScript* instance = player->GetInstanceScript();
        if (!instance)
            return false;

        if ((player->GetMap()->GetSpawnMode() == RAID_DIFFICULTY_10MAN_HEROIC && sIndividualProgression->naxxSkipToSaphiron) 
        || (player->GetMap()->GetSpawnMode() != RAID_DIFFICULTY_10MAN_HEROIC && sIndividualProgression->hasPassedProgression(player, PROGRESSION_WOTLK_TIER_1)))
        {
            player->TeleportTo(MAP_NAXXRAMAS, sapphironEntryTP.m_positionX, sapphironEntryTP.m_positionY, sapphironEntryTP.m_positionZ, sapphironEntryTP.m_orientation);
            return true;
        }

        if ((instance->GetBossState(BOSS_MAEXXNA)  != DONE) ||
            (instance->GetBossState(BOSS_LOATHEB)  != DONE) ||
            (instance->GetBossState(BOSS_THADDIUS) != DONE) ||
            (instance->GetBossState(BOSS_HORSEMAN) != DONE))
            return false;

        player->TeleportTo(MAP_NAXXRAMAS, sapphironEntryTP.m_positionX, sapphironEntryTP.m_positionY, sapphironEntryTP.m_positionZ, sapphironEntryTP.m_orientation);
        return true;
    }
};

class NaxxPlayerScript : public PlayerScript
{
public:
    NaxxPlayerScript() : PlayerScript("NaxxPlayerScript") { }

    void OnPlayerBeforeChooseGraveyard(Player* player, TeamId /*teamId*/, bool /*nearCorpse*/, uint32& graveyardOverride) override
    {
        if (player->GetMapId() == MAP_NAXXRAMAS && player->GetMap()->GetSpawnMode() == RAID_DIFFICULTY_10MAN_HEROIC)
        {
            graveyardOverride = NAXX40_GRAVEYARD;
        }
    }
};

class naxx_northrend_entrance : public AreaTriggerScript
{
public:
    naxx_northrend_entrance() : AreaTriggerScript("naxx_northrend_entrance") { }

    bool OnTrigger(Player* player, AreaTrigger const* areaTrigger) override
    {
        // Do not allow entrance to Naxx 40 from Northrend
        // Change 10 man heroic to regular 10 man, as when 10 man heroic is not available
        Difficulty diff = player->GetGroup() ? player->GetGroup()->GetDifficulty(true) : player->GetDifficulty(true);
        if (diff == RAID_DIFFICULTY_10MAN_HEROIC)
        {
            player->SetRaidDifficulty(RAID_DIFFICULTY_10MAN_NORMAL);
            player->SendRaidDifficulty(true);
        }
        switch (areaTrigger->entry)
        {
            // Naxx 10 and 25 entrances
            case 5191:
                player->TeleportTo(MAP_NAXXRAMAS, 3005.68f, -3447.77f, 293.93f, 4.65f);
                break;
            case 5192:
                player->TeleportTo(MAP_NAXXRAMAS, 3019.34f, -3434.36f, 293.99f, 6.27f);
                break;
            case 5193:
                player->TeleportTo(MAP_NAXXRAMAS, 3005.9f, -3420.58f, 294.11f, 1.58f);
                break;
            case 5194:
                player->TeleportTo(MAP_NAXXRAMAS, 2992.5f, -3434.42f, 293.94f, 3.13f);
                break;
        }

        return true;
    }
};

class naxx_exit_trigger : public AreaTriggerScript
{
public:
    naxx_exit_trigger() : AreaTriggerScript("naxx_exit_trigger") { }

    bool OnTrigger(Player* player, AreaTrigger const* areaTrigger) override
    {
        if (player->GetMap()->GetSpawnMode() == RAID_DIFFICULTY_10MAN_HEROIC)
        {
            // Naxx 40 cannot be exited via portals, as in Classic
            if (!sIndividualProgression->naxxExitViaPortals)
                return false;

            switch (areaTrigger->entry) // Naxx 40 can be exited via portals (option in conf)
            {
                case 5196:
                case 5197:
                case 5198:
                case 5199:
                    player->TeleportTo(0, 3091.26f, -3874.52f, 138.36f, 3.31f);
                    return true;
            }

            return false;
        }
        switch (areaTrigger->entry)
        {
            // Naxx 10 and 25 exits
            case 5196:
                player->TeleportTo(571, 3679.25f, -1278.58f, 243.55f, 2.39f);
                break;
            case 5197:
                player->TeleportTo(571, 3679.03f, -1259.68f, 243.55f, 3.98f);
                break;
            case 5198:
                player->TeleportTo(571, 3661.14f, -1279.55f, 243.55f, 0.82f);
                break;
            case 5199:
                player->TeleportTo(571, 3660.01f, -1260.99f, 243.55f, 5.51f);
                break;
        }
        return true;
    }
};

class NaxxEntryFlag_AllMapScript : public AllMapScript
{
public:
    NaxxEntryFlag_AllMapScript() : AllMapScript("NaxxEntryFlag_AllMapScript") { }

    void OnPlayerEnterAll(Map* map, Player* player) override
    {
        if (player->IsGameMaster())
            return;

        // Check if mapId equals to Naxxramas (mapId: 533)
        if (map->GetId() != 533)
            return;

        // Cast on player Naxxramas Entry Flag Trigger DND - Classic (spellID: 29296)
        if (player->GetQuestStatus(NAXX40_ENTRANCE_FLAG) != QUEST_STATUS_REWARDED)
        {
            // Mark player as having entered
            Quest const* quest = sObjectMgr->GetQuestTemplate(NAXX40_ENTRANCE_FLAG);
            player->AddQuest(quest, nullptr);
            player->CompleteQuest(NAXX40_ENTRANCE_FLAG);
            player->RewardQuest(quest, 0, player, false, false);
            // Cast on player Naxxramas Entry Flag Trigger DND - Classic (spellID: 29296)
            player->CastSpell(player, 29296, true); // for visual effect only, possible crash if cast on login
        }
    }
};

void AddSC_instance_naxxramas_combined()
{
    new instance_naxxramas_combined();
//    new boss_naxxramas_misc();
    new at_naxxramas_hub_portal();
    new NaxxPlayerScript();
    new naxx_exit_trigger();
    new naxx_northrend_entrance();
    new NaxxEntryFlag_AllMapScript();
}
