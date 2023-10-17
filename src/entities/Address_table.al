table 11191181 "WMS Address"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series"."Code";
        }
        field(10; "Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(12; "Address"; Text[100])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(13; "Address 2"; Text[50])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(14; "City"; Text[30])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(16; "Phone No"; Text[30])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(17; "No. Series"; Code[20])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
            TableRelation = "No. Series"."Code";
        }
        field(18; "Post Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(20; "Country/Region Code"; Code[10])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(21; "Country/Region Name"; Text[50])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(26; "E-Mail"; Text[80])
        {
            DataClassification = ToBeClassified;
        }
        field(37; "EAN Code"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(40; "Customer No"; Code[80])
        {
            DataClassification = ToBeClassified;
        }
        field(81; "Status Code"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(82; "Blocked"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "No")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;
}