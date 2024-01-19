pageextension 50012 "Sales Shipment Card Ext" extends "Posted Sales Shipment"
{
    layout
    {
        addafter("No. Printed")
        {
            field("Completely Invoiced"; Rec."Completely Invoiced")
            {
                ApplicationArea = All;
                Visible = true;
                ToolTip = 'Specify if all the items are invoiced';
            }
        }
        addafter("Package Tracking No.")
        {
            field("Package Weight"; Rec."Package Weight")
            {
                ApplicationArea = All;
                Visible = true;
                ToolTip = '';
            }
        }
    }


    trigger OnAfterGetCurrRecord()
    var
        SalesShipmentLine: Record "Sales Shipment Line";
    begin
        SalesShipmentLine.SetRange("Document No.", Rec."No.");
        SalesShipmentLine.SetFilter("Qty. Shipped Not Invoiced", '<>0');
        if SalesShipmentLine.IsEmpty() then
            Rec."Completely Invoiced" := true
        else
            Rec."Completely Invoiced" := false;
    end;
}