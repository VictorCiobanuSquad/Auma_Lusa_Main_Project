codeunit 50000 "AUMAProjectEvents"
{
    EventSubscriberInstance = StaticAutomatic;

    trigger OnRun()
    begin
        //...
    end;


    //field tariff no. in Item Table populate by tariff no. field in Item Category Table
    [EventSubscriber(ObjectType::Table, Database::Item, OnAfterValidateEvent, 'Item Category Code', false, false)]
    local procedure PopulateTariffNo(var Rec: Record Item)
    var
        ItemCategory: Record "Item Category";
    begin
        ItemCategory.Reset();
        if ItemCategory.Get(Rec."Item Category Code") then
            Rec."Tariff No." := ItemCategory."Tarrif No.";
    end;


    [EventSubscriber(ObjectType::Codeunit, Codeunit::AUMAProjectEventsPublishers, 'SkipDescriptionValidation', '', true, true)]
    local procedure CheckItemLdgEntries(ItemNo: Code[20]);
    var
        ItemLedgerEntry: Record "Item Ledger Entry";
    begin
        ItemLedgerEntry.RESET();
        ItemLedgerEntry.SETRANGE("Item No.", ItemNo);
        if not ItemLedgerEntry.ISEMPTY then
            exit; //ERROR(Text31022891, TABLECAPTION);
    end;

    [EventSubscriber(ObjectType::Page, Page::"Posted Sales Shipment - Update", OnAfterRecordChanged, '', true, true)]
    local procedure OnAfterRecordChanged(SalesShipmentHeader: Record "Sales Shipment Header"; xSalesShipmentHeader: Record "Sales Shipment Header"; var IsChanged: Boolean)
    begin
        IsChanged :=
          (SalesShipmentHeader."Package Weight" <> xSalesShipmentHeader."Package Weight")
    end;



    [EventSubscriber(ObjectType::Codeunit, codeunit::"Shipment Header - Edit", OnBeforeSalesShptHeaderModify, '', true, true)]
    local procedure OnBeforeSalesShptHeaderModify(var SalesShptHeader: Record "Sales Shipment Header"; FromSalesShptHeader: Record "Sales Shipment Header")
    begin
        SalesShptHeader."Package Weight" := FromSalesShptHeader."Package Weight";
    end;
}
