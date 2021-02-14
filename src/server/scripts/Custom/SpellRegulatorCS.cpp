#include "ScriptPCH.h"
#include "SpellRegulator.h"

class spellregulatorcs : public CommandScript
{
public:
	spellregulatorcs() : CommandScript("spellregulatorcs") {}

	std::vector<ChatCommand> GetCommands() const override
	{
		static std::vector<ChatCommand> SRCommandTable =
		{
			{ "reloadsr", SEC_ADMINISTRATOR, true, &HandleReloadSR, "" },
		};

		return SRCommandTable;
	}

	static bool HandleReloadSR(ChatHandler* handler, char const* args)
	{
		sSpellRegulator->LoadFromDB();

		return true;
	}
};

void AddSC_spellregulatorcs()
{
	new spellregulatorcs();
}