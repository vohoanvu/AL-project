page 11154690 "WMS Location Card"
{
    PageType = Card;
    SourceTable = "WMS Location";
    ApplicationArea = All;
    Permissions =
        tabledata "WMS Location" = RIMD;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field("Building Code"; Rec."Building Code")
                {
                    ApplicationArea = All;
                }
                field(Name; Rec."Name")
                {
                    ApplicationArea = All;
                }
                field("Parent Location No."; Rec."Parent Location No.")
                {
                    ApplicationArea = All;
                }
                // ... Add other fields as needed.
            }
        }
    }
}