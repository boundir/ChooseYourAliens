class MCM_UIScreenListener_CYA extends Object config(ChooseYourAliens);

var config int CONFIG_VERSION;

var config string AllowAndromedonPrime;
var config string AllowArchonPrime;
var config string AllowBerserkerPrime;
var config string AllowBerserkerFirePrime;
var config string AllowCodexPrime;
var config string AllowGatekeeperPrime;
var config string AllowMutonPrime;
var config string AllowSectoidSoldierPrime;
var config string AllowSectoidMindbenderPrime;
var config string AllowSectoidPuppeteerPrime;
var config string AllowSpectrePrime;
var config string AllowSectopodPrime;
var config string AllowViperPrime;
var config string AllowGuardian;
var config string AllowAssault;
var config string AllowAntiRiotMEC;
var config string AllowMediDrone;
var config string AllowArchonValkyrie;
var config string AllowArchonSentinel;
var config string AllowFirestarter;
var config string AllowChryssalidCrawler;
var config string AllowChryssalidBleeder;
var config string AllowChryssalidHunterkiller;
var config string AllowLostBoomer;
var config string AllowMutonPyro;
var config string AllowMutonInfector;
var config string AllowSectoidSoldier;
var config string AllowSectoidMindbender;
var config string AllowSectoidPuppeteer;
var config string AllowSkirmisher;
var config string AllowTrooperHeavy;
var config string AllowTrooperGunslinger;
var config string AllowTrooperDemolitionist;
var config string AllowTrooperWrecker;
var config string AllowTrooperStriker;
var config string AllowTrooperSniper;
var config string AllowGatlingTrooper;
var config string AllowShoggoth;
var config string AllowBoa;
var config string AllowMamba;
var config string AllowWyvern;
var config string AllowTitan;
var config string AllowSpark;
var config string AllowCryoPriest;
var config string AllowBioTrooper;
var config string AllowBioAssaultTrooper;
var config string AllowBioAssaultTrooperShield;
var config string AllowBioRocketTrooper;
var config string AllowBioCaptain;
var config string AllowBioMEC;
var config string AllowBioMecTrooper;
var config string AllowBioGeneralGasStrike;
var config string AllowBioGeneralShotgun;
var config string AllowBioGeneralSMG;
var config string AllowBioGeneralRocketLauncher;
var config string AllowBioViperSilver;
var config string AllowBioViperGold;
var config string AllowBioFaceless;
var config string AllowBioZerker;
var config string AllowBioLost;
var config string AllowBioLostBleeder;

static function bool HasLegacyFlags()
{
	return default.CONFIG_VERSION != 0;
}

static function array<name> DisabledTemplateNames()
{
	local array<name> Names;
	local LegacyFlag Flag;
	local name TemplateName;

	foreach class'MCM_Defaults_ChooseYourAliens'.default.LegacyFlags(Flag)
	{
		if (IsFlagEnabled(Flag.Flag))
		{
			continue;
		}

		foreach Flag.TemplateNames(TemplateName)
		{
			if (Names.Find(TemplateName) == INDEX_NONE)
			{
				Names.AddItem(TemplateName);
			}
		}
	}

	return Names;
}

static function bool IsFlagEnabled(name Flag)
{
	return !IsDisabledText(FlagText(Flag));
}

static function bool IsDisabledText(string Value)
{
	return Value ~= "False" || Value == "0";
}

