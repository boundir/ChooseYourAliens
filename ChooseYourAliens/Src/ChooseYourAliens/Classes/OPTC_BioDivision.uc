class OPTC_BioDivision extends X2DownloadableContentInfo;

static event OnPostTemplatesCreated()
{
	local X2CharacterTemplateManager CharacterMgr;
	local array<name> TemplateNames;
	local name TemplateName;
	local array<X2DataTemplate> TemplateAllDifficulties;
	local X2DataTemplate Template;
	local X2CharacterTemplate CharacterTemplate;

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
				case 'AdvBioTrooperM1':
					if(!AllowBioTrooper())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioTrooperM2':
					if(!AllowBioTrooper())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioTrooperM3':
					if(!AllowBioTrooper())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioTrooperFakeM1':
					if(!AllowBioFaceless())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioTrooperFakeM2':
					if(!AllowBioFaceless())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioTrooperFakeM3':
					if(!AllowBioFaceless())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioAssaultTrooperM2':
					if(!AllowBioAssaultTrooper())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioAssaultTrooperM3':
					if(!AllowBioAssaultTrooper())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioAssaultTrooperM2B':
					if(!AllowBioAssaultTrooperShield())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioAssaultTrooperM3B':
					if(!AllowBioAssaultTrooperShield())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioRocketTrooperM2':
					if(!AllowBioRocketTrooper())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioRocketTrooperM3':
					if(!AllowBioRocketTrooper())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioCaptainM1':
					if(!AllowBioCaptain())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioCaptainM2':
					if(!AllowBioCaptain())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioCaptainM3':
					if(!AllowBioCaptain())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'BioMEC':
					if(!AllowBioMEC())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'BioMecTrooper':
					if(!AllowBioMecTrooper())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioGeneralM1A':
					if(!AllowBioGeneralGasStrike())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioGeneralM2A':
					if(!AllowBioGeneralGasStrike())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioGeneralM3A':
					if(!AllowBioGeneralGasStrike())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioGeneralM2B':
					if(!AllowBioGeneralShotgun())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioGeneralM3B':
					if(!AllowBioGeneralShotgun())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioGeneralM1C':
					if(!AllowBioGeneralSMG())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioGeneralM2C':
					if(!AllowBioGeneralSMG())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioGeneralM3C':
					if(!AllowBioGeneralSMG())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioGeneralM2D':
					if(!AllowBioGeneralRocketLauncher())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioGeneralM3D':
					if(!AllowBioGeneralRocketLauncher())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'BioViperSilver':
					if(!AllowBioViperSilver())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'BioViperGold':
					if(!AllowBioViperGold())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'BioFaceless':
					if(!AllowBioFaceless())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'BioFacelessM2':
					if(!AllowBioFaceless())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'BioZerker':
					if(!AllowBioZerker())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'BioLost':
					if(!AllowBioLost())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'BioLostBleeder':
					if(!AllowBioLostBleeder())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
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
static function bool AllowBioTrooper()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowBioTrooper : class'MCM_UIScreenListener_CYA'.default.AllowBioTrooper);
}
static function bool AllowBioAssaultTrooper()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowBioAssaultTrooper : class'MCM_UIScreenListener_CYA'.default.AllowBioAssaultTrooper);
}
static function bool AllowBioAssaultTrooperShield()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowBioAssaultTrooperShield : class'MCM_UIScreenListener_CYA'.default.AllowBioAssaultTrooperShield);
}
static function bool AllowBioRocketTrooper()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowBioRocketTrooper : class'MCM_UIScreenListener_CYA'.default.AllowBioRocketTrooper);
}
static function bool AllowBioCaptain()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowBioCaptain : class'MCM_UIScreenListener_CYA'.default.AllowBioCaptain);
}
static function bool AllowBioMEC()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowBioMEC : class'MCM_UIScreenListener_CYA'.default.AllowBioMEC);
}
static function bool AllowBioMecTrooper()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowBioMecTrooper : class'MCM_UIScreenListener_CYA'.default.AllowBioMecTrooper);
}
static function bool AllowBioGeneralGasStrike()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowBioGeneralGasStrike : class'MCM_UIScreenListener_CYA'.default.AllowBioGeneralGasStrike);
}
static function bool AllowBioGeneralShotgun()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowBioGeneralShotgun : class'MCM_UIScreenListener_CYA'.default.AllowBioGeneralShotgun);
}
static function bool AllowBioGeneralSMG()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowBioGeneralSMG : class'MCM_UIScreenListener_CYA'.default.AllowBioGeneralSMG);
}
static function bool AllowBioGeneralRocketLauncher()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowBioGeneralRocketLauncher : class'MCM_UIScreenListener_CYA'.default.AllowBioGeneralRocketLauncher);
}
static function bool AllowBioViperSilver()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowBioViperSilver : class'MCM_UIScreenListener_CYA'.default.AllowBioViperSilver);
}
static function bool AllowBioViperGold()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowBioViperGold : class'MCM_UIScreenListener_CYA'.default.AllowBioViperGold);
}
static function bool AllowBioFaceless()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowBioFaceless : class'MCM_UIScreenListener_CYA'.default.AllowBioFaceless);
}
static function bool AllowBioZerker()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowBioZerker : class'MCM_UIScreenListener_CYA'.default.AllowBioZerker);
}
static function bool AllowBioLost()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowBioLost : class'MCM_UIScreenListener_CYA'.default.AllowBioLost);
}
static function bool AllowBioLostBleeder()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowBioLostBleeder : class'MCM_UIScreenListener_CYA'.default.AllowBioLostBleeder);
}