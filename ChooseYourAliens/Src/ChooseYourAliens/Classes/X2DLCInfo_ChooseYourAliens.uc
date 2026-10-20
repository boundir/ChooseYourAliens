class X2DLCInfo_ChooseYourAliens extends X2DownloadableContentInfo;

static event OnPostTemplatesCreated()
{
	class'X2ChooseYourAliens_Helper'.static.MergeLegacyDisableAliens();
	class'MCM_UIScreenListener_ChooseYourAliens'.static.MigrateLegacyFlags();
	class'X2ChooseYourAliens_Helper'.static.ApplyAllToggles();
}

static function PostEncounterCreation(out name EncounterName, out PodSpawnInfo Encounter, int ForceLevel, int AlertLevel, optional XComGameState_BaseObject SourceObject)
{
	class'X2ChooseYourAliens_Helper'.static.SubstituteDisabledUnits(EncounterName, Encounter.SelectedCharacterTemplateNames, ForceLevel, XComGameState_MissionSite(SourceObject));
}
