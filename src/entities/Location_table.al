table 50100 "WMS Location"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(9; "Building Code"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "WMS Building"."Code";
        }
        field(10; "Name"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(11; "Parent Location No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(14; "Zone Code"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(17; "Receipt"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(18; "Shipment"; Boolean)
        {
            DataClassification = ToBeClassified;
        }

        field(600; "Created Date/Time"; DateTime)
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(601; "Created User ID"; Text[50])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(602; "Modified Date/Time"; DateTime)
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(603; "Modified User ID"; Text[50])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        "Created Date/Time" := CurrentDateTime;
        "Created User ID" := UserId;
    end;

    trigger OnModify()
    begin
        "Modified Date/Time" := CurrentDateTime;
        "Modified User ID" := UserId;
    end;
}

