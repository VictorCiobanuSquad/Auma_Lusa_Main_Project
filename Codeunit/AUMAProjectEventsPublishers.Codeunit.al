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


    [EventSubscriber(ObjectType::Table, Database::"G/L Entry", 'OnAfterCopyGLEntryFromGenJnlLine', '', true, true)]
    Local procedure OnAfterCopyGLEntryFromGenJnlLine(var GLEntry: Record "G/L Entry"; var GenJournalLine: Record "Gen. Journal Line")
    var
        l_RecCustomer: Record Customer;
    begin
        if ((GLEntry."Document Type" = GLEntry."Document Type"::"Credit Memo") or (GLEntry."Document Type" = GLEntry."Document Type"::Invoice)) and (GLEntry."Source Type" = GLEntry."Source Type"::Customer) then begin

            CLEAR(l_RecCustomer);
            if l_RecCustomer.get(GLEntry."Source No.") then begin
                GLEntry.Description := l_RecCustomer.Name;
                //GLEntry.Modify();
            end;

        end
    end;
}
