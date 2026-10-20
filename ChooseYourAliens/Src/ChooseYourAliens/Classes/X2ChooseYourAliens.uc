class X2ChooseYourAliens extends X2DataSet config(ChooseYourAliens_Defaults);

var config array<name> TabModName;

static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> Templates;
	local X2ChooseYourAliensTemplate Template;
	local name TemplateName;

	foreach default.TabModName(TemplateName)
	{
		`CREATE_X2TEMPLATE(class'X2ChooseYourAliensTemplate', Template, TemplateName);
		Templates.AddItem(Template);
	}

	return Templates;
}
