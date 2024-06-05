pageextension 50017 CustomerCardExt_PageExt extends "Customer Card"
{
    layout
    {
        addafter(City)
        {
            field("Territory Code"; Rec."Territory Code")
            {
                ApplicationArea = All;
                ToolTip = '';
                Editable = true;
            }


        }
    }
}
