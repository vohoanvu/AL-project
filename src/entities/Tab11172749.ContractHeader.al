table 11172749 "Contract Header"
{
    Caption = 'Contract Header';
    DataClassification = ToBeClassified;

    fields
    {
        field(2; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(10; "Relation Source Type"; Option)
        {
            Caption = 'Relation Source Type';
            OptionMembers = Customer,"All customers","Customer Group";
        }
        field(11; "Relation Source No."; Code[20])
        {
            Caption = 'Relation Source No.';
        }
        field(13; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(16; "Document Date"; Date)
        {
            Caption = 'Document Date';
        }
        field(18; "Template Type"; Code[20])
        {
            Caption = 'Template Type';
        }
        field(22; "Valid From Date"; Date)
        {
            Caption = 'Valid From Date';
        }
        field(23; "Valid To Date"; Date)
        {
            Caption = 'Valid To Date';
        }
        field(24; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
        }
        field(30; Name; Text[100])
        {
            Caption = 'Name';
        }
        field(32; Address; Text[100])
        {
            Caption = 'Address';
        }
        field(33; "Address 2"; Text[50])
        {
            Caption = 'Address 2';
        }
        field(34; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
        }
        field(35; "Country Code"; Code[10])
        {
            Caption = 'Country Code';
        }
        field(36; City; Text[30])
        {
            Caption = 'City';
        }
        field(38; "Phone No."; Text[30])
        {
            Caption = 'Phone No.';
        }
        field(39; Contact; Text[100])
        {
            Caption = 'Contact';
        }
        field(50; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
        }
        field(82; "Table Filter"; TableFilter)
        {
            Caption = 'Table Filter';
        }
        field(84; "Fuel Clause"; Code[20])
        {
            Caption = 'Fuel Clause';
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
