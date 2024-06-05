pageextension 50018 PageExtension50000 extends "Purchase Invoice"
{
    layout
    {
        modify("VAT Reporting Date")
        {
            Visible = false;
        }
    }
}