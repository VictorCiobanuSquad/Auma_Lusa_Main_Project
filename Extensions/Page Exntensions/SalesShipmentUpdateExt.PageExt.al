pageextension 50016 "Sales Shipment Update Ext" extends "Posted Sales Shipment - Update"
{
    layout
    {
        addafter("Package Tracking No.")
        {
            field("Package Weight"; Rec."Package Weight")
            {
                ApplicationArea = All;
                Visible = true;
                Editable = true;
                ToolTip = '';
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }
    var
        myInt: Integer;
}