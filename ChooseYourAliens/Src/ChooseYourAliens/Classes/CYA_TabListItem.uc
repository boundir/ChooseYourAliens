class CYA_TabListItem extends UIMechaListItem;

var name TabName;

var delegate<TabClickedHandler> OnTabClicked;

delegate TabClickedHandler(CYA_TabListItem Caller);

simulated function CYA_TabListItem InitTabListItem(name InitTabName, string Label, bool IsSelected)
{
	super.InitListItem();

	TabName = InitTabName;

	UpdateDataCheckbox(Label, "", IsSelected, CheckboxChangedCallback, CheckboxClickedCallback);

	return self;
}

simulated function CheckboxChangedCallback(UICheckbox CheckboxControl)
{
	NotifyTabClicked();
}

simulated function CheckboxClickedCallback()
{
	NotifyTabClicked();
}

simulated function NotifyTabClicked()
{
	SetSelected(true);

	if (OnTabClicked != none)
	{
		OnTabClicked(self);
	}
}

simulated function SetSelected(bool IsSelected)
{
	Checkbox.SetChecked(IsSelected, false);
}
