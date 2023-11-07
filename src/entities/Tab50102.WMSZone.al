table 50102 "WMS Zone"
{
    Caption = 'WMS Zone';
    DataClassification = ToBeClassified;
    LookupPageId = "WMS Zone List";
    DrillDownPageId = "WMS Zone List";

    fields
    {
        field(1; "Zone Code"; Code[10])
        {
            Caption = 'Zone Code';
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
        }
    }
    keys
    {
        key(PK; "Zone Code")
        {
            Clustered = true;
        }
    }
}
