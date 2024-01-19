codeunit 50001 AUMAProjectEventsPublishers
{
    EventSubscriberInstance = StaticAutomatic;

    trigger OnRun()
    begin
        //...
    end;


    [IntegrationEvent(false, false)]
    procedure SkipDescriptionValidation(ItemNo: Code[20]);
    begin
    end;
}
