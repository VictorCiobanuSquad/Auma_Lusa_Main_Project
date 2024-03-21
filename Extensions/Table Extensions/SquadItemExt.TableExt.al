tableextension 50004 SquadItemExt extends Item
{
    fields
    {
        field(50006; "Parent Category"; Code[20])
        {
            CalcFormula = lookup("Item Category"."Parent Category" where("Code" = field("Item Category Code")));
            Editable = false;
            FieldClass = FlowField;
        }
    }

    procedure CheckItemLdgEntries(ItemNo: Code[20])
    var
        Publisher: Codeunit AUMAProjectEventsPublishers;
    begin
        Publisher.SkipDescriptionValidation(ItemNo);
    end;
}
