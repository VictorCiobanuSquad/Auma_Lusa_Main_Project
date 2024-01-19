pageextension 50010 "Purchase Receipts Ext" extends "Posted Purchase Receipts"
{
    layout
    {
        //Add Fields
        addafter("Location Code")
        {
            field("Completely Invoiced"; Rec."Completely Invoiced")
            {
                ApplicationArea = All;
                Visible = true;
                ToolTip = 'Specify if all the items are invoiced';
            }
        }
    }
    trigger OnAfterGetRecord()
    var
        PurchaseReceiptLine: Record "Purch. Rcpt. Line";
    begin
        PurchaseReceiptLine.SetRange("Document No.", Rec."No.");
        PurchaseReceiptLine.SetFilter("Qty. Rcd. Not Invoiced", '<>0');
        if PurchaseReceiptLine.IsEmpty() then
            Rec."Completely Invoiced" := true
        else
            Rec."Completely Invoiced" := false;
    end;
}