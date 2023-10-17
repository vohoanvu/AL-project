page 11154657 "WMS BuildingList"
{
    ApplicationArea = All;
    PageType = List;
    SourceTable = "WMS Building";
    CardPageId = BuildingCard;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    ToolTip = 'Specifies the value of the Code field.';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field("Address No"; Rec."Address No")
                {
                    ApplicationArea = All;
                }
                field("Default Receipt Location No"; Rec."Default Receipt Location No")
                {
                    ToolTip = 'Specifies the value of the Default Receipt Location No field.';
                }
                field("Default Shipment Location No"; Rec."Default Shipment Location No")
                {
                    ToolTip = 'Specifies the value of the Default Shipment Location No field.';
                }
                field("EAN Code"; Rec."EAN Code")
                {
                    ToolTip = 'Specifies the value of the EAN Code field.';
                }
            }
        }
    }
}
