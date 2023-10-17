table 11154656 "WMS Building"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Code"; Code[10])
        {
            DataClassification = ToBeClassified;
        }

        field(10; "Name"; Text[30])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(11; "Address No"; Code[20])
        {
            DataClassification = ToBeClassified; //FK reference to Address Table (11191181)
            TableRelation = "WMS Address".No;
        }
        field(20; "Default Receipt Location No"; Code[20])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(21; "Default Shipment Location No"; Code[20])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(50; "EAN Code"; Code[20])
        {
            DataClassification = ToBeClassified;
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