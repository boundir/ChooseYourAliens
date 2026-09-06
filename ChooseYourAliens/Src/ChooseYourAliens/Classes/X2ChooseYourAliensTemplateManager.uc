class X2ChooseYourAliensTemplateManager extends X2DataTemplateManager;

static function X2ChooseYourAliensTemplateManager GetChooseYourAliensTemplateManager()
{
	return X2ChooseYourAliensTemplateManager(class'Engine'.static.GetTemplateManager(class'X2ChooseYourAliensTemplateManager'));
}

function X2ChooseYourAliensTemplate FindTemplate(Name DataName)
{
	local X2DataTemplate ChooseYourAliensTemplate;

	ChooseYourAliensTemplate = FindDataTemplate(DataName);

	if (ChooseYourAliensTemplate != None)
	{
		return X2ChooseYourAliensTemplate(ChooseYourAliensTemplate);
	}

	return None;
}

defaultproperties
{
	TemplateDefinitionClass=class'X2ChooseYourAliens'
	ManagedTemplateClass=class'X2ChooseYourAliensTemplate'
}
