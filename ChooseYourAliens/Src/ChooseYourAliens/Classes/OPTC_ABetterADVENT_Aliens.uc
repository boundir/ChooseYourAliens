class OPTC_ABetterADVENT_Aliens extends X2DownloadableContentInfo;

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
				case 'AdvShieldBearerSniperM2':
					if(!AllowGuardian())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvShieldBearerSniperM3':
					if(!AllowGuardian())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvStunLancerShotgunM1':
					if(!AllowAssault())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvStunLancerShotgunM2':
					if(!AllowAssault())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvStunLancerShotgunM3':
					if(!AllowAssault())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvSupportMEC_M1':
					if(!AllowAntiRiotMEC())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvSupportMEC_M2':
					if(!AllowAntiRiotMEC())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvDroneM1':
					if(!AllowMediDrone())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvDroneM2':
					if(!AllowMediDrone())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvDroneM3':
					if(!AllowMediDrone())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'ArchonMelee':
					if(!AllowArchonValkyrie())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'ArchonSentinel':
					if(!AllowArchonSentinel())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'BerserkerFire':
					if(!AllowFirestarter())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'ABAChryssalidM1':
					if(!AllowChryssalidCrawler())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'ABAChryssalidM2':
					if(!AllowChryssalidBleeder())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'ABAChryssalidM4':
					if(!AllowChryssalidHunterkiller())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomer':
					if(!AllowLostBoomer())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP2':
					if(!AllowLostBoomer())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP3':
					if(!AllowLostBoomer())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP4':
					if(!AllowLostBoomer())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP5':
					if(!AllowLostBoomer())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP6':
					if(!AllowLostBoomer())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP7':
					if(!AllowLostBoomer())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP8':
					if(!AllowLostBoomer())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP9':
					if(!AllowLostBoomer())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP10':
					if(!AllowLostBoomer())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP11':
					if(!AllowLostBoomer())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP12':
					if(!AllowLostBoomer())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP13':
					if(!AllowLostBoomer())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP14':
					if(!AllowLostBoomer())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP15':
					if(!AllowLostBoomer())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP16':
					if(!AllowLostBoomer())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP17':
					if(!AllowLostBoomer())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP18':
					if(!AllowLostBoomer())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP19':
					if(!AllowLostBoomer())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP20':
					if(!AllowLostBoomer())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP21':
					if(!AllowLostBoomer())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP22':
					if(!AllowLostBoomer())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'MutonDragonrounds':
					if(!AllowMutonPyro())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'MutonVenomrounds':
					if(!AllowMutonInfector())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'SectoidTrooper':
					if(!AllowSectoidSoldier())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'SectoidMindbender':
					if(!AllowSectoidMindbender())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'SectoidPuppeteer':
					if(!AllowSectoidPuppeteer())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvSkirmisherM1':
					if(!AllowSkirmisher())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvSkirmisherM2':
					if(!AllowSkirmisher())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvSkirmisherM3':
					if(!AllowSkirmisher())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperHeavyM1':
					if(!AllowTrooperHeavy())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperHeavyM2':
					if(!AllowTrooperHeavy())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperHeavyM3':
					if(!AllowTrooperHeavy())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperPistolM1':
					if(!AllowTrooperGunslinger())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperPistolM2':
					if(!AllowTrooperGunslinger())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperPistolM3':
					if(!AllowTrooperGunslinger())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperGrenadeM1':
					if(!AllowTrooperDemolitionist())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperGrenadeM2':
					if(!AllowTrooperDemolitionist())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperGrenadeM3':
					if(!AllowTrooperDemolitionist())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperEnviroM1':
					if(!AllowTrooperWrecker())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperEnviroM2':
					if(!AllowTrooperWrecker())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperEnviroM3':
					if(!AllowTrooperWrecker())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperShoggothM3':
					if(!AllowShoggoth())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'Shoggoth':
					if(!AllowShoggoth())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperShotgunM1':
					if(!AllowTrooperStriker())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperShotgunM2':
					if(!AllowTrooperStriker())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperShotgunM3':
					if(!AllowTrooperStriker())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperCannonM1':
					if(!AllowGatlingTrooper())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperCannonM2':
					if(!AllowGatlingTrooper())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperCannonM3':
					if(!AllowGatlingTrooper())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperSniperM1':
					if(!AllowTrooperSniper())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperSniperM2':
					if(!AllowTrooperSniper())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperSniperM3':
					if(!AllowTrooperSniper())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'ViperBoa':
					if(!AllowBoa())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'ViperMamba':
					if(!AllowMamba())
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'Wyvern':
					if(!AllowWyvern())
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
static function bool AllowGuardian()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowGuardian : class'MCM_UIScreenListener_CYA'.default.AllowGuardian);
}
static function bool AllowAssault()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowAssault : class'MCM_UIScreenListener_CYA'.default.AllowAssault);
}
static function bool AllowAntiRiotMEC()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowAntiRiotMEC : class'MCM_UIScreenListener_CYA'.default.AllowAntiRiotMEC);
}
static function bool AllowMediDrone()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowMediDrone : class'MCM_UIScreenListener_CYA'.default.AllowMediDrone);
}
static function bool AllowArchonValkyrie()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowArchonValkyrie : class'MCM_UIScreenListener_CYA'.default.AllowArchonValkyrie);
}
static function bool AllowArchonSentinel()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowArchonSentinel : class'MCM_UIScreenListener_CYA'.default.AllowArchonSentinel);
}
static function bool AllowFirestarter()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowFirestarter : class'MCM_UIScreenListener_CYA'.default.AllowFirestarter);
}
static function bool AllowChryssalidCrawler()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowChryssalidCrawler : class'MCM_UIScreenListener_CYA'.default.AllowChryssalidCrawler);
}
static function bool AllowChryssalidBleeder()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowChryssalidBleeder : class'MCM_UIScreenListener_CYA'.default.AllowChryssalidBleeder);
}
static function bool AllowChryssalidHunterkiller()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowChryssalidHunterkiller : class'MCM_UIScreenListener_CYA'.default.AllowChryssalidHunterkiller);
}
static function bool AllowLostBoomer()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowLostBoomer : class'MCM_UIScreenListener_CYA'.default.AllowLostBoomer);
}
static function bool AllowMutonPyro()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowMutonPyro : class'MCM_UIScreenListener_CYA'.default.AllowMutonPyro);
}
static function bool AllowMutonInfector()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowMutonInfector : class'MCM_UIScreenListener_CYA'.default.AllowMutonInfector);
}
static function bool AllowSectoidSoldier()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowSectoidSoldier : class'MCM_UIScreenListener_CYA'.default.AllowSectoidSoldier);
}
static function bool AllowSectoidMindbender()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowSectoidMindbender : class'MCM_UIScreenListener_CYA'.default.AllowSectoidMindbender);
}
static function bool AllowSectoidPuppeteer()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowSectoidPuppeteer : class'MCM_UIScreenListener_CYA'.default.AllowSectoidPuppeteer);
}
static function bool AllowSkirmisher()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowSkirmisher : class'MCM_UIScreenListener_CYA'.default.AllowSkirmisher);
}
static function bool AllowTrooperHeavy()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowTrooperHeavy : class'MCM_UIScreenListener_CYA'.default.AllowTrooperHeavy);
}
static function bool AllowTrooperGunslinger()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowTrooperGunslinger : class'MCM_UIScreenListener_CYA'.default.AllowTrooperGunslinger);
}
static function bool AllowTrooperDemolitionist()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowTrooperDemolitionist : class'MCM_UIScreenListener_CYA'.default.AllowTrooperDemolitionist);
}
static function bool AllowTrooperWrecker()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowTrooperWrecker : class'MCM_UIScreenListener_CYA'.default.AllowTrooperWrecker);
}
static function bool AllowTrooperStriker()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowTrooperStriker : class'MCM_UIScreenListener_CYA'.default.AllowTrooperStriker);
}
static function bool AllowTrooperSniper()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowTrooperSniper : class'MCM_UIScreenListener_CYA'.default.AllowTrooperSniper);
}
static function bool AllowGatlingTrooper()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowGatlingTrooper : class'MCM_UIScreenListener_CYA'.default.AllowGatlingTrooper);
}
static function bool AllowShoggoth()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowShoggoth : class'MCM_UIScreenListener_CYA'.default.AllowShoggoth);
}
static function bool AllowBoa()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowBoa : class'MCM_UIScreenListener_CYA'.default.AllowBoa);
}
static function bool AllowMamba()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowMamba : class'MCM_UIScreenListener_CYA'.default.AllowMamba);
}
static function bool AllowWyvern()
{
	return (MCM_CH_IMPL_VersionChecker() ? class'MCM_Defaults_CYA'.default.AllowWyvern : class'MCM_UIScreenListener_CYA'.default.AllowWyvern);
}