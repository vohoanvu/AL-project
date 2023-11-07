table 11154982 "WMS Function Parameter"
{
    Caption = 'WMS Function Parameter';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Function Set ID"; Integer)
        {
            Caption = 'Function Set ID';
            TableRelation = "Function Set Entry"."Function Set ID";

            trigger OnValidate()
            var
                functionSetEntry: Record "Function Set Entry";
            begin
                functionSetEntry.Reset();
                if functionSetEntry.Get("Function Set ID") then begin
                    Rec."Function Entry No." := functionSetEntry."Entry No.";
                end;
            end;
        }
        field(2; "Function Entry No."; Integer)
        {
            Caption = 'Function Entry No.';
            TableRelation = "Function Set Entry"."Entry No.";
        }
        field(3; "Parameter No."; Integer)
        {
            Caption = 'Parameter No.';
        }
        field(10; "Parameter Name"; Code[20])
        {
            Caption = 'Parameter Name';
        }
        field(11; "Value"; Text[250])
        {
            Caption = 'Value';
            NotBlank = true;
        }
        field(12; "Data Type"; Integer)
        {
            Caption = 'Data Type';
        }
        field(13; Description; Text[250])
        {
            Caption = 'Description';
        }
    }
    keys
    {
        key(PK; "Function Set ID", "Function Entry No.", "Parameter No.")
        {
            Clustered = true;
        }
    }
}
