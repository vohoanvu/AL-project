table 50101 EntityNoSeriesConfig
{
    Caption = 'EntityNoSeriesConfig';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary Key"; Integer)
        {
            Caption = 'Primary Key';
        }
        field(2; "WMS Generated Series Number"; Code[20])
        {
            Caption = 'WMS Generated Series No.';
            TableRelation = "No. Series";
        }
    }
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}
