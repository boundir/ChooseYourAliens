class X2DLCInfo_ChooseYourAliens extends X2DownloadableContentInfo;

static event OnPostTemplatesCreated()
{
	class'X2ChooseYourAliens_Helper'.static.ApplyAllToggles();
}
