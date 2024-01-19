tableextension 50004 SquadItemExt extends Item
{
    // ObsoleteState = Pending;
    // ObsoleteReason = 'Not needed';
    // ObsoleteTag = '1.0.0.14';

    fields
    {
        // field(50000; "First Description"; Text[100]) // [To removed]
        // {
        //     Caption = 'First Description';
        //     Editable = false;
        //     FieldClass = Normal;
        //     DataClassification = ToBeClassified;
        // }
        // field(50001; "First Description 2"; Text[50]) // [To removed]
        // {
        //     Caption = 'First Description 2';
        //     Editable = false;
        //     FieldClass = Normal;
        //     DataClassification = ToBeClassified;
        // }

        // field(50002; "Last Description"; Text[100]) // [To removed]
        // {
        //     Caption = 'Last Description';
        //     Editable = false;
        //     FieldClass = Normal;
        //     DataClassification = ToBeClassified;
        // }
        // field(50003; "Last Description 2"; Text[50]) // [To removed]
        // {
        //     Caption = 'Last Description 2';
        //     Editable = false;
        //     FieldClass = Normal;
        //     DataClassification = ToBeClassified;
        // }
        // field(50004; "SquadDescription"; Text[100]) // [To removed]
        // {
        //     Caption = 'Squad Description 2';
        //     Editable = false;
        //     FieldClass = Normal;
        //     DataClassification = ToBeClassified;
        // }
        // field(50005; "SquadDescription 2"; Text[100]) // [To removed]
        // {
        //     Caption = 'Squad Description 2';
        //     Editable = false;
        //     FieldClass = Normal;
        //     DataClassification = ToBeClassified;
        //}
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
