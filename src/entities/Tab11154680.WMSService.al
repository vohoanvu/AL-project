table 11154680 "WMS Service"
{
    Caption = 'WMS Service';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
        }
        field(10; Description; Text[50])
        {
            Caption = 'Description';
            NotBlank = true;
        }
        field(16; "Base Unit of Measure"; Code[10])
        {
            Caption = 'WMS Service Unit of Measure (11154681)';
        }
        field(17; "Invoice Period Code"; Code[10])
        {
            Caption = 'Invoice Period Code ';
        }
        field(20; "Gen. Prod. Posting Group"; Code[20])
        {
            Caption = 'Gen. Prod. Posting Group';
            NotBlank = true;
        }
        field(21; "VAT Prod. Posting Group"; Code[20])
        {
            Caption = 'VAT Prod. Posting Group';
            NotBlank = true;
        }
        field(22; "VAT Prod. Posting Grp Entrepot"; Code[20])
        {
            Caption = 'VAT Prod. Posting Grp Entrepot';
            NotBlank = true;
        }
        field(23; "Gen. Prod.Posting Gr. Entrepot"; Code[20])
        {
            Caption = 'Gen. Prod.Posting Gr. Entrepot';
            NotBlank = true;
        }
        field(24; "VAT Prod. Posting Group 30D"; Code[20])
        {
            Caption = 'VAT Prod. Posting Group 30D';
            NotBlank = true;
        }
        field(27; "No Storage Charge"; Boolean)
        {
            Caption = 'No Storage Charge';
        }
        field(38; Blocked; Boolean)
        {
            Caption = 'Blocked';
        }
        field(40; "Quantity Calculation"; Option)
        {
            Caption = 'Quantity Calculation';
            NotBlank = true;
            OptionMembers = "Gross weight","Net weight",Carrier,"Quantity (basic)","Quantity (applies to storage fees)";
        }
        field(43; "Invoice Line Per Batch"; Boolean)
        {
            Caption = 'Invoice Line Per Batch';
            NotBlank = true;
        }
        field(50; "Default Contract Unit Price"; Decimal)
        {
            Caption = 'Default Contract Unit Price';
            NotBlank = true;
        }
        field(111; "Output Inv. Date Cost Calc."; DateFormula)
        {
            Caption = 'Output Inv. Date Cost Calc.';
        }
        field(125; "Storage Cost Function Code"; Code[20])
        {
            Caption = 'Storage Cost Function Code';
        }
        field(128; "Invoice Method"; Option)
        {
            Caption = 'Invoice Method';
            OptionMembers = "Per Batch","Per Customer";
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
}
