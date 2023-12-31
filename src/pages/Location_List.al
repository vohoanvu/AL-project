page 11154689 "WMS Location List"
{
    PageType = List;
    SourceTable = "WMS Location";
    ApplicationArea = All;
    CardPageId = LocationCard;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field("Building Code"; Rec."Building Code")
                {
                    ApplicationArea = All;
                }
                field("Name"; Rec."Name")
                {
                    ApplicationArea = All;
                }
                field("Parent Location No."; Rec."Parent Location No.")
                {
                    ApplicationArea = All;
                }
                field("Zone Code"; Rec."Zone Code")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
