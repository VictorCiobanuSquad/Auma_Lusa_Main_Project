tableextension 50003 "Purchase Receipt Header Ext" extends "Purch. Rcpt. Header"
{
    fields
    {
        field(50000; "Completely Invoiced"; boolean)
        {
            Caption = 'Completely Invoiced';
            Editable = false;
            FieldClass = Normal;
        }
    }
}
