tableextension 50001 "Item Categories Ext" extends "Item Category"
{
    fields
    {
        field(50001; "Tarrif No."; Code[20])
        {
            TableRelation = "Tariff Number";
        }
    }
}
