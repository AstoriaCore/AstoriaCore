#include "ScriptPCH.h"
#include "SpellRegulator.h"
#include "MobRegulator.h"
#include "MapRegulator.h"

class regulatorcs : public CommandScript
{
public:
	regulatorcs() : CommandScript("regulatorcs") {}

	std::vector<ChatCommand> GetCommands() const override
	{
		static std::vector<ChatCommand> SRCommandTable =
		{
			{ "reloadsr", SEC_ADMINISTRATOR, true, &HandleReloadSR, "" },
			{ "reloadmobr", SEC_ADMINISTRATOR, true, &HandleReloadMobR, "" },
			{ "reloadmapr", SEC_ADMINISTRATOR, true, &HandleReloadMapR, "" }
		};

		return SRCommandTable;
	}

	static bool HandleReloadSR(ChatHandler* handler, char const* args)
	{
		sSpellRegulator->LoadFromDB();
		handler->SendSysMessage("Reloaded spell regulator.");
		return true;
	}

	static bool HandleReloadMobR(ChatHandler* handler, char const* args)
	{
		sMobRegulator->LoadFromDB();
		handler->SendSysMessage("Reloaded mob regulator.");
		return true;
	}

	static bool HandleReloadMapR(ChatHandler* handler, char const* args)
	{
		sMapRegulator->LoadFromDB();
		handler->SendSysMessage("Reloaded map regulator.");
		return true;
	}
};

void AddSC_regulatorcs()
{
	new regulatorcs();
}