class X2ChooseYourAliens_Helper extends Object config(DisableAliens);

var config array<name> DisableAlien;

static function bool IsUnitEnabled(name TemplateName)
{
	local UnitToggle Toggle;

	if (default.DisableAlien.Find(TemplateName) != INDEX_NONE)
	{
		return false;
	}

	foreach class'MCM_UIScreenListener_ChooseYourAliens'.default.UnitToggles(Toggle)
	{
		if (Toggle.TemplateName == TemplateName)
		{
			return Toggle.IsEnabled;
		}
	}

	return true;
}

static function ApplyToggle(X2CharacterTemplate CharacterTemplate)
{
	if (!IsUnitEnabled(CharacterTemplate.DataName))
	{
		if (CharacterTemplate.SpawnRequirements.RequiredTechs.Find('NullTech') == INDEX_NONE)
		{
			CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
		}
	}
	else
	{
		CharacterTemplate.SpawnRequirements.RequiredTechs.RemoveItem('NullTech');
	}
}

static function ApplyToggleAllDifficulties(name TemplateName)
{
	local X2CharacterTemplateManager CharacterTemplateManager;
	local array<X2DataTemplate> TemplatesAllDifficulties;
	local X2DataTemplate Template;
	local X2CharacterTemplate CharacterTemplate;

	CharacterTemplateManager = class'X2CharacterTemplateManager'.static.GetCharacterTemplateManager();

	CharacterTemplateManager.FindDataTemplateAllDifficulties(TemplateName, TemplatesAllDifficulties);

	foreach TemplatesAllDifficulties(Template)
	{
		CharacterTemplate = X2CharacterTemplate(Template);

		if (CharacterTemplate != none)
		{
			ApplyToggle(CharacterTemplate);
		}
	}

	CharacterTemplate = CharacterTemplateManager.FindCharacterTemplate(TemplateName);

	if (CharacterTemplate != none)
	{
		ApplyToggle(CharacterTemplate);
	}
}

static function ApplyAllToggles()
{
	local X2CharacterTemplateManager CharacterTemplateManager;
	local array<name> TemplateNames;
	local name TemplateName;

	CharacterTemplateManager = class'X2CharacterTemplateManager'.static.GetCharacterTemplateManager();

	CharacterTemplateManager.GetTemplateNames(TemplateNames);

	foreach TemplateNames(TemplateName)
	{
		ApplyToggleAllDifficulties(TemplateName);
	}
}
