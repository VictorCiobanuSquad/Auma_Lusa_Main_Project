reportextension 50003 "Sales Shipment PT Ext" extends "PTSS Sales - Shipment (PT)"
{
    RDLCLayout = './Auma Lusa Sales Shipment.rdl';
    dataset
    {
        add("Sales Shipment Header")
        {
            column(Company_homepage; CompanyInfoExt."Home Page") { }
            column(Shipment_Method; rShipmentMethod.Description) { }
            column(Shipping_Agent; rShippingAgent.Name) { }
            column(Package_Weight; Weight) { }
        }
        modify("Sales Shipment Header")
        {

            trigger OnAfterAfterGetRecord()
            begin
                if rShipmentMethod.Get("Shipment Method Code") then;
                if rShippingAgent.Get("Shipping Agent Code") then;
                if CompanyInfoExt.Get() then;
                Weight := 0;
                if "Package Weight" <> 0 then
                    Weight := "Package Weight"
                else begin
                    "Sales Shipment Line".Reset();
                    "Sales Shipment Line".SetRange("Document No.", "No.");
                    if "Sales Shipment Line".FindSet() then
                        repeat
                            if Item.get("Sales Shipment Line"."No.") then
                                if "Sales Shipment Line".Quantity > 0 then
                                    Weight += "Sales Shipment Line".Quantity * Item."Gross Weight";
                        until "Sales Shipment Line".Next() = 0;
                end;
            end;

        }

    }

    labels
    {
        ShipmentNoLbl = 'Shipment No.';
        ClientLbl = 'Client';
        ShippingAddressLbl = 'Shipping Address';
        ShipmentMethodLbl = 'Shipment Method';
        ShipmentAgentLbl = 'Shipping Agent';
        WeightLbl = 'Total Weight';
        CommentsLbl = 'Comments';
        FooterLbl = 'All sales operations will be subject to the General Conditions of AUMA Lusa Unipessoal, Lda, our credit insurer and the particular conditions agreed in each case. Our General Terms and Conditions can be requested or downloaded at www.auma.com AUMA Lusa Unipessoal, Lda is responsible for processing in accordance with the GDPR and the GDPR for the purpose of maintaining a business relationship and preserved as long as there is a mutual interest. The data will not be communicated to third parties. They may exercise their rights of access, rectification, portability, exclusion, limitation and opposition through Rua D. João II, 8-B, 2730-061 Queluz de Baixo, BARCARENA (Portugal). Email: aumalusa@auma.com and complaints: https://www.cnpd.pt/index.asp';
    }
    var
        Weight: Decimal;
        rShipmentMethod: Record "Shipment Method";
        rShippingAgent: Record "Shipping Agent";
        CompanyInfoExt: Record 79;
        rItemLedgerEntry: Record "Item Ledger Entry";
        Item: Record Item;
}