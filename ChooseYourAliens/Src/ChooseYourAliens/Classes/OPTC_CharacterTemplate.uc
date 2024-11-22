class OPTC_CharacterTemplate extends X2DownloadableContentInfo;

var config(DisableAliens) array<name> DisableAlien;

static event OnPostTemplatesCreated()
{
	local X2CharacterTemplateManager CharacterMgr;
	local array<name> TemplateNames;
	local name TemplateName;
	local array<X2DataTemplate> TemplateAllDifficulties;
	local X2DataTemplate Template;
	local X2CharacterTemplate CharacterTemplate;
	local name AlienName;

	`LOG("Choose Your Aliens");

	CharacterMgr = class'X2CharacterTemplateManager'.static.GetCharacterTemplateManager();

	CharacterMgr.GetTemplateNames(TemplateNames);

	foreach default.DisableAlien(AlienName)
	{
		CharacterMgr.FindDataTemplateAllDifficulties(AlienName, TemplateAllDifficulties);

		// Iterate over all variants
		foreach TemplateAllDifficulties(Template)
		{
			CharacterTemplate = X2CharacterTemplate(Template);
			class'CYA_Helper_CharacterTemplate'.static.DisableAliens(CharacterTemplate);
			`LOG("Choose Your Aliens:"@ AlienName @"disabled");
		}
		// Also patch base template
		CharacterTemplate = CharacterMgr.FindCharacterTemplate(AlienName);
		class'CYA_Helper_CharacterTemplate'.static.DisableAliens(CharacterTemplate);
	}

	foreach TemplateNames(TemplateName)
	{
		CharacterMgr.FindDataTemplateAllDifficulties(TemplateName, TemplateAllDifficulties);

		// Iterate over all variants
		foreach TemplateAllDifficulties(Template)
		{
			CharacterTemplate = X2CharacterTemplate(Template);
			class'CYA_Helper_CharacterTemplate'.static.PatchCharacterTemplate(CharacterTemplate);
		}
		// Also patch base template
		CharacterTemplate = CharacterMgr.FindCharacterTemplate(TemplateName);
		class'CYA_Helper_CharacterTemplate'.static.PatchCharacterTemplate(CharacterTemplate);
	}
}