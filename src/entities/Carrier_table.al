table 11154692 Carrier
{
    DataClassification = CustomerContent;
    fields
    {
        field(1; "Carrier Code"; Code[10])
        {
            DataClassification = CustomerContent;
        }
        field(2; Description; Text[50])
        {
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Carrier Code")
        {
            Clustered = true;
        }
    }
}