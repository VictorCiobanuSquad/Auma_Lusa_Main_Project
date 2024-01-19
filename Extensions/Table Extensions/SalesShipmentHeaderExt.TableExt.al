tableextension 50002 SalesShipmentHeaderExt extends "Sales Shipment Header"
{
    fields
    {
        field(50000; "Completely Invoiced"; Boolean)
        {
            Caption = 'Completely Invoiced';
            Editable = false;
            FieldClass = Normal;
        }
        field(50001; "Package Weight"; Decimal)
        {
            Caption = 'Package Weight';
            Editable = false;
            FieldClass = Normal;
        }
    }
}
