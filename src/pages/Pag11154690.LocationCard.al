page 11154690 LocationCard
{
    ApplicationArea = All;
    Caption = 'LocationCard';
    PageType = Card;
    SourceTable = "WMS Location";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.';
                }
                field("Building Code"; Rec."Building Code")
                {
                    ApplicationArea = Basic, Suite;
                }
                field("Parent Location No."; Rec."Parent Location No.")
                {
                    ToolTip = 'Specifies the value of the Parent Location No. field.';
                }
                field("Zone Code"; Rec."Zone Code")
                {
                    ToolTip = 'Specifies the value of the Zone Code field.';
                }
            }
        }
    }
}
