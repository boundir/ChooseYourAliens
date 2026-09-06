class X2DLCInfo_ChooseYourAliens extends X2DownloadableContentInfo;

static event OnPostTemplatesCreated()
{
	local X2CharacterTemplateManager CharacterTemplateManager;
	local array<name> TemplateNames;
	local name TemplateName;
	local X2CharacterTemplate CharacterTemplate;

	`Log("Applying toggles",, 'ChooseYourAliens');

	CharacterTemplateManager = class'X2CharacterTemplateManager'.static.GetCharacterTemplateManager();
	CharacterTemplateManager.GetTemplateNames(TemplateNames);

	foreach TemplateNames(TemplateName)
	{
		CharacterTemplate = CharacterTemplateManager.FindCharacterTemplate(TemplateName);

		if (CharacterTemplate != none)
		{
			class'X2ChooseYourAliens_Helper'.static.ApplyToggle(CharacterTemplate);
		}
	}
}