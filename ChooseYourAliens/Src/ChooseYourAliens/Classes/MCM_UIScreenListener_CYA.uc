class MCM_UIScreenListener_CYA extends UIScreenListener config(ChooseYourAliens);

`include(ChooseYourAliens/Src/ModConfigMenuAPI/MCM_API_Includes.uci)
`include(ChooseYourAliens/Src/ModConfigMenuAPI/MCM_API_CfgHelpers.uci)

var config int CONFIG_VERSION;

// ABetterADVENT Primes
var config bool AllowAndromedonPrime;
var config bool AllowArchonPrime;
var config bool AllowBerserkerPrime;
var config bool AllowBerserkerFirePrime;
var config bool AllowCodexPrime;
var config bool AllowGatekeeperPrime;
var config bool AllowMutonPrime;
var config bool AllowSectoidSoldierPrime;
var config bool AllowSectoidMindbenderPrime;
var config bool AllowSectoidPuppeteerPrime;
var config bool AllowSpectrePrime;
var config bool AllowSectopodPrime;
var config bool AllowViperPrime;

// ABetterADVENT Aliens
var config bool AllowGuardian;
var config bool AllowAssault;
var config bool AllowAntiRiotMEC;
var config bool AllowMediDrone;
var config bool AllowArchonValkyrie;
var config bool AllowArchonSentinel;
var config bool AllowFirestarter;
var config bool AllowChryssalidCrawler;
var config bool AllowChryssalidBleeder;
var config bool AllowChryssalidHunterkiller;
var config bool AllowLostBoomer;
var config bool AllowMutonPyro;
var config bool AllowMutonInfector;
var config bool AllowSectoidSoldier;
var config bool AllowSectoidMindbender;
var config bool AllowSectoidPuppeteer;
var config bool AllowSkirmisher;
var config bool AllowTrooperHeavy;
var config bool AllowTrooperGunslinger;
var config bool AllowTrooperDemolitionist;
var config bool AllowTrooperWrecker;
var config bool AllowTrooperStriker;
var config bool AllowTrooperSniper;
var config bool AllowGatlingTrooper;
var config bool AllowShoggoth;
var config bool AllowBoa;
var config bool AllowMamba;
var config bool AllowWyvern;

// ABetterDLC
var config bool AllowTitan;
var config bool AllowSpark;
var config bool AllowCryoPriest;

// Bio Division
var config bool AllowBioTrooper;
var config bool AllowBioAssaultTrooper;
var config bool AllowBioAssaultTrooperShield;
var config bool AllowBioRocketTrooper;
var config bool AllowBioCaptain;
var config bool AllowBioMEC;
var config bool AllowBioMecTrooper;
var config bool AllowBioGeneralGasStrike;
var config bool AllowBioGeneralShotgun;
var config bool AllowBioGeneralSMG;
var config bool AllowBioGeneralRocketLauncher;
var config bool AllowBioViperSilver;
var config bool AllowBioViperGold;
var config bool AllowBioFaceless;
var config bool AllowBioZerker;
var config bool AllowBioLost;
var config bool AllowBioLostBleeder;

var localized string DISABLE_INFO;

