class X2ChooseYourAliens_Helper extends Object config(DisableAliens);

var config array<name> DisableAlien;

static function bool IsUnitEnabled(name TemplateName)
{
	local UnitToggle Toggle;

	if (default.DisableAlien.Find(TemplateName) != INDEX_NONE)
	{
		return false;
	}

	foreach class'MCM_UIScreenListener_ChooseYourAliens'.default.UnitToggles(Toggle)
	{
		if (Toggle.TemplateName == TemplateName)
		{
			return Toggle.IsEnabled;
		}
	}

	return true;
}

static function ApplyToggle(X2CharacterTemplate CharacterTemplate)
{
	if (!IsUnitEnabled(CharacterTemplate.DataName))
	{
		if (CharacterTemplate.SpawnRequirements.RequiredTechs.Find('NullTech') == INDEX_NONE)
		{
			CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
		}
	}
	else
	{
		CharacterTemplate.SpawnRequirements.RequiredTechs.RemoveItem('NullTech');
	}
}

static function ApplyToggleAllDifficulties(name TemplateName)
{
	local X2CharacterTemplateManager CharacterTemplateManager;
	local array<X2DataTemplate> TemplatesAllDifficulties;
	local X2DataTemplate Template;
	local X2CharacterTemplate CharacterTemplate;

	CharacterTemplateManager = class'X2CharacterTemplateManager'.static.GetCharacterTemplateManager();

	CharacterTemplateManager.FindDataTemplateAllDifficulties(TemplateName, TemplatesAllDifficulties);

	foreach TemplatesAllDifficulties(Template)
	{
		CharacterTemplate = X2CharacterTemplate(Template);

		if (CharacterTemplate != none)
		{
			ApplyToggle(CharacterTemplate);
		}
	}

	CharacterTemplate = CharacterTemplateManager.FindCharacterTemplate(TemplateName);

	if (CharacterTemplate != none)
	{
		ApplyToggle(CharacterTemplate);
	}
}

static function ApplyAllToggles()
{
	local X2CharacterTemplateManager CharacterTemplateManager;
	local array<name> TemplateNames;
	local name TemplateName;

	CharacterTemplateManager = class'X2CharacterTemplateManager'.static.GetCharacterTemplateManager();

	CharacterTemplateManager.GetTemplateNames(TemplateNames);

	foreach TemplateNames(TemplateName)
	{
		ApplyToggleAllDifficulties(TemplateName);
	}
}

static function SubstituteDisabledUnits(name EncounterName, out array<name> TemplateNames, int ForceLevel, XComGameState_MissionSite MissionSite)
{
	local XComTacticalMissionManager MissionManager;
	local MissionSchedule Schedule;
	local X2SitRepEffect_ModifyDefaultEncounterLists ListEffect;
	local array<name> ForcedNames;
	local name DefaultLeaderList;
	local name DefaultFollowerList;
	local name ThemedLeaderList;
	local name ThemedFollowerList;
	local name Substitute;
	local int LeaderForceLevel;
	local int EncounterIndex;
	local int i;

	MissionManager = `TACTICALMISSIONMGR;
	LeaderForceLevel = ForceLevel + `SPAWNMGR.GetLeaderForceLevelMod();

	DefaultLeaderList = 'DefaultLeaders';
	DefaultFollowerList = 'DefaultFollowers';

	if (MissionSite != none)
	{
		if (MissionSite.SelectedMissionData.SelectedMissionScheduleName != '')
		{
			MissionManager.GetMissionSchedule(MissionSite.SelectedMissionData.SelectedMissionScheduleName, Schedule);

			if (Schedule.DefaultEncounterLeaderSpawnList != '')
			{
				DefaultLeaderList = Schedule.DefaultEncounterLeaderSpawnList;
			}

			if (Schedule.DefaultEncounterFollowerSpawnList != '')
			{
				DefaultFollowerList = Schedule.DefaultEncounterFollowerSpawnList;
			}
		}

		foreach class'X2SitRepTemplateManager'.static.IterateEffects(class'X2SitRepEffect_ModifyDefaultEncounterLists', ListEffect, MissionSite.GeneratedMission.SitReps)
		{
			if (ListEffect.DefaultLeaderListOverride != '')
			{
				ThemedLeaderList = ListEffect.DefaultLeaderListOverride;
			}

			if (ListEffect.DefaultFollowerListOverride != '')
			{
				ThemedFollowerList = ListEffect.DefaultFollowerListOverride;
			}
		}
	}

	EncounterIndex = MissionManager.ConfigurableEncounters.Find('EncounterID', EncounterName);

	if (EncounterIndex != INDEX_NONE)
	{
		ForcedNames = MissionManager.ConfigurableEncounters[EncounterIndex].ForceSpawnTemplateNames;

		if (MissionManager.ConfigurableEncounters[EncounterIndex].EncounterLeaderSpawnList != '')
		{
			ThemedLeaderList = MissionManager.ConfigurableEncounters[EncounterIndex].EncounterLeaderSpawnList;
		}

		if (MissionManager.ConfigurableEncounters[EncounterIndex].EncounterFollowerSpawnList != '')
		{
			ThemedFollowerList = MissionManager.ConfigurableEncounters[EncounterIndex].EncounterFollowerSpawnList;
		}
	}

	for (i = TemplateNames.Length - 1; i >= 0; --i)
	{
		if (IsUnitEnabled(TemplateNames[i]) || ForcedNames.Find(TemplateNames[i]) != INDEX_NONE)
		{
			continue;
		}

		if (i == 0)
		{
			Substitute = PickSubstitute(TemplateNames[i], ThemedLeaderList, DefaultLeaderList, LeaderForceLevel, TemplateNames);
		}
		else
		{
			Substitute = PickSubstitute(TemplateNames[i], ThemedFollowerList, DefaultFollowerList, ForceLevel, TemplateNames);
		}

		if (Substitute == '')
		{
			TemplateNames.Remove(i, 1);
		}
		else
		{
			TemplateNames[i] = Substitute;
		}
	}
}

