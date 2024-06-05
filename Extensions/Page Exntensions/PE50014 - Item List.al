pageextension 50014 "Item List Ext" extends "Item List"
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
}