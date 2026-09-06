class MCM_UIScreenListener_ChooseYourAliens extends UIScreenListener config(ChooseYourAliens);

`include(ChooseYourAliens/Src/ModConfigMenuAPI/MCM_API_Includes.uci)
`include(ChooseYourAliens/Src/ModConfigMenuAPI/MCM_API_CfgHelpers.uci)

var config int CONFIG_VERSION;
var config array<UnitToggle> UnitToggles;

var config string SelectedTab;
var config string SelectedCategory;

var localized string ModTitle;
var localized string DisableInfo;

var localized string MenuPageTitle;
var localized string MenuTitle;

event OnInit(UIScreen Screen)
{
	if (MCM_API(Screen) != none)
	{
		`MCM_API_Register(Screen, ClientModCallback);
	}
}

simulated function ClientModCallback(MCM_API_Instance ConfigAPI, int GameMode)
{
	local array<name> TabNames;
	local array<MCM_API_SettingsPage> Pages;
	local UnitToggle Toggle;
	local MCM_API_SettingsPage Page;
	local MCM_API_SettingsGroup Group;
	local int i, PageIndex;

	`Log(`StaticLocation, , 'CATrace');

	LoadSavedSettings();

	if (GameMode != eGameMode_MainMenu && GameMode != eGameMode_Strategy)
	{
		Page = ConfigAPI.NewSettingsPage("Choose Your Aliens");
		Page.SetPageTitle("Only available in Main Menu and Strategy Layer");
		Page.ShowSettings();
		return;
	}

	for (i = 0; i < UnitToggles.Length; ++i)
	{
		Toggle = UnitToggles[i];

		PageIndex = GetOrCreatePageIndex(Toggle.Tab, TabNames, Pages, ConfigAPI);

		Group = Pages[PageIndex].GetGroupByName('Units');

		if (Group == none)
		{
			Group = Pages[PageIndex].AddGroup('Units', "Units");
		}

		Group.AddCheckbox(
			name("unit_" $ string(Toggle.TemplateName)),
			GetUnitDisplayName(Toggle.TemplateName),
			DisableInfo,
			Toggle.IsEnabled,
			UnitToggleSaveHandler
		);
	}

	for (i = 0; i < Pages.Length; ++i)
	{
		Pages[i].ShowSettings();
	}
}

`MCM_CH_VersionChecker(class'MCM_Defaults_ChooseYourAliens'.default.Version, CONFIG_VERSION)

simulated function LoadSavedSettings()
{
	local int i;

	if (UnitToggles.Length == 0)
	{
		UnitToggles = class'MCM_Defaults_ChooseYourAliens'.default.UnitToggles;
	}

	for (i = 0; i < UnitToggles.Length; ++i)
	{
		UnitToggles[i].IsEnabled = `MCM_CH_GetValue(
			class'MCM_Defaults_ChooseYourAliens'.default.UnitToggles[i].IsEnabled,
			UnitToggles[i].IsEnabled
		);
	}
}

simulated function UnitToggleSaveHandler(MCM_API_Setting Setting, bool bValue)
{
	local int i;
	local name SettingId;

	SettingId = Setting.GetName();

	for (i = 0; i < UnitToggles.Length; ++i)
	{
		if (SettingId == name("unit_" $ string(UnitToggles[i].TemplateName)))
		{
			UnitToggles[i].IsEnabled = bValue;
			break;
		}
	}
}

simulated function SaveButtonClicked(MCM_API_SettingsPage Page)
{
	local X2CharacterTemplateManager CharacterTemplateManager;
	local array<name> TemplateNames;
	local name TemplateName;
	local X2CharacterTemplate CharacterTemplate;

	`Log("Saving settings",, 'ChooseYourAliens');

	self.CONFIG_VERSION = `MCM_CH_GetCompositeVersion();
	self.SaveConfig();

	CharacterTemplateManager = class'X2CharacterTemplateManager'.static.GetCharacterTemplateManager();
	CharacterTemplateManager.GetTemplateNames(TemplateNames);

	foreach TemplateNames(TemplateName)
	{
		CharacterTemplate = CharacterTemplateManager.FindCharacterTemplate(TemplateName);

		if (CharacterTemplate != none)
		{
			class'X2ChooseYourAliens_Helper'.static.ApplyToggle(CharacterTemplate);
		}
	}
}

simulated function int GetOrCreatePageIndex(
	name TabName,
	out array<name> TabNames,
	out array<MCM_API_SettingsPage> Pages,
	MCM_API_Instance ConfigAPI
)
{
	local int i;
	local MCM_API_SettingsPage Page;

	for (i = 0; i < TabNames.Length; ++i)
	{
		if (TabNames[i] == TabName)
		{
			return i;
		}
	}

	Page = ConfigAPI.NewSettingsPage(GetTabLabel(TabName));
	Page.SetPageTitle(GetTabShortName(TabName));
	Page.SetSaveHandler(SaveButtonClicked);

	TabNames.AddItem(TabName);
	Pages.AddItem(Page);

	return TabNames.Length - 1;
}

static function string GetTabShortName(name TabName)
{
	local X2ChooseYourAliensTemplateManager ChooseYourAliensTemplateManager;
	local X2ChooseYourAliensTemplate Template;

	ChooseYourAliensTemplateManager = class'X2ChooseYourAliensTemplateManager'.static.GetChooseYourAliensTemplateManager();

	Template = ChooseYourAliensTemplateManager.FindTemplate(TabName);

	if (Template != none)
	{
		return Template.DisplayName;
	}

	return PrettyTabName(string(TabName));
}

static function string PrettyTabName(string TabName)
{
	TabName = Repl(TabName, "_", " ");

	return TabName;
}

static function string GetTabLabel(name TabName)
{
	return default.ModTitle $ ": " $ GetTabShortName(TabName);
}


static function string GetUnitDisplayName(name TemplateName)
{
	local X2CharacterTemplate Template;

	Template = class'X2CharacterTemplateManager'.static.GetCharacterTemplateManager().FindCharacterTemplate(TemplateName);

	if (Template != none)
	{
		return Template.strCharacterName @ "[" $ string(TemplateName) $ "]";
	}

	return string(TemplateName);
}

defaultproperties
{
	ScreenClass = none;
}
