class CYA_StrategyElement_DummyTechs extends X2StrategyElement;

static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> Techs;

	Techs.AddItem(CreateNullTech());
	Techs.AddItem(CreateVoidTech());

	return Techs;
}

static function X2DataTemplate CreateNullTech()
{
	local X2TechTemplate Template;

	`CREATE_X2TEMPLATE(class'X2TechTemplate', Template, 'NullTech');
	Template.PointsToComplete = 99999;
	Template.strImage = "img:///UILibrary_StrategyImages.ResearchTech.TECH_Modular_Weapons";
	Template.SortingTier = 1;

	// Requirements
	Template.Requirements.RequiredTechs.AddItem('VoidTech');

	return Template;
}

static function X2DataTemplate CreateVoidTech()
{
	local X2TechTemplate Template;

	`CREATE_X2TEMPLATE(class'X2TechTemplate', Template, 'VoidTech');
	Template.PointsToComplete = 99999;
	Template.strImage = "img:///UILibrary_StrategyImages.ResearchTech.TECH_Modular_Weapons";
	Template.SortingTier = 1;

	// Requirements
	Template.Requirements.RequiredTechs.AddItem('NullTech');
	
	return Template;
}


