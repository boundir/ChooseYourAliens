class CYA_UnitListItem extends UIMechaListItem;

var name TemplateName;

var delegate<UnitToggledHandler> OnUnitToggled;

delegate UnitToggledHandler(CYA_UnitListItem Caller, bool IsEnabled);

simulated function CYA_UnitListItem InitUnitListItem(
	name InitTemplateName,
	string Label,
	string Tooltip,
	bool IsEnabled
)
{
	super.InitListItem();

	TemplateName = InitTemplateName;

	UpdateDataCheckbox(Label, "", IsEnabled, CheckboxChangedCallback);

	if (Tooltip != "")
	{
		SetTooltipText(Tooltip);
	}

	return self;
}

simulated function CheckboxChangedCallback(UICheckbox CheckboxControl)
{
	if (OnUnitToggled != none)
	{
		OnUnitToggled(self, CheckboxControl.bChecked);
	}
}
