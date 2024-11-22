class CYA_Helper_CharacterTemplate extends Object;

static function DisableAliens(X2CharacterTemplate CharacterTemplate)
{
	CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
}

static function PatchCharacterTemplate(X2CharacterTemplate CharacterTemplate)
{
	switch(CharacterTemplate.DataName)
	{
		//	   ###		#####		###
		//	  ## ##		##	 #	   ## ##
		//	 ## # ##	#####	  ## # ##
		//	##     ##	##	 #	 ##     ##
		// ##       ##	#####	##       ##

		// Primes
		case 'AndromedonM4':
			if(!AllowAndromedonPrime())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'ArchonM4':
			if(!AllowArchonPrime())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'BerserkerM4':
			if(!AllowBerserkerPrime())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'BerserkerFireM4':
			if(!AllowBerserkerFirePrime())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'CodexM4':
			if(!AllowCodexPrime())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'GatekeeperM4':
			if(!AllowGatekeeperPrime())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'MutonM4':
			if(!AllowMutonPrime())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'SectoidTrooperM4':
			if(!AllowSectoidSoldierPrime())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'SectoidMindbenderM4':
			if(!AllowSectoidMindbenderPrime())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'SectoidPuppeteerM4':
			if(!AllowSectoidPuppeteerPrime())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'SpectreM4':
			if(!AllowSpectrePrime())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'StealthSectopod':
			if(!AllowSectopodPrime())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'ViperM4':
			if(!AllowViperPrime())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		// #######
		// Aliens
		// #######
		case 'AdvShieldBearerSniperM2':
			if(!AllowGuardian())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvShieldBearerSniperM3':
			if(!AllowGuardian())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvStunLancerShotgunM1':
			if(!AllowAssault())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvStunLancerShotgunM2':
			if(!AllowAssault())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvStunLancerShotgunM3':
			if(!AllowAssault())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvSupportMEC_M1':
			if(!AllowAntiRiotMEC())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvSupportMEC_M2':
			if(!AllowAntiRiotMEC())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvDroneM1':
			if(!AllowMediDrone())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvDroneM2':
			if(!AllowMediDrone())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvDroneM3':
			if(!AllowMediDrone())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'ArchonMelee':
			if(!AllowArchonValkyrie())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'ArchonSentinel':
			if(!AllowArchonSentinel())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'BerserkerFire':
			if(!AllowFirestarter())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'ABAChryssalidM1':
			if(!AllowChryssalidCrawler())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'ABAChryssalidM2':
			if(!AllowChryssalidBleeder())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'ABAChryssalidM4':
			if(!AllowChryssalidHunterkiller())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'TheLostBoomer':
			if(!AllowLostBoomer())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'TheLostBoomerHP2':
			if(!AllowLostBoomer())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'TheLostBoomerHP3':
			if(!AllowLostBoomer())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'TheLostBoomerHP4':
			if(!AllowLostBoomer())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'TheLostBoomerHP5':
			if(!AllowLostBoomer())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'TheLostBoomerHP6':
			if(!AllowLostBoomer())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'TheLostBoomerHP7':
			if(!AllowLostBoomer())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'TheLostBoomerHP8':
			if(!AllowLostBoomer())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'TheLostBoomerHP9':
			if(!AllowLostBoomer())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'TheLostBoomerHP10':
			if(!AllowLostBoomer())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'TheLostBoomerHP11':
			if(!AllowLostBoomer())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'TheLostBoomerHP12':
			if(!AllowLostBoomer())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'TheLostBoomerHP13':
			if(!AllowLostBoomer())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'TheLostBoomerHP14':
			if(!AllowLostBoomer())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'TheLostBoomerHP15':
			if(!AllowLostBoomer())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'TheLostBoomerHP16':
			if(!AllowLostBoomer())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'TheLostBoomerHP17':
			if(!AllowLostBoomer())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'TheLostBoomerHP18':
			if(!AllowLostBoomer())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'TheLostBoomerHP19':
			if(!AllowLostBoomer())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'TheLostBoomerHP20':
			if(!AllowLostBoomer())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'TheLostBoomerHP21':
			if(!AllowLostBoomer())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'TheLostBoomerHP22':
			if(!AllowLostBoomer())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'MutonDragonrounds':
			if(!AllowMutonPyro())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'MutonVenomrounds':
			if(!AllowMutonInfector())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'SectoidTrooper':
			if(!AllowSectoidSoldier())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'SectoidMindbender':
			if(!AllowSectoidMindbender())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'SectoidPuppeteer':
			if(!AllowSectoidPuppeteer())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvSkirmisherM1':
			if(!AllowSkirmisher())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvSkirmisherM2':
			if(!AllowSkirmisher())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvSkirmisherM3':
			if(!AllowSkirmisher())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvTrooperHeavyM1':
			if(!AllowTrooperHeavy())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvTrooperHeavyM2':
			if(!AllowTrooperHeavy())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvTrooperHeavyM3':
			if(!AllowTrooperHeavy())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvTrooperPistolM1':
			if(!AllowTrooperGunslinger())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvTrooperPistolM2':
			if(!AllowTrooperGunslinger())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvTrooperPistolM3':
			if(!AllowTrooperGunslinger())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvTrooperGrenadeM1':
			if(!AllowTrooperDemolitionist())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvTrooperGrenadeM2':
			if(!AllowTrooperDemolitionist())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvTrooperGrenadeM3':
			if(!AllowTrooperDemolitionist())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvTrooperEnviroM1':
			if(!AllowTrooperWrecker())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvTrooperEnviroM2':
			if(!AllowTrooperWrecker())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvTrooperEnviroM3':
			if(!AllowTrooperWrecker())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvTrooperShoggothM3':
			if(!AllowShoggoth())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'Shoggoth':
			if(!AllowShoggoth())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvTrooperShotgunM1':
			if(!AllowTrooperStriker())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvTrooperShotgunM2':
			if(!AllowTrooperStriker())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvTrooperShotgunM3':
			if(!AllowTrooperStriker())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvTrooperCannonM1':
			if(!AllowGatlingTrooper())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvTrooperCannonM2':
			if(!AllowGatlingTrooper())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvTrooperCannonM3':
			if(!AllowGatlingTrooper())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvTrooperSniperM1':
			if(!AllowTrooperSniper())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvTrooperSniperM2':
			if(!AllowTrooperSniper())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvTrooperSniperM3':
			if(!AllowTrooperSniper())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'ViperBoa':
			if(!AllowBoa())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'ViperMamba':
			if(!AllowMamba())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'Wyvern':
			if(!AllowWyvern())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;

		//	   ###		#####	#####     ##        #####
		//	  ## ##		##	 #	##   ##   ##       ##
		//	 ## # ##	#####	##    ##  ##      ##
		//	##     ##	##	 #	##   ##   ##       ##
		// ##       ##	######	######    ######    #####
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

		//	#####	##     ####
		//	##	 #	##   ##    ##
		//	#####	##  ##      ##
		//	##	 #	##   ##    ##
		//	######	##     ####
		case 'AdvBioTrooperM1':
			if(!AllowBioTrooper())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvBioTrooperM2':
			if(!AllowBioTrooper())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvBioTrooperM3':
			if(!AllowBioTrooper())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvBioTrooperFakeM1':
			if(!AllowBioFaceless())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvBioTrooperFakeM2':
			if(!AllowBioFaceless())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvBioTrooperFakeM3':
			if(!AllowBioFaceless())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvBioAssaultTrooperM2':
			if(!AllowBioAssaultTrooper())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvBioAssaultTrooperM3':
			if(!AllowBioAssaultTrooper())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvBioAssaultTrooperM2B':
			if(!AllowBioAssaultTrooperShield())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvBioAssaultTrooperM3B':
			if(!AllowBioAssaultTrooperShield())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvBioRocketTrooperM2':
			if(!AllowBioRocketTrooper())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvBioRocketTrooperM3':
			if(!AllowBioRocketTrooper())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvBioCaptainM1':
			if(!AllowBioCaptain())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvBioCaptainM2':
			if(!AllowBioCaptain())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvBioCaptainM3':
			if(!AllowBioCaptain())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'BioMEC':
			if(!AllowBioMEC())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'BioMecTrooper':
			if(!AllowBioMecTrooper())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvBioGeneralM1A':
			if(!AllowBioGeneralGasStrike())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvBioGeneralM2A':
			if(!AllowBioGeneralGasStrike())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvBioGeneralM3A':
			if(!AllowBioGeneralGasStrike())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvBioGeneralM2B':
			if(!AllowBioGeneralShotgun())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvBioGeneralM3B':
			if(!AllowBioGeneralShotgun())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvBioGeneralM1C':
			if(!AllowBioGeneralSMG())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvBioGeneralM2C':
			if(!AllowBioGeneralSMG())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvBioGeneralM3C':
			if(!AllowBioGeneralSMG())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvBioGeneralM2D':
			if(!AllowBioGeneralRocketLauncher())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'AdvBioGeneralM3D':
			if(!AllowBioGeneralRocketLauncher())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'BioViperSilver':
			if(!AllowBioViperSilver())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'BioViperGold':
			if(!AllowBioViperGold())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'BioFaceless':
			if(!AllowBioFaceless())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'BioFacelessM2':
			if(!AllowBioFaceless())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'BioZerker':
			if(!AllowBioZerker())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'BioLost':
			if(!AllowBioLost())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
		case 'BioLostBleeder':
			if(!AllowBioLostBleeder())
			{
				CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
			}
			break;
	}
}


static function bool MCM_CH_IMPL_VersionChecker()
{
	return (class'MCM_UIScreenListener_CYA'.default.CONFIG_VERSION < class'MCM_Defaults_CYA'.default.VERSION);
}

//	   ###		#####		###
//	  ## ##		##	 #	   ## ##
//	 ## # ##	#####	  ## # ##
//	##     ##	##	 #	 ##     ##
// ##       ##	######	##       ##

// #######
// Primes
// #######
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

// #######
// Aliens
// #######
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
//	   ###		#####	#####     ##        #####
//	  ## ##		##	 #	##   ##   ##       ##
//	 ## # ##	#####	##    ##  ##      ##
//	##     ##	##	 #	##   ##   ##       ##
// ##       ##	######	######    ######    #####
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
//	#####	##     ####
//	##	 #	##   ##    ##
//	#####	##  ##      ##
//	##	 #	##   ##    ##
//	######	##     ####
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