static function name PickSubstitute(name DisabledName, name ThemedListID, name DefaultListID, int ForceLevel, const out array<name> CurrentNames)
{
	local X2CharacterTemplate DisabledTemplate;
	local name Substitute;

	DisabledTemplate = class'X2CharacterTemplateManager'.static.GetCharacterTemplateManager().FindCharacterTemplate(DisabledName);

	if (DisabledTemplate == none)
	{
		return '';
	}

	if (ThemedListID != '' && ThemedListID != DefaultListID)
	{
		Substitute = RollFromList(DisabledTemplate, ThemedListID, ForceLevel, CurrentNames, true);

		if (Substitute == '')
		{
			Substitute = RollFromList(DisabledTemplate, ThemedListID, ForceLevel, CurrentNames, false);
		}
	}

	if (!(DisabledTemplate.bIsAdvent || DisabledTemplate.bIsAlien))
	{
		return Substitute;
	}

	if (Substitute == '')
	{
		Substitute = RollFromList(DisabledTemplate, DefaultListID, ForceLevel, CurrentNames, true);
	}

	if (Substitute == '')
	{
		Substitute = RollFromList(DisabledTemplate, DefaultListID, ForceLevel, CurrentNames, false);
	}

	return Substitute;
}

static function name RollFromList(X2CharacterTemplate DisabledTemplate, name ListID, int ForceLevel, const out array<name> CurrentNames, bool RequireSameFaction)
{
	local XComTacticalMissionManager MissionManager;
	local X2CharacterTemplateManager CharacterTemplateManager;
	local X2CharacterTemplate Template;
	local SpawnDistributionList List;
	local SpawnDistributionListEntry Entry;
	local array<SpawnDistributionListEntry> Candidates;
	local float TotalWeight;
	local float Roll;

	MissionManager = `TACTICALMISSIONMGR;
	CharacterTemplateManager = class'X2CharacterTemplateManager'.static.GetCharacterTemplateManager();

	foreach MissionManager.SpawnDistributionLists(List)
	{
		if (List.ListID != ListID)
		{
			continue;
		}

		foreach List.SpawnDistribution(Entry)
		{
			if (Entry.MinForceLevel >= 0 && ForceLevel < Entry.MinForceLevel)
			{
				continue;
			}

			if (Entry.MaxForceLevel >= 0 && ForceLevel > Entry.MaxForceLevel)
			{
				continue;
			}

			if (Entry.Template == DisabledTemplate.DataName || !IsUnitEnabled(Entry.Template))
			{
				continue;
			}

			Template = CharacterTemplateManager.FindCharacterTemplate(Entry.Template);

			if (Template == none)
			{
				continue;
			}

			if (RequireSameFaction && (Template.bIsAdvent != DisabledTemplate.bIsAdvent || Template.bIsAlien != DisabledTemplate.bIsAlien))
			{
				continue;
			}

			if (Entry.MaxCharactersPerGroup > 0 && CountName(CurrentNames, Entry.Template) >= Entry.MaxCharactersPerGroup)
			{
				continue;
			}

			Candidates.AddItem(Entry);
			TotalWeight += Entry.SpawnWeight;
		}
	}

	if (Candidates.Length == 0)
	{
		return '';
	}

	Roll = FRand() * TotalWeight;

	foreach Candidates(Entry)
	{
		Roll -= Entry.SpawnWeight;

		if (Roll <= 0)
		{
			return Entry.Template;
		}
	}

	return Candidates[Candidates.Length - 1].Template;
}

static function int CountName(const out array<name> Names, name Wanted)
{
	local name Current;
	local int Count;

	foreach Names(Current)
	{
		if (Current == Wanted)
		{
			++Count;
		}
	}

	return Count;
}
