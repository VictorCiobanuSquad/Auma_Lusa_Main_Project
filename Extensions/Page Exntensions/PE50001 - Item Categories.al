pageextension 50001 "Item Categories Ext" extends "Item Categories"
{
    layout
    {
        addafter(Description)
        {
            field("Tarrif No."; Rec."Tarrif No.")
            {
                ApplicationArea = All;
                ToolTip = 'Tarrif number';
            }
        }

    }

    actions
    {
        // Add changes to page actions here
    }
    var
}