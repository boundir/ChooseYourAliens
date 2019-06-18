class OPTC_ABetterDLC extends X2DownloadableContentInfo;

static event OnPostTemplatesCreated()
{
	local X2CharacterTemplateManager CharacterMgr;
	local array<name> TemplateNames;
	local name TemplateName;
	local array<X2DataTemplate> TemplateAllDifficulties;
	local X2DataTemplate Template;
	local X2CharacterTemplate CharacterTemplate;

	`LOG("Choose Your Aliens: OPTC ABetter DLC");

	CharacterMgr = class'X2CharacterTemplateManager'.static.GetCharacterTemplateManager();

	CharacterMgr.GetTemplateNames(TemplateNames);

	foreach TemplateNames(TemplateName)
	{
		CharacterMgr.FindDataTemplateAllDifficulties(TemplateName, TemplateAllDifficulties);

		foreach TemplateAllDifficulties(Template)
		{
			CharacterTemplate = X2CharacterTemplate(Template);

			switch(CharacterTemplate.DataName)
			{
				case 'AdventTitanM1':
					if(!AllowTitan())
					{
						CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
					}
					break;
				case 'AdventTitanM2':
					if(!AllowTitan())
					{
						CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
					}
					break;
				case 'AdventTitanM3':
					if(!AllowTitan())
					{
						CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
					}
					break;
				case 'AdventSparkM1':
					if(!AllowSpark())
					{
						CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
					}
					break;
				case 'AdventSparkM2':
					if(!AllowSpark())
					{
						CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
					}
					break;
				case 'AdventSparkM3':
					if(!AllowSpark())
					{
						CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
					}
					break;
				case 'AdventCryoPriestM2':
					if(!AllowCryoPriest())
					{
						CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
					}
					break;
				case 'AdventCryoPriestM3':
					if(!AllowCryoPriest())
					{
						CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
					}
					break;
			}
		}
	}
}

static function bool MCM_CH_IMPL_VersionChecker()
{
	return (class'MCM_UIScreenListener_CYA'.default.CONFIG_VERSION < class'MCM_Defaults_CYA'.default.VERSION);
}
static function bool AllowTitan()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowTitan : class'MCM_UIScreenListener_CYA'.default.AllowTitan);
}
static function bool AllowSpark()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowSpark : class'MCM_UIScreenListener_CYA'.default.AllowSpark);
}
static function bool AllowCryoPriest()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowCryoPriest : class'MCM_UIScreenListener_CYA'.default.AllowCryoPriest);
}