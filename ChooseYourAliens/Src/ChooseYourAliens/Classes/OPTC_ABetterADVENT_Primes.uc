class OPTC_ABetterADVENT_Primes extends X2DownloadableContentInfo;

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
				case 'AndromedonM4':
					if(!AllowAndromedonPrime())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'ArchonM4':
					if(!AllowArchonPrime())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'BerserkerM4':
					if(!AllowBerserkerPrime())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'BerserkerFireM4':
					if(!AllowBerserkerFirePrime())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'CodexM4':
					if(!AllowCodexPrime())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'GatekeeperM4':
					if(!AllowGatekeeperPrime())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'MutonM4':
					if(!AllowMutonPrime())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'SectoidTrooperM4':
					if(!AllowSectoidSoldierPrime())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'SectoidMindbenderM4':
					if(!AllowSectoidMindbenderPrime())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'SectoidPuppeteerM4':
					if(!AllowSectoidPuppeteerPrime())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'SpectreM4':
					if(!AllowSpectrePrime())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'StealthSectopod':
					if(!AllowSectopodPrime())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'ViperM4':
					if(!AllowViperPrime())
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
static function bool AllowAndromedonPrime()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowAndromedonPrime : class'MCM_UIScreenListener_CYA'.default.AllowAndromedonPrime);
}
static function bool AllowArchonPrime()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowArchonPrime : class'MCM_UIScreenListener_CYA'.default.AllowArchonPrime);
}
static function bool AllowBerserkerPrime()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowBerserkerPrime : class'MCM_UIScreenListener_CYA'.default.AllowBerserkerPrime);
}
static function bool AllowBerserkerFirePrime()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowBerserkerFirePrime : class'MCM_UIScreenListener_CYA'.default.AllowBerserkerFirePrime);
}
static function bool AllowCodexPrime()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowCodexPrime : class'MCM_UIScreenListener_CYA'.default.AllowCodexPrime);
}
static function bool AllowGatekeeperPrime()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowGatekeeperPrime : class'MCM_UIScreenListener_CYA'.default.AllowGatekeeperPrime);
}
static function bool AllowMutonPrime()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowMutonPrime : class'MCM_UIScreenListener_CYA'.default.AllowMutonPrime);
}
static function bool AllowSectoidSoldierPrime()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowSectoidSoldierPrime : class'MCM_UIScreenListener_CYA'.default.AllowSectoidSoldierPrime);
}
static function bool AllowSectoidMindbenderPrime()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowSectoidMindbenderPrime : class'MCM_UIScreenListener_CYA'.default.AllowSectoidMindbenderPrime);
}
static function bool AllowSectoidPuppeteerPrime()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowSectoidPuppeteerPrime : class'MCM_UIScreenListener_CYA'.default.AllowSectoidPuppeteerPrime);
}
static function bool AllowSpectrePrime()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowSpectrePrime : class'MCM_UIScreenListener_CYA'.default.AllowSpectrePrime);
}
static function bool AllowSectopodPrime()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowSectopodPrime : class'MCM_UIScreenListener_CYA'.default.AllowSectopodPrime);
}
static function bool AllowViperPrime()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowViperPrime : class'MCM_UIScreenListener_CYA'.default.AllowViperPrime);
}