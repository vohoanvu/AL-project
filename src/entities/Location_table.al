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
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
}