event OnInit(UIScreen Screen)
{
	// Everything out here runs on every UIScreen. Not great but necessary.
	if (MCM_API(Screen) != none)
	{
		// Everything in here runs only when you need to touch MCM.
		`MCM_API_Register(Screen, ClientModCallback);
	}
}

simulated function ClientModCallback(MCM_API_Instance ConfigAPI, int GameMode)
{
	local MCM_API_SettingsPage Page;
	local MCM_API_SettingsGroup GroupPrimes, GroupABA, GroupABDLC, GroupBio;
	
	LoadSavedSettings();
	
	if (GameMode == eGameMode_MainMenu || GameMode == eGameMode_Strategy)
	{
		Page = ConfigAPI.NewSettingsPage("Choose Your Aliens");
		Page.SetPageTitle("Choose Your Aliens");
		Page.SetSaveHandler(SaveButtonClicked);
	
		GroupPrimes = Page.AddGroup('Group1', "ABetterADVENT Primes");
		GroupABA = Page.AddGroup('Group2', "ABetterADVENT Aliens");
		GroupABDLC = Page.AddGroup('Group3', "ABetterDLC");
		GroupBio = Page.AddGroup('Group4', "Bio Division");
	
		// ABetterADVENT Primes
		GroupPrimes.AddCheckbox('checkbox', "Enable Andromedon Prime", DISABLE_INFO, AllowAndromedonPrime, AndromedonPrimeSaveHandler);
		GroupPrimes.AddCheckbox('checkbox', "Enable Archon Prime", DISABLE_INFO, AllowArchonPrime, ArchonPrimeSaveHandler);
		GroupPrimes.AddCheckbox('checkbox', "Enable Berserker Prime", DISABLE_INFO, AllowBerserkerPrime, BerserkerPrimeSaveHandler);
		GroupPrimes.AddCheckbox('checkbox', "Enable BerserkerFire Prime", DISABLE_INFO, AllowBerserkerFirePrime, BerserkerFirePrimeSaveHandler);
		GroupPrimes.AddCheckbox('checkbox', "Enable Codex Prime", DISABLE_INFO, AllowCodexPrime, CodexPrimeSaveHandler);
		GroupPrimes.AddCheckbox('checkbox', "Enable Gatekeeper Prime", DISABLE_INFO, AllowGatekeeperPrime, GatekeeperPrimeSaveHandler);
		GroupPrimes.AddCheckbox('checkbox', "Enable Muton Prime", DISABLE_INFO, AllowMutonPrime, MutonPrimeSaveHandler);
		GroupPrimes.AddCheckbox('checkbox', "Enable Sectoid Soldier Prime", DISABLE_INFO, AllowSectoidSoldierPrime, SectoidSoldierPrimeSaveHandler);
		GroupPrimes.AddCheckbox('checkbox', "Enable Sectoid Mindbender Prime", DISABLE_INFO, AllowSectoidMindbenderPrime, SectoidMindbenderPrimeSaveHandler);
		GroupPrimes.AddCheckbox('checkbox', "Enable Sectoid Puppeteer Prime", DISABLE_INFO, AllowSectoidPuppeteerPrime, SectoidPuppeteerPrimeSaveHandler);
		GroupPrimes.AddCheckbox('checkbox', "Enable Spectre Prime", DISABLE_INFO, AllowSpectrePrime, SpectrePrimeSaveHandler);
		GroupPrimes.AddCheckbox('checkbox', "Enable Sectopod Prime", DISABLE_INFO, AllowSectopodPrime, SectopodPrimeSaveHandler);
		GroupPrimes.AddCheckbox('checkbox', "Enable Viper Prime", DISABLE_INFO, AllowViperPrime, ViperPrimeSaveHandler);

		// ABetterADVENT Aliens
		GroupABA.AddCheckbox('checkbox', "Enable Guardian", DISABLE_INFO, AllowGuardian, GuardianSaveHandler);
		GroupABA.AddCheckbox('checkbox', "Enable Assault", DISABLE_INFO, AllowAssault, AssaultSaveHandler);
		GroupABA.AddCheckbox('checkbox', "Enable Anti Riot MEC", DISABLE_INFO, AllowAntiRiotMEC, AntiRiotMECSaveHandler);
		GroupABA.AddCheckbox('checkbox', "Enable Medi Drone", DISABLE_INFO, AllowMediDrone, MediDroneSaveHandler);
		GroupABA.AddCheckbox('checkbox', "Enable Archon Valkyrie", DISABLE_INFO, AllowArchonValkyrie, ArchonValkyrieSaveHandler);
		GroupABA.AddCheckbox('checkbox', "Enable Archon Sentinel", DISABLE_INFO, AllowArchonSentinel, ArchonSentinelSaveHandler);
		GroupABA.AddCheckbox('checkbox', "Enable Firestarter", DISABLE_INFO, AllowFirestarter, FirestarterSaveHandler);
		GroupABA.AddCheckbox('checkbox', "Enable Chryssalid Crawler", DISABLE_INFO, AllowChryssalidCrawler, ChryssalidCrawlerSaveHandler);
		GroupABA.AddCheckbox('checkbox', "Enable Chryssalid Bleeder", DISABLE_INFO, AllowChryssalidBleeder, ChryssalidBleederSaveHandler);
		GroupABA.AddCheckbox('checkbox', "Enable Chryssalid Hunterkiller", DISABLE_INFO, AllowChryssalidHunterkiller, ChryssalidHunterkillerSaveHandler);
		GroupABA.AddCheckbox('checkbox', "Enable Lost Boomer", DISABLE_INFO, AllowLostBoomer, LostBoomerSaveHandler);
		GroupABA.AddCheckbox('checkbox', "Enable Muton Pyro", DISABLE_INFO, AllowMutonPyro, MutonPyroSaveHandler);
		GroupABA.AddCheckbox('checkbox', "Enable Muton Infector", DISABLE_INFO, AllowMutonInfector, MutonInfectorSaveHandler);
		GroupABA.AddCheckbox('checkbox', "Enable Sectoid Soldier", DISABLE_INFO, AllowSectoidSoldier, SectoidSoldierSaveHandler);
		GroupABA.AddCheckbox('checkbox', "Enable Sectoid Mindbender", DISABLE_INFO, AllowSectoidMindbender, SectoidMindbenderSaveHandler);
		GroupABA.AddCheckbox('checkbox', "Enable Sectoid Puppeteer", DISABLE_INFO, AllowSectoidPuppeteer, SectoidPuppeteerSaveHandler);
		GroupABA.AddCheckbox('checkbox', "Enable Skirmisher", DISABLE_INFO, AllowSkirmisher, SkirmisherSaveHandler);
		GroupABA.AddCheckbox('checkbox', "Enable Heavy", DISABLE_INFO, AllowTrooperHeavy, TrooperHeavySaveHandler);
		GroupABA.AddCheckbox('checkbox', "Enable Gunslinger", DISABLE_INFO, AllowTrooperGunslinger, TrooperGunslingerSaveHandler);
		GroupABA.AddCheckbox('checkbox', "Enable Demolitionist", DISABLE_INFO, AllowTrooperDemolitionist, TrooperDemolitionistSaveHandler);
		GroupABA.AddCheckbox('checkbox', "Enable Wrecker", DISABLE_INFO, AllowTrooperWrecker, TrooperWreckerSaveHandler);
		GroupABA.AddCheckbox('checkbox', "Enable Striker", DISABLE_INFO, AllowTrooperStriker, TrooperStrikerSaveHandler);
		GroupABA.AddCheckbox('checkbox', "Enable Sniper", DISABLE_INFO, AllowTrooperSniper, TrooperSniperSaveHandler);
		GroupABA.AddCheckbox('checkbox', "Enable Gatling Trooper", DISABLE_INFO, AllowGatlingTrooper, GatlingTrooperSaveHandler);
		GroupABA.AddCheckbox('checkbox', "Enable Shoggoth", DISABLE_INFO, AllowShoggoth, ShoggothSaveHandler);
		GroupABA.AddCheckbox('checkbox', "Enable Boa", DISABLE_INFO, AllowBoa, BoaSaveHandler);
		GroupABA.AddCheckbox('checkbox', "Enable Mamba", DISABLE_INFO, AllowMamba, MambaSaveHandler);
		GroupABA.AddCheckbox('checkbox', "Enable Wyvern", DISABLE_INFO, AllowWyvern, WyvernSaveHandler);

		// ABetter DLC
		GroupABDLC.AddCheckbox('checkbox', "Enable Titan", DISABLE_INFO, AllowTitan, TitanSaveHandler);
		GroupABDLC.AddCheckbox('checkbox', "Enable Spark", DISABLE_INFO, AllowSpark, SparkSaveHandler);
		GroupABDLC.AddCheckbox('checkbox', "Enable Cryo Priest", DISABLE_INFO, AllowCryoPriest, CryoPriestSaveHandler);

		// Bio Division
		GroupBio.AddCheckbox('checkbox', "Enable Bio Trooper", DISABLE_INFO, AllowBioTrooper, BioTrooperSaveHandler);
		GroupBio.AddCheckbox('checkbox', "Enable Bio Assault Trooper", DISABLE_INFO, AllowBioAssaultTrooper, BioAssaultTrooperSaveHandler);
		GroupBio.AddCheckbox('checkbox', "Enable Bio Assault Trooper Shield", DISABLE_INFO, AllowBioAssaultTrooperShield, BioAssaultTrooperShieldSaveHandler);
		GroupBio.AddCheckbox('checkbox', "Enable Bio RocketTrooper", DISABLE_INFO, AllowBioRocketTrooper, BioRocketTrooperSaveHandler);
		GroupBio.AddCheckbox('checkbox', "Enable Bio Captain", DISABLE_INFO, AllowBioCaptain, BioCaptainSaveHandler);
		GroupBio.AddCheckbox('checkbox', "Enable Bio MEC", DISABLE_INFO, AllowBioMEC, BioMECSaveHandler);
		GroupBio.AddCheckbox('checkbox', "Enable Bio MecTrooper", DISABLE_INFO, AllowBioMecTrooper, BioMecTrooperSaveHandler);
		GroupBio.AddCheckbox('checkbox', "Enable Bio General Gas Strike", DISABLE_INFO, AllowBioGeneralGasStrike, BioGeneralGasStrikeSaveHandler);
		GroupBio.AddCheckbox('checkbox', "Enable Bio General Shotgun", DISABLE_INFO, AllowBioGeneralShotgun, BioGeneralShotgunSaveHandler);
		GroupBio.AddCheckbox('checkbox', "Enable Bio General SMG", DISABLE_INFO, AllowBioGeneralSMG, BioGeneralSMGSaveHandler);
		GroupBio.AddCheckbox('checkbox', "Enable Bio General Rocket Launcher", DISABLE_INFO, AllowBioGeneralRocketLauncher, BioGeneralRocketLauncherSaveHandler);
		GroupBio.AddCheckbox('checkbox', "Enable Bio Viper Silver", DISABLE_INFO, AllowBioViperSilver, BioViperSilverSaveHandler);
		GroupBio.AddCheckbox('checkbox', "Enable Bio Viper Gold", DISABLE_INFO, AllowBioViperGold, BioViperGoldSaveHandler);
		GroupBio.AddCheckbox('checkbox', "Enable Bio Faceless", DISABLE_INFO, AllowBioFaceless, BioFacelessSaveHandler);
		GroupBio.AddCheckbox('checkbox', "Enable Bio Zerker", DISABLE_INFO, AllowBioZerker, BioZerkerSaveHandler);
		GroupBio.AddCheckbox('checkbox', "Enable Bio Lost", DISABLE_INFO, AllowBioLost, BioLostSaveHandler);
		GroupBio.AddCheckbox('checkbox', "Enable Bio Lost Bleeder", DISABLE_INFO, AllowBioLostBleeder, BioLostBleederSaveHandler);
	
		Page.ShowSettings();

		//ConfigAPI.NewCustomSettingsPage("Choose Your Aliens", OpenOptions); // WIP
	}

	else
	{
		Page = ConfigAPI.NewSettingsPage("Choose Your Aliens");
		Page.SetPageTitle("Only available in Main Menu and Strategical Layer");
		Page.ShowSettings();
	}
}

/*// WIP
simulated function OpenOptions(UIScreen ParentScreen, int PageID)
{
	ParentScreen.Movie.Pres.ScreenStack.Push( ParentScreen.Movie.Pres.Spawn( class'MCMOptions_CYA', ParentScreen.Movie.Pres ), ParentScreen.Movie );
}
*/

// Load current saved settings
`MCM_CH_VersionChecker(class'MCM_Defaults_CYA'.default.VERSION, CONFIG_VERSION)

simulated function LoadSavedSettings()
{
	AllowAndromedonPrime = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowAndromedonPrime, AllowAndromedonPrime);
	AllowArchonPrime = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowArchonPrime, AllowArchonPrime);
	AllowBerserkerPrime = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowBerserkerPrime, AllowBerserkerPrime);
	AllowBerserkerFirePrime = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowBerserkerFirePrime, AllowBerserkerFirePrime);
	AllowCodexPrime = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowCodexPrime, AllowCodexPrime);
	AllowGatekeeperPrime = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowGatekeeperPrime, AllowGatekeeperPrime);
	AllowMutonPrime = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowMutonPrime, AllowMutonPrime);
	AllowSectoidSoldierPrime = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowSectoidSoldierPrime, AllowSectoidSoldierPrime);
	AllowSectoidMindbenderPrime = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowSectoidMindbenderPrime, AllowSectoidMindbenderPrime);
	AllowSectoidPuppeteerPrime = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowSectoidPuppeteerPrime, AllowSectoidPuppeteerPrime);
	AllowSpectrePrime = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowSpectrePrime, AllowSpectrePrime);
	AllowSectopodPrime = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowSectopodPrime, AllowSectopodPrime);
	AllowViperPrime = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowViperPrime, AllowViperPrime);
	AllowGuardian = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowGuardian, AllowGuardian);
	AllowAssault = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowAssault, AllowAssault);
	AllowAntiRiotMEC = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowAntiRiotMEC, AllowAntiRiotMEC);
	AllowMediDrone = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowMediDrone, AllowMediDrone);
	AllowArchonValkyrie = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowArchonValkyrie, AllowArchonValkyrie);
	AllowArchonSentinel = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowArchonSentinel, AllowArchonSentinel);
	AllowFirestarter = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowFirestarter, AllowFirestarter);
	AllowChryssalidCrawler = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowChryssalidCrawler, AllowChryssalidCrawler);
	AllowChryssalidBleeder = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowChryssalidBleeder, AllowChryssalidBleeder);
	AllowChryssalidHunterkiller = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowChryssalidHunterkiller, AllowChryssalidHunterkiller);
	AllowLostBoomer = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowLostBoomer, AllowLostBoomer);
	AllowMutonPyro = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowMutonPyro, AllowMutonPyro);
	AllowMutonInfector = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowMutonInfector, AllowMutonInfector);
	AllowSectoidSoldier = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowSectoidSoldier, AllowSectoidSoldier);
	AllowSectoidMindbender = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowSectoidMindbender, AllowSectoidMindbender);
	AllowSectoidPuppeteer = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowSectoidPuppeteer, AllowSectoidPuppeteer);
	AllowSkirmisher = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowSkirmisher, AllowSkirmisher);
	AllowTrooperHeavy = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowTrooperHeavy, AllowTrooperHeavy);
	AllowTrooperGunslinger = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowTrooperGunslinger, AllowTrooperGunslinger);
	AllowTrooperDemolitionist = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowTrooperDemolitionist, AllowTrooperDemolitionist);
	AllowTrooperWrecker = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowTrooperWrecker, AllowTrooperWrecker);
	AllowTrooperStriker = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowTrooperStriker, AllowTrooperStriker);
	AllowTrooperSniper = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowTrooperSniper, AllowTrooperSniper);
	AllowGatlingTrooper = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowGatlingTrooper, AllowGatlingTrooper);
	AllowShoggoth = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowShoggoth, AllowShoggoth);
	AllowBoa = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowBoa, AllowBoa);
	AllowMamba = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowMamba, AllowMamba);
	AllowWyvern = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowWyvern, AllowWyvern);
	AllowTitan = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowTitan, AllowTitan);
	AllowSpark = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowSpark, AllowSpark);
	AllowCryoPriest = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowCryoPriest, AllowCryoPriest);
	AllowBioTrooper = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowBioTrooper, AllowBioTrooper);
	AllowBioAssaultTrooper = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowBioAssaultTrooper, AllowBioAssaultTrooper);
	AllowBioAssaultTrooperShield = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowBioAssaultTrooperShield, AllowBioAssaultTrooperShield);
	AllowBioRocketTrooper = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowBioRocketTrooper, AllowBioRocketTrooper);
	AllowBioCaptain = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowBioCaptain, AllowBioCaptain);
	AllowBioMEC = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowBioMEC, AllowBioMEC);
	AllowBioMecTrooper = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowBioMecTrooper, AllowBioMecTrooper);
	AllowBioGeneralGasStrike = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowBioGeneralGasStrike, AllowBioGeneralGasStrike);
	AllowBioGeneralShotgun = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowBioGeneralShotgun, AllowBioGeneralShotgun);
	AllowBioGeneralSMG = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowBioGeneralSMG, AllowBioGeneralSMG);
	AllowBioGeneralRocketLauncher = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowBioGeneralRocketLauncher, AllowBioGeneralRocketLauncher);
	AllowBioViperSilver = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowBioViperSilver, AllowBioViperSilver);
	AllowBioViperGold = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowBioViperGold, AllowBioViperGold);
	AllowBioFaceless = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowBioFaceless, AllowBioFaceless);
	AllowBioZerker = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowBioZerker, AllowBioZerker);
	AllowBioLost = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowBioLost, AllowBioLost);
	AllowBioLostBleeder = `MCM_CH_GetValue(class'MCM_Defaults_CYA'.default.AllowBioLostBleeder, AllowBioLostBleeder);
}

// Save changes to the settings
`MCM_API_BasicCheckboxSaveHandler(AndromedonPrimeSaveHandler, AllowAndromedonPrime)
`MCM_API_BasicCheckboxSaveHandler(ArchonPrimeSaveHandler, AllowArchonPrime)
`MCM_API_BasicCheckboxSaveHandler(BerserkerPrimeSaveHandler, AllowBerserkerPrime)
`MCM_API_BasicCheckboxSaveHandler(BerserkerFirePrimeSaveHandler, AllowBerserkerFirePrime)
`MCM_API_BasicCheckboxSaveHandler(CodexPrimeSaveHandler, AllowCodexPrime)
`MCM_API_BasicCheckboxSaveHandler(GatekeeperPrimeSaveHandler, AllowGatekeeperPrime)
`MCM_API_BasicCheckboxSaveHandler(MutonPrimeSaveHandler, AllowMutonPrime)
`MCM_API_BasicCheckboxSaveHandler(SectoidSoldierPrimeSaveHandler, AllowSectoidSoldierPrime)
`MCM_API_BasicCheckboxSaveHandler(SectoidMindbenderPrimeSaveHandler, AllowSectoidMindbenderPrime)
`MCM_API_BasicCheckboxSaveHandler(SectoidPuppeteerPrimeSaveHandler, AllowSectoidPuppeteerPrime)
`MCM_API_BasicCheckboxSaveHandler(SpectrePrimeSaveHandler, AllowSpectrePrime)
`MCM_API_BasicCheckboxSaveHandler(SectopodPrimeSaveHandler, AllowSectopodPrime)
`MCM_API_BasicCheckboxSaveHandler(ViperPrimeSaveHandler, AllowViperPrime)
`MCM_API_BasicCheckboxSaveHandler(GuardianSaveHandler, AllowGuardian)
`MCM_API_BasicCheckboxSaveHandler(AssaultSaveHandler, AllowAssault)
`MCM_API_BasicCheckboxSaveHandler(AntiRiotMECSaveHandler, AllowAntiRiotMEC)
`MCM_API_BasicCheckboxSaveHandler(MediDroneSaveHandler, AllowMediDrone)
`MCM_API_BasicCheckboxSaveHandler(ArchonValkyrieSaveHandler, AllowArchonValkyrie)
`MCM_API_BasicCheckboxSaveHandler(ArchonSentinelSaveHandler, AllowArchonSentinel)
`MCM_API_BasicCheckboxSaveHandler(FirestarterSaveHandler, AllowFirestarter)
`MCM_API_BasicCheckboxSaveHandler(ChryssalidCrawlerSaveHandler, AllowChryssalidCrawler)
`MCM_API_BasicCheckboxSaveHandler(ChryssalidBleederSaveHandler, AllowChryssalidBleeder)
`MCM_API_BasicCheckboxSaveHandler(ChryssalidHunterkillerSaveHandler, AllowChryssalidHunterkiller)
`MCM_API_BasicCheckboxSaveHandler(LostBoomerSaveHandler, AllowLostBoomer)
`MCM_API_BasicCheckboxSaveHandler(MutonPyroSaveHandler, AllowMutonPyro)
`MCM_API_BasicCheckboxSaveHandler(MutonInfectorSaveHandler, AllowMutonInfector)
`MCM_API_BasicCheckboxSaveHandler(SectoidSoldierSaveHandler, AllowSectoidSoldier)
`MCM_API_BasicCheckboxSaveHandler(SectoidMindbenderSaveHandler, AllowSectoidMindbender)
`MCM_API_BasicCheckboxSaveHandler(SectoidPuppeteerSaveHandler, AllowSectoidPuppeteer)
`MCM_API_BasicCheckboxSaveHandler(SkirmisherSaveHandler, AllowSkirmisher)
`MCM_API_BasicCheckboxSaveHandler(TrooperHeavySaveHandler, AllowTrooperHeavy)
`MCM_API_BasicCheckboxSaveHandler(TrooperGunslingerSaveHandler, AllowTrooperGunslinger)
`MCM_API_BasicCheckboxSaveHandler(TrooperDemolitionistSaveHandler, AllowTrooperDemolitionist)
`MCM_API_BasicCheckboxSaveHandler(TrooperWreckerSaveHandler, AllowTrooperWrecker)
`MCM_API_BasicCheckboxSaveHandler(TrooperStrikerSaveHandler, AllowTrooperStriker)
`MCM_API_BasicCheckboxSaveHandler(TrooperSniperSaveHandler, AllowTrooperSniper)
`MCM_API_BasicCheckboxSaveHandler(GatlingTrooperSaveHandler, AllowGatlingTrooper)
`MCM_API_BasicCheckboxSaveHandler(ShoggothSaveHandler, AllowShoggoth)
`MCM_API_BasicCheckboxSaveHandler(BoaSaveHandler, AllowBoa)
`MCM_API_BasicCheckboxSaveHandler(MambaSaveHandler, AllowMamba)
`MCM_API_BasicCheckboxSaveHandler(WyvernSaveHandler, AllowWyvern)
`MCM_API_BasicCheckboxSaveHandler(TitanSaveHandler, AllowTitan)
`MCM_API_BasicCheckboxSaveHandler(SparkSaveHandler, AllowSpark)
`MCM_API_BasicCheckboxSaveHandler(CryoPriestSaveHandler, AllowCryoPriest)
`MCM_API_BasicCheckboxSaveHandler(BioTrooperSaveHandler, AllowBioTrooper)
`MCM_API_BasicCheckboxSaveHandler(BioAssaultTrooperSaveHandler, AllowBioAssaultTrooper)
`MCM_API_BasicCheckboxSaveHandler(BioAssaultTrooperShieldSaveHandler, AllowBioAssaultTrooperShield)
`MCM_API_BasicCheckboxSaveHandler(BioRocketTrooperSaveHandler, AllowBioRocketTrooper)
`MCM_API_BasicCheckboxSaveHandler(BioCaptainSaveHandler, AllowBioCaptain)
`MCM_API_BasicCheckboxSaveHandler(BioMECSaveHandler, AllowBioMEC)
`MCM_API_BasicCheckboxSaveHandler(BioMecTrooperSaveHandler, AllowBioMecTrooper)
`MCM_API_BasicCheckboxSaveHandler(BioGeneralGasStrikeSaveHandler, AllowBioGeneralGasStrike)
`MCM_API_BasicCheckboxSaveHandler(BioGeneralShotgunSaveHandler, AllowBioGeneralShotgun)
`MCM_API_BasicCheckboxSaveHandler(BioGeneralSMGSaveHandler, AllowBioGeneralSMG)
`MCM_API_BasicCheckboxSaveHandler(BioGeneralRocketLauncherSaveHandler, AllowBioGeneralRocketLauncher)
`MCM_API_BasicCheckboxSaveHandler(BioViperSilverSaveHandler, AllowBioViperSilver)
`MCM_API_BasicCheckboxSaveHandler(BioViperGoldSaveHandler, AllowBioViperGold)
`MCM_API_BasicCheckboxSaveHandler(BioFacelessSaveHandler, AllowBioFaceless)
`MCM_API_BasicCheckboxSaveHandler(BioZerkerSaveHandler, AllowBioZerker)
`MCM_API_BasicCheckboxSaveHandler(BioLostSaveHandler, AllowBioLost)
`MCM_API_BasicCheckboxSaveHandler(BioLostBleederSaveHandler, AllowBioLostBleeder)

