pageextension 50011 "Item Ext" extends "Item Card"
{
    layout
    {
        addafter("Item Category Code")
        {
            field("Parent Category"; Rec."Parent Category")
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {

    }

}