table 11154681 "WMS Service Unit of Measure"
{
    Caption = 'WMS Service Unit of Measure';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Service No."; Code[20])
        {
            Caption = 'Service No.';
            NotBlank = true;
            TableRelation = "WMS Service";
        }
        field(2; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
            TableRelation = "Unit of Measure";
        }
        field(20; "Created Date/Time"; DateTime)
        {
            Caption = 'Created Date/Time';
            Editable = false;
        }
        field(21; "Created User ID"; Text[65])
        {
            Caption = 'Created User ID';
            Editable = false;
        }
        field(22; "Modified Date/Time"; DateTime)
        {
            Caption = 'Modified Date/Time';
            Editable = false;
        }
        field(23; "Modified User ID"; Text[65])
        {
            Caption = 'Modified User ID';
            Editable = false;
        }
    }
    keys
    {
        key(PK; "Service No.", "Code")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        Rec."Created User ID" := UserId();
        Rec."Created Date/Time" := CurrentDateTime();
    end;

    trigger OnModify()
    begin
        Rec."Modified User ID" := UserId();
        Rec."Modified Date/Time" := CurrentDateTime()
    end;
}
