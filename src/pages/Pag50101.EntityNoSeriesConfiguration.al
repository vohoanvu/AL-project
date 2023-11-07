page 50103 "Entity NoSeries Configuration"
{
    ApplicationArea = All;
    Caption = 'Entity NoSeries Configuration';
    PageType = Card;
    SourceTable = EntityNoSeriesConfig;
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field("WMS Generated Series No."; Rec."WMS Generated Series Number")
                {
                    ToolTip = 'Specifies the value of the WMS Generated Series No. field!';
                }
            }
        }
    }
}