simulated function SaveButtonClicked(MCM_API_SettingsPage Page)
{
	/*
	local X2CharacterTemplateManager CharacterMgr;
	local array<name> TemplateNames;
	local name TemplateName;
	local array<X2DataTemplate> TemplateAllDifficulties;
	local X2DataTemplate Template;
	local X2CharacterTemplate CharacterTemplate;
	*/
	`LOG("Choose Your Aliens: MCM save button clicked.");

	// Doesn't seem to work
	/*
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
				// ABA PRIMES
				case 'AndromedonM4':
					if(!AllowAndromedonPrime)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'ArchonM4':
					if(!AllowArchonPrime)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'BerserkerM4':
					if(!AllowBerserkerPrime)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'BerserkerFireM4':
					if(!AllowBerserkerFirePrime)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'CodexM4':
					if(!AllowCodexPrime)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'GatekeeperM4':
					if(!AllowGatekeeperPrime)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'MutonM4':
					if(!AllowMutonPrime)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'SectoidTrooperM4':
					if(!AllowSectoidSoldierPrime)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'SectoidMindbenderM4':
					if(!AllowSectoidMindbenderPrime)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'SectoidPuppeteerM4':
					if(!AllowSectoidPuppeteerPrime)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'SpectreM4':
					if(!AllowSpectrePrime)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'StealthSectopod':
					if(!AllowSectopodPrime)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'ViperM4':
					if(!AllowViperPrime)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;

				// ABA ALIENS
				case 'AdvShieldBearerSniperM2':
					if(!AllowGuardian)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvShieldBearerSniperM3':
					if(!AllowGuardian)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvStunLancerShotgunM1':
					if(!AllowAssault)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvStunLancerShotgunM2':
					if(!AllowAssault)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvStunLancerShotgunM3':
					if(!AllowAssault)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvSupportMEC_M1':
					if(!AllowAntiRiotMEC)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvSupportMEC_M2':
					if(!AllowAntiRiotMEC)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvDroneM1':
					if(!AllowMediDrone)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvDroneM2':
					if(!AllowMediDrone)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvDroneM3':
					if(!AllowMediDrone)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'ArchonMelee':
					if(!AllowArchonValkyrie)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'ArchonSentinel':
					if(!AllowArchonSentinel)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'BerserkerFire':
					if(!AllowFirestarter)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'ABAChryssalidM1':
					if(!AllowChryssalidCrawler)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'ABAChryssalidM2':
					if(!AllowChryssalidBleeder)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'ABAChryssalidM4':
					if(!AllowChryssalidHunterkiller)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomer':
					if(!AllowLostBoomer)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP2':
					if(!AllowLostBoomer)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP3':
					if(!AllowLostBoomer)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP4':
					if(!AllowLostBoomer)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP5':
					if(!AllowLostBoomer)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP6':
					if(!AllowLostBoomer)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP7':
					if(!AllowLostBoomer)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP8':
					if(!AllowLostBoomer)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP9':
					if(!AllowLostBoomer)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP10':
					if(!AllowLostBoomer)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP11':
					if(!AllowLostBoomer)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP12':
					if(!AllowLostBoomer)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP13':
					if(!AllowLostBoomer)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP14':
					if(!AllowLostBoomer)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP15':
					if(!AllowLostBoomer)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP16':
					if(!AllowLostBoomer)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP17':
					if(!AllowLostBoomer)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP18':
					if(!AllowLostBoomer)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP19':
					if(!AllowLostBoomer)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP20':
					if(!AllowLostBoomer)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP21':
					if(!AllowLostBoomer)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'TheLostBoomerHP22':
					if(!AllowLostBoomer)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'MutonDragonrounds':
					if(!AllowMutonPyro)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'MutonVenomrounds':
					if(!AllowMutonInfector)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'SectoidTrooper':
					if(!AllowSectoidSoldier)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'SectoidMindbender':
					if(!AllowSectoidMindbender)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'SectoidPuppeteer':
					if(!AllowSectoidPuppeteer)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvSkirmisherM1':
					if(!AllowSkirmisher)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvSkirmisherM2':
					if(!AllowSkirmisher)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvSkirmisherM3':
					if(!AllowSkirmisher)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperHeavyM1':
					if(!AllowTrooperHeavy)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperHeavyM2':
					if(!AllowTrooperHeavy)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperHeavyM3':
					if(!AllowTrooperHeavy)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperPistolM1':
					if(!AllowTrooperGunslinger)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperPistolM2':
					if(!AllowTrooperGunslinger)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperPistolM3':
					if(!AllowTrooperGunslinger)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperGrenadeM1':
					if(!AllowTrooperDemolitionist)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperGrenadeM2':
					if(!AllowTrooperDemolitionist)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperGrenadeM3':
					if(!AllowTrooperDemolitionist)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperEnviroM1':
					if(!AllowTrooperWrecker)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperEnviroM2':
					if(!AllowTrooperWrecker)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperEnviroM3':
					if(!AllowTrooperWrecker)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperShoggothM3':
					if(!AllowShoggoth)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'Shoggoth':
					if(!AllowShoggoth)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperShotgunM1':
					if(!AllowTrooperStriker)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperShotgunM2':
					if(!AllowTrooperStriker)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperShotgunM3':
					if(!AllowTrooperStriker)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperCannonM1':
					if(!AllowGatlingTrooper)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperCannonM2':
					if(!AllowGatlingTrooper)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperCannonM3':
					if(!AllowGatlingTrooper)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperSniperM1':
					if(!AllowTrooperSniper)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperSniperM2':
					if(!AllowTrooperSniper)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvTrooperSniperM3':
					if(!AllowTrooperSniper)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'ViperBoa':
					if(!AllowBoa)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'ViperMamba':
					if(!AllowMamba)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'Wyvern':
					if(!AllowWyvern)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;

				// ABDLC
				case 'AdventTitanM1':
					if(!AllowTitan)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdventTitanM2':
					if(!AllowTitan)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdventTitanM3':
					if(!AllowTitan)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdventSparkM1':
					if(!AllowSpark)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdventSparkM2':
					if(!AllowSpark)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdventSparkM3':
					if(!AllowSpark)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdventCryoPriestM2':
					if(!AllowCryoPriest)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdventCryoPriestM3':
					if(!AllowCryoPriest)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;

				// BIO DIVISION
				case 'AdvBioTrooperM1':
					if(!AllowBioTrooper)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioTrooperM2':
					if(!AllowBioTrooper)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioTrooperM3':
					if(!AllowBioTrooper)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioTrooperFakeM1':
					if(!AllowBioFaceless)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioTrooperFakeM2':
					if(!AllowBioFaceless)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioTrooperFakeM3':
					if(!AllowBioFaceless)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioAssaultTrooperM2':
					if(!AllowBioAssaultTrooper)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioAssaultTrooperM3':
					if(!AllowBioAssaultTrooper)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioAssaultTrooperM2B':
					if(!AllowBioAssaultTrooperShield)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioAssaultTrooperM3B':
					if(!AllowBioAssaultTrooperShield)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioRocketTrooperM2':
					if(!AllowBioRocketTrooper)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioRocketTrooperM3':
					if(!AllowBioRocketTrooper)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioCaptainM1':
					if(!AllowBioCaptain)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioCaptainM2':
					if(!AllowBioCaptain)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioCaptainM3':
					if(!AllowBioCaptain)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'BioMEC':
					if(!AllowBioMEC)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'BioMecTrooper':
					if(!AllowBioMecTrooper)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioGeneralM1A':
					if(!AllowBioGeneralGasStrike)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioGeneralM2A':
					if(!AllowBioGeneralGasStrike)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioGeneralM3A':
					if(!AllowBioGeneralGasStrike)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioGeneralM2B':
					if(!AllowBioGeneralShotgun)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioGeneralM3B':
					if(!AllowBioGeneralShotgun)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioGeneralM1C':
					if(!AllowBioGeneralSMG)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioGeneralM2C':
					if(!AllowBioGeneralSMG)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioGeneralM3C':
					if(!AllowBioGeneralSMG)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioGeneralM2D':
					if(!AllowBioGeneralRocketLauncher)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'AdvBioGeneralM3D':
					if(!AllowBioGeneralRocketLauncher)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'BioViperSilver':
					if(!AllowBioViperSilver)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'BioViperGold':
					if(!AllowBioViperGold)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'BioFaceless':
					if(!AllowBioFaceless)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'BioFacelessM2':
					if(!AllowBioFaceless)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'BioZerker':
					if(!AllowBioZerker)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'BioLost':
					if(!AllowBioLost)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
				case 'BioLostBleeder':
					if(!AllowBioLostBleeder)
					{
						CharacterTemplate.SpawnRequirements.RequiredObjectives.AddItem('T5_M3_CompleteFinalMission');
					}
					break;
			}
		}
	}
	*/
	self.CONFIG_VERSION = `MCM_CH_GetCompositeVersion();
	self.SaveConfig();
}

defaultproperties
{
	ScreenClass = none;
}
