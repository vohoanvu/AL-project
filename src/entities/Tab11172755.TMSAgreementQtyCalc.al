table 11172755 "TMS Agreement Qty. Calc."
{
    Caption = 'TMS Agreement Qty. Calc.';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(10; Description; Text[30])
        {
            Caption = 'Description';
        }
        field(12; "Func. Set ID"; Integer)
        {
            Caption = 'Func. Set ID'; //FK referencing another Table called 'Function Set Entry'
            NotBlank = true;
        }
        field(13; "Type"; Option)
        {
            Caption = 'Type';
            NotBlank = true;
            OptionMembers = "Count Calculation","Conditional Function";
        }
    }
    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }
}
