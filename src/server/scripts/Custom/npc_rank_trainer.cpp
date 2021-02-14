#include "ScriptMgr.h"
#include "WorldSession.h"
#include "ObjectMgr.h"
#include "ScriptedGossip.h"
#include "DatabaseEnv.h"
#include "SpellMgr.h"
#include "World.h"

constexpr uint32 trainerEntry = 69209;
constexpr uint32 limitPerPage = 5;
std::map<uint32, std::pair<uint32, uint32>> trainerSpells;

uint32 mapSizeWtf = 0;

enum class GossipOptions : uint32
{
	Learn,
	NextPage,
	CloseMenu
};

void LoadCreatureSpells()
{
	trainerSpells.clear();
	auto result = WorldDatabase.PQuery("SELECT SpellID, ReqLevel FROM npc_trainer WHERE ID = %u", trainerEntry);
	if (!result)
		return;
	uint32 index = 0;
	do
	{
		trainerSpells.insert({ index, std::make_pair(result->Fetch()[0].GetUInt32(), result->Fetch()[1].GetUInt32()) });
		index++;
	} while (result->NextRow());
	mapSizeWtf = index;
}

class trainer_spell_loader : public WorldScript
{
public:
	trainer_spell_loader() : WorldScript("rank_trainer_loader") {}

	void OnStartup() override
	{
		LoadCreatureSpells();
	}

	void OnConfigLoad(bool reload) override
	{
		if (reload)
			LoadCreatureSpells();
	}
};

struct npc_rank_trainer : public CreatureScript
{
public:
	npc_rank_trainer() : CreatureScript("npc_rank_trainer") {}

	bool OnGossipHello(Player* player, Creature* creature) override
	{
		ClearGossipMenuFor(player);
		uint32 index = 0;
		uint32 counter = 0;
		while (counter <= limitPerPage)
		{
			if (auto spellInfo = sSpellMgr->GetSpellInfo(trainerSpells[index].first))
			{
				if (player->HasSpell(spellInfo->Id))
				{
					index++;
					continue;
				}
				if (player->getLevel() < trainerSpells[index].second)
				{
					index++;
					continue;
				}
				if (auto spellInfoPrev = spellInfo->GetPrevRankSpell())
				{
					if (player->HasSpell(spellInfoPrev->Id))
					{
						std::ostringstream oss;
						auto locale = player->GetSession()->GetSessionDbcLocale();
						oss << spellInfo->SpellName[locale] << ": Rank(" << std::to_string(spellInfo->GetRank()) << ")";
						AddGossipItemFor(player, 0, oss.str().c_str(), spellInfo->Id, static_cast<uint32>(GossipOptions::Learn));
						counter++;
					}
				}
			}
			index++;
			
			if (index > mapSizeWtf)
				break;
		}
		if (index < mapSizeWtf)
			AddGossipItemFor(player, 0, "Next Page", counter, index);

		AddGossipItemFor(player, 0, "Close Menu", GOSSIP_SENDER_MAIN, static_cast<uint32>(GossipOptions::CloseMenu));
		SendGossipMenuFor(player, DEFAULT_GOSSIP_MESSAGE, creature->GetGUID());
		return true;
	}

	bool OnGossipSelect(Player* player, Creature* creature, uint32 sender, uint32 action) override
	{
		auto sourcedEnum = static_cast<GossipOptions>(action);
		ClearGossipMenuFor(player);

		switch (sourcedEnum)
		{
		case GossipOptions::Learn:
		{
			player->LearnSpell(sender, false);
			creature->SendPlaySpellVisual(179);
			creature->SendPlaySpellImpact(player->GetGUID(), 362);
			OnGossipHello(player, creature);
		}
		break;

		case GossipOptions::CloseMenu: {CloseGossipMenuFor(player); }break;

		default: // Next Page
		{
			uint32 counter = sender;
			uint32 index = action;
			while (counter <= limitPerPage+sender)
			{
				if (auto spellInfo = sSpellMgr->GetSpellInfo(trainerSpells[index].first))
				{
					if (player->HasSpell(spellInfo->Id))
					{
						index++;
						continue;
					}
					if (player->getLevel() < trainerSpells[index].second)
					{
						index++;
						continue;
					}
					if (auto spellInfoPrev = spellInfo->GetPrevRankSpell())
					{
						if (player->HasSpell(spellInfoPrev->Id))
						{
							std::ostringstream oss;
							auto locale = player->GetSession()->GetSessionDbcLocale();
							oss << spellInfo->SpellName[locale] << ": Rank(" << std::to_string(spellInfo->GetRank()) << ")";
							AddGossipItemFor(player, 0, oss.str().c_str(), spellInfo->Id, static_cast<uint32>(GossipOptions::Learn));
							counter++;
						}
					}
				}
				index++;

				if (index > mapSizeWtf)
					break;
			}

			if (index < mapSizeWtf)
				AddGossipItemFor(player, 0, "Next Page", counter + limitPerPage, index);

			AddGossipItemFor(player, 0, "Close Menu", GOSSIP_SENDER_MAIN, static_cast<uint32>(GossipOptions::CloseMenu));
			SendGossipMenuFor(player, DEFAULT_GOSSIP_MESSAGE, creature->GetGUID());
		}
		break;
		}
		return true;
	}
};

void AddSC_npc_rank_trainer()
{
	new npc_rank_trainer();
	new trainer_spell_loader();
}
