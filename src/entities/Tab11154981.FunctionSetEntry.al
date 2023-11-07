table 11154981 "Function Set Entry"
{
    Caption = 'Function Set Entry';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Function Set ID"; Integer)
        {
            Caption = 'Function Set ID';
        }
        field(2; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(11; "Function Code"; Code[20])
        {
            Caption = 'Function Code';
            NotBlank = true;
        }
        field(12; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(13; Parameters; Integer)
        {
            Caption = 'Parameters';
            TableRelation = "WMS Function Parameter"."Parameter No.";
        }
        field(15; "Table Filter"; TableFilter)
        {
            Caption = 'Table Filter';
        }
        field(20; "Table No."; Integer)
        {
            Caption = 'Table No.';
            NotBlank = true;
        }
        field(25; Blocked; Boolean)
        {
            Caption = 'Blocked';
        }
        field(36; "On Different Table No."; Option)
        {
            Caption = 'On Different Table No.';
            OptionMembers = Execute,"Do not execute";
        }
    }
    keys
    {
        key(PK; "Function Set ID", "Entry No.")
        {
            Clustered = true;
        }
    }
}
