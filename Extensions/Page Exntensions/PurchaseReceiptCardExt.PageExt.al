pageextension 50013 "Purchase Receipt Card Ext" extends "Posted Purchase Receipt"
{
    layout
    {

    }

    actions
    {
        // Add changes to page actions here
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