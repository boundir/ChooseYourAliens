class CYA_OptionsScreen extends UIScreen;

var int PANEL_X;
var int PANEL_Y;
var int TABLIST_WIDTH;
var int UNITLIST_WIDTH;
var int LIST_HEIGHT;
var int LIST_MARGIN;
var int HEADER_HEIGHT;
var int FOOTER_HEIGHT;

var MCM_UIScreenListener_ChooseYourAliens Listener;

var array<UnitToggle> SavedToggles;

var name SelectedTab;
var array<CYA_TabListItem> TabItems;

var UIPanel Container;
var UIImage BG;
var UIX2PanelHeader TitleHeader;
var UIList TabsList;
var UIList UnitsList;
var UIButton SaveButton;
var UIButton CancelButton;

var localized string ScreenTitle;
var localized string ScreenSubtitle;
var localized string SaveLabel;
var localized string CancelLabel;
var localized string NotInstalledTooltip;

simulated function InitScreen(XComPlayerController InitController, UIMovie InitMovie, optional name InitName)
{
	super.InitScreen(InitController, InitMovie, InitName);

	SavedToggles = Listener.UnitToggles;

	CreateSkeleton();
	BuildTabs();
	SelectInitialTab();
}

simulated function CreateSkeleton()
{
	local int TotalWidth;
	local int TotalHeight;

	TotalWidth = TABLIST_WIDTH + UNITLIST_WIDTH;
	TotalHeight = HEADER_HEIGHT + LIST_HEIGHT + FOOTER_HEIGHT;

	Container = Spawn(class'UIPanel', self).InitPanel('').SetPosition(PANEL_X, PANEL_Y).SetSize(TotalWidth, TotalHeight);

	BG = Spawn(class'UIImage', Container).InitImage(, "img:///MCM.gfx.MainBackground");
	BG.SetPosition(0, 0).SetSize(TotalWidth, TotalHeight);

	TitleHeader = Spawn(class'UIX2PanelHeader', Container);
	TitleHeader.InitPanelHeader('', ScreenTitle, ScreenSubtitle);
	TitleHeader.SetHeaderWidth(TotalWidth - 20);
	TitleHeader.SetPosition(10, 10);

	TabsList = Spawn(class'UIList', Container);
	TabsList.InitList('CYATabList', 10, HEADER_HEIGHT, TABLIST_WIDTH - 30, LIST_HEIGHT);
	TabsList.SetSelectedNavigation();
	TabsList.Navigator.LoopSelection = true;

	UnitsList = Spawn(class'UIList', Container);
	UnitsList.InitList('CYAUnitList', TABLIST_WIDTH + LIST_MARGIN, HEADER_HEIGHT, UNITLIST_WIDTH - (2 * LIST_MARGIN), LIST_HEIGHT);

	SaveButton = Spawn(class'UIButton', Container);
	SaveButton.InitButton(, SaveLabel, OnSaveClicked);
	SaveButton.SetPosition(TotalWidth - 190, TotalHeight - 40);
	SaveButton.AnimateIn(0);

	CancelButton = Spawn(class'UIButton', Container);
	CancelButton.InitButton(, CancelLabel, OnCancelClicked);
	CancelButton.SetPosition(TotalWidth - 190 - 170, TotalHeight - 40);
	CancelButton.AnimateIn(0);

	Container.Navigator.SetSelected(none);
}

simulated function BuildTabs()
{
	local array<name> TabNames;
	local UnitToggle Toggle;
	local CYA_TabListItem TabItem;
	local name TabName;

	foreach Listener.UnitToggles(Toggle)
	{
		if (TabNames.Find(Toggle.Tab) == INDEX_NONE)
		{
			TabNames.AddItem(Toggle.Tab);
		}
	}

	foreach TabNames(TabName)
	{
		TabItem = Spawn(class'CYA_TabListItem', TabsList.ItemContainer);
		TabItem.InitTabListItem(TabName, class'MCM_UIScreenListener_ChooseYourAliens'.static.GetTabShortName(TabName), false);
		TabItem.OnTabClicked = TabClicked;

		TabItems.AddItem(TabItem);
	}
}

simulated function SelectInitialTab()
{
	local CYA_TabListItem TabItem;

	if (TabItems.Length == 0)
	{
		return;
	}

	foreach TabItems(TabItem)
	{
		if (string(TabItem.TabName) == Listener.SelectedTab)
		{
			SelectTab(TabItem.TabName);
			return;
		}
	}

	SelectTab(TabItems[0].TabName);
}

simulated function TabClicked(CYA_TabListItem Caller)
{
	SelectTab(Caller.TabName);
}

simulated function SelectTab(name TabName)
{
	local CYA_TabListItem TabItem;

	SelectedTab = TabName;

	foreach TabItems(TabItem)
	{
		TabItem.SetSelected(TabItem.TabName == TabName);
	}

	PopulateUnits(TabName);
}

simulated function PopulateUnits(name TabName)
{
	local UnitToggle Toggle;
	local CYA_UnitListItem UnitItem;
	local X2CharacterTemplateManager CharacterTemplateManager;

	UnitsList.ClearItems();

	CharacterTemplateManager = class'X2CharacterTemplateManager'.static.GetCharacterTemplateManager();

	foreach Listener.UnitToggles(Toggle)
	{
		if (Toggle.Tab != TabName)
		{
			continue;
		}

		UnitItem = Spawn(class'CYA_UnitListItem', UnitsList.ItemContainer);
		UnitItem.InitUnitListItem(
			Toggle.TemplateName,
			class'MCM_UIScreenListener_ChooseYourAliens'.static.GetUnitDisplayName(Toggle.TemplateName),
			Listener.DisableInfo,
			Toggle.IsEnabled
		);
		UnitItem.OnUnitToggled = UnitToggled;

		if (CharacterTemplateManager.FindCharacterTemplate(Toggle.TemplateName) == none)
		{
			UnitItem.SetDisabled(true, NotInstalledTooltip);
		}
	}
}

simulated function UnitToggled(CYA_UnitListItem Caller, bool IsEnabled)
{
	local int i;

	for (i = 0; i < Listener.UnitToggles.Length; ++i)
	{
		if (Listener.UnitToggles[i].TemplateName == Caller.TemplateName)
		{
			Listener.UnitToggles[i].IsEnabled = IsEnabled;
			break;
		}
	}
}

simulated function OnSaveClicked(UIButton Button)
{
	Listener.SelectedTab = string(SelectedTab);
	Listener.SaveSettings();

	Movie.Stack.Pop(self);
}

simulated function OnCancelClicked(UIButton Button)
{
	Listener.UnitToggles = SavedToggles;

	Movie.Stack.Pop(self);
}

simulated function bool OnUnrealCommand(int cmd, int arg)
{
	if (!CheckInputIsReleaseOrDirectionRepeat(cmd, arg))
	{
		return false;
	}

	switch (cmd)
	{
		case class'UIUtilities_Input'.const.FXS_BUTTON_B:
		case class'UIUtilities_Input'.const.FXS_KEY_ESCAPE:
			OnCancelClicked(none);
			return true;
	}

	return super.OnUnrealCommand(cmd, arg);
}

defaultproperties
{
	PANEL_X = 100
	PANEL_Y = 100
	TABLIST_WIDTH = 240
	UNITLIST_WIDTH = 580
	LIST_HEIGHT = 700
	LIST_MARGIN = 10
	HEADER_HEIGHT = 80
	FOOTER_HEIGHT = 50

	InputState = eInputState_Consume
}