static function string FlagText(name Flag)
{
	switch (Flag)
	{
		case 'AllowAndromedonPrime':
			return default.AllowAndromedonPrime;
		case 'AllowArchonPrime':
			return default.AllowArchonPrime;
		case 'AllowBerserkerPrime':
			return default.AllowBerserkerPrime;
		case 'AllowBerserkerFirePrime':
			return default.AllowBerserkerFirePrime;
		case 'AllowCodexPrime':
			return default.AllowCodexPrime;
		case 'AllowGatekeeperPrime':
			return default.AllowGatekeeperPrime;
		case 'AllowMutonPrime':
			return default.AllowMutonPrime;
		case 'AllowSectoidSoldierPrime':
			return default.AllowSectoidSoldierPrime;
		case 'AllowSectoidMindbenderPrime':
			return default.AllowSectoidMindbenderPrime;
		case 'AllowSectoidPuppeteerPrime':
			return default.AllowSectoidPuppeteerPrime;
		case 'AllowSpectrePrime':
			return default.AllowSpectrePrime;
		case 'AllowSectopodPrime':
			return default.AllowSectopodPrime;
		case 'AllowViperPrime':
			return default.AllowViperPrime;
		case 'AllowGuardian':
			return default.AllowGuardian;
		case 'AllowAssault':
			return default.AllowAssault;
		case 'AllowAntiRiotMEC':
			return default.AllowAntiRiotMEC;
		case 'AllowMediDrone':
			return default.AllowMediDrone;
		case 'AllowArchonValkyrie':
			return default.AllowArchonValkyrie;
		case 'AllowArchonSentinel':
			return default.AllowArchonSentinel;
		case 'AllowFirestarter':
			return default.AllowFirestarter;
		case 'AllowChryssalidCrawler':
			return default.AllowChryssalidCrawler;
		case 'AllowChryssalidBleeder':
			return default.AllowChryssalidBleeder;
		case 'AllowChryssalidHunterkiller':
			return default.AllowChryssalidHunterkiller;
		case 'AllowLostBoomer':
			return default.AllowLostBoomer;
		case 'AllowMutonPyro':
			return default.AllowMutonPyro;
		case 'AllowMutonInfector':
			return default.AllowMutonInfector;
		case 'AllowSectoidSoldier':
			return default.AllowSectoidSoldier;
		case 'AllowSectoidMindbender':
			return default.AllowSectoidMindbender;
		case 'AllowSectoidPuppeteer':
			return default.AllowSectoidPuppeteer;
		case 'AllowSkirmisher':
			return default.AllowSkirmisher;
		case 'AllowTrooperHeavy':
			return default.AllowTrooperHeavy;
		case 'AllowTrooperGunslinger':
			return default.AllowTrooperGunslinger;
		case 'AllowTrooperDemolitionist':
			return default.AllowTrooperDemolitionist;
		case 'AllowTrooperWrecker':
			return default.AllowTrooperWrecker;
		case 'AllowTrooperStriker':
			return default.AllowTrooperStriker;
		case 'AllowTrooperSniper':
			return default.AllowTrooperSniper;
		case 'AllowGatlingTrooper':
			return default.AllowGatlingTrooper;
		case 'AllowShoggoth':
			return default.AllowShoggoth;
		case 'AllowBoa':
			return default.AllowBoa;
		case 'AllowMamba':
			return default.AllowMamba;
		case 'AllowWyvern':
			return default.AllowWyvern;
		case 'AllowTitan':
			return default.AllowTitan;
		case 'AllowSpark':
			return default.AllowSpark;
		case 'AllowCryoPriest':
			return default.AllowCryoPriest;
		case 'AllowBioTrooper':
			return default.AllowBioTrooper;
		case 'AllowBioAssaultTrooper':
			return default.AllowBioAssaultTrooper;
		case 'AllowBioAssaultTrooperShield':
			return default.AllowBioAssaultTrooperShield;
		case 'AllowBioRocketTrooper':
			return default.AllowBioRocketTrooper;
		case 'AllowBioCaptain':
			return default.AllowBioCaptain;
		case 'AllowBioMEC':
			return default.AllowBioMEC;
		case 'AllowBioMecTrooper':
			return default.AllowBioMecTrooper;
		case 'AllowBioGeneralGasStrike':
			return default.AllowBioGeneralGasStrike;
		case 'AllowBioGeneralShotgun':
			return default.AllowBioGeneralShotgun;
		case 'AllowBioGeneralSMG':
			return default.AllowBioGeneralSMG;
		case 'AllowBioGeneralRocketLauncher':
			return default.AllowBioGeneralRocketLauncher;
		case 'AllowBioViperSilver':
			return default.AllowBioViperSilver;
		case 'AllowBioViperGold':
			return default.AllowBioViperGold;
		case 'AllowBioFaceless':
			return default.AllowBioFaceless;
		case 'AllowBioZerker':
			return default.AllowBioZerker;
		case 'AllowBioLost':
			return default.AllowBioLost;
		case 'AllowBioLostBleeder':
			return default.AllowBioLostBleeder;
		default:
			return "";
	}
}
