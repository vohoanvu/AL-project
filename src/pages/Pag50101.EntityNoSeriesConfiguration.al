page 50101 "Entity NoSeries Configuration"
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

                field("WMS Address No"; Rec."WMS Address No")
                {
                    ToolTip = 'Specifies the value of the WMS Address No field.';
                }
            }
        }
    }
}
