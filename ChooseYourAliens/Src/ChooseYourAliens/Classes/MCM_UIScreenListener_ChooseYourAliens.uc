class MCM_UIScreenListener_ChooseYourAliens extends UIScreenListener config(ChooseYourAliens);

`include(ChooseYourAliens/Src/ModConfigMenuAPI/MCM_API_Includes.uci)
`include(ChooseYourAliens/Src/ModConfigMenuAPI/MCM_API_CfgHelpers.uci)

var config int CONFIG_VERSION;
var config array<UnitToggle> UnitToggles;

var config string SelectedTab;

var localized string ModTitle;
var localized string DisableInfo;
var localized string UnavailableInfo;

event OnInit(UIScreen Screen)
{
	if (MCM_API(Screen) != none)
	{
		`MCM_API_Register(Screen, ClientModCallback);
	}
}

simulated function ClientModCallback(MCM_API_Instance ConfigAPI, int GameMode)
{
	local MCM_API_SettingsPage Page;

	LoadSavedSettings();

	if (GameMode != eGameMode_MainMenu && GameMode != eGameMode_Strategy)
	{
		Page = ConfigAPI.NewSettingsPage(ModTitle);
		Page.SetPageTitle(UnavailableInfo);
		Page.ShowSettings();
		return;
	}

	ConfigAPI.NewCustomSettingsPage(ModTitle, OpenOptionsScreen);
}

simulated function OpenOptionsScreen(UIScreen ParentScreen, int PageID)
{
	local CYA_OptionsScreen Screen;

	Screen = ParentScreen.Spawn(class'CYA_OptionsScreen', ParentScreen);

	Screen.Listener = self;

	ParentScreen.Movie.Stack.Push(Screen, ParentScreen.Movie);
}

`MCM_CH_VersionChecker(class'MCM_Defaults_ChooseYourAliens'.default.Version, CONFIG_VERSION)

simulated function LoadSavedSettings()
{
	local array<UnitToggle> DefaultToggles;
	local UnitToggle DefaultToggle;
	local int i;
	local int DefaultIndex;

	DefaultToggles = class'MCM_Defaults_ChooseYourAliens'.default.UnitToggles;

	if (UnitToggles.Length == 0)
	{
		UnitToggles = DefaultToggles;
	}

	for (i = 0; i < UnitToggles.Length; ++i)
	{
		DefaultIndex = FindToggleIndex(DefaultToggles, UnitToggles[i].TemplateName);

		if (DefaultIndex == INDEX_NONE)
		{
			continue;
		}

		UnitToggles[i].IsEnabled = `MCM_CH_GetValue(
			DefaultToggles[DefaultIndex].IsEnabled,
			UnitToggles[i].IsEnabled
		);
	}

	foreach DefaultToggles(DefaultToggle)
	{
		if (FindToggleIndex(UnitToggles, DefaultToggle.TemplateName) == INDEX_NONE)
		{
			UnitToggles.AddItem(DefaultToggle);
		}
	}
}

static function int FindToggleIndex(out array<UnitToggle> Toggles, name TemplateName)
{
	local int i;

	for (i = 0; i < Toggles.Length; ++i)
	{
		if (Toggles[i].TemplateName == TemplateName)
		{
			return i;
		}
	}

	return INDEX_NONE;
}

simulated function SaveSettings()
{
	self.CONFIG_VERSION = `MCM_CH_GetCompositeVersion();
	self.SaveConfig();

	class'X2ChooseYourAliens_Helper'.static.ApplyAllToggles();
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
