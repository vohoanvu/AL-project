page 50101 "WMS Zone List"
{
    ApplicationArea = All;
    Caption = 'WMS Zone List';
    PageType = List;
    SourceTable = "WMS Zone";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Zone Code"; Rec."Zone Code")
                {
                    ToolTip = 'Specifies the value of the Zone Code field.';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.';
                }
            }
        }
    }
}
