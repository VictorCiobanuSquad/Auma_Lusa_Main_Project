pageextension 50015 "Purchase Order Ext" extends "Purchase Order"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addafter("&Print")
        {
            action("Print Confirmation")
            {

                Promoted = true;
                PromotedCategory = Category10;
                ApplicationArea = all;
                Caption = 'Purchase Receipt Confirmation';
                Ellipsis = true;
                Image = Print;
                ToolTip = 'Purchase Receipt Confirmation';

                trigger OnAction()
                begin
                    Rec.SetRecFilter();
                    Report.Run(50001, true, true, Rec);
                end;
            }
        }
    }
}