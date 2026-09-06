class X2ChooseYourAliens_Helper extends Object;

static function bool IsUnitEnabled(name TemplateName)
{
	local UnitToggle Toggle;

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
		CharacterTemplate.SpawnRequirements.RequiredTechs.AddItem('NullTech');
	}
	else
	{
		CharacterTemplate.SpawnRequirements.RequiredTechs.RemoveItem('NullTech');
	}
